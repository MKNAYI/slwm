package com.slwm.solid_liquid_waste_mng.configration;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

	

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler 
{
	@Autowired
	UserRepo userRepo;
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException 
	{
        response.setStatus(HttpServletResponse.SC_OK); 
        
        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
       
        HttpSession session = request.getSession(false);
        if (session != null) 
        {
        	String user=authentication.getName();
            UserModel u=userRepo.findByUsername(user);           
            session.setAttribute("userid", u.getUserid());
            session.setAttribute("u", u);
            
        }

        
        
        if (roles.contains("ROLE_ADMIN")) 
        {
            response.sendRedirect("/Admin");
            
        }else if (roles.contains("ROLE_DRIVER")) 
        {
            response.sendRedirect("/Driver");
            
        }else 
        {
        	
        }
        
       
		
	}
}
