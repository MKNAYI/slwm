package com.slwm.solid_liquid_waste_mng.ServiceImp;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.slwm.solid_liquid_waste_mng.IService.IUserService;
import com.slwm.solid_liquid_waste_mng.IService.Ichangepass;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

@Service
@Transactional
public class ChangePassServiceImp implements Ichangepass {

	
	@Autowired
	UserRepo userRepo;

	@Override
	public void changePassword(Long id,String userPass) {
	 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			
			
	  UserModel	userModel=userRepo.findById(id).orElse(null);
	  userModel.setUserpass(passwordEncoder.encode(userPass));
	  userRepo.save(userModel);
	  
	}

	

	
	

}
