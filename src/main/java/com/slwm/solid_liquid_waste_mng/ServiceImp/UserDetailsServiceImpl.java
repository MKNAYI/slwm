package com.slwm.solid_liquid_waste_mng.ServiceImp;

import java.util.HashSet;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.slwm.solid_liquid_waste_mng.Model.RoleModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;



@Service
@Transactional
public class UserDetailsServiceImpl implements UserDetailsService 
{
	
	@Autowired
	UserRepo userRepo; 

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		UserModel userModel=userRepo.findByUsername(username);
		
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
	       
		System.out.println(userModel.getRoleModel().toString());
		for (RoleModel role : userModel.getRoleModel())
		{
	            grantedAuthorities.add(new SimpleGrantedAuthority(role.getRolename()));
	    }

        return new org.springframework.security.core.userdetails.User(userModel.getUsername(), userModel.getUserpass(),true, true, true, true, grantedAuthorities);

		}

}
