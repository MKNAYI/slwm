package com.slwm.solid_liquid_waste_mng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.IService.Ichangepass;
import com.slwm.solid_liquid_waste_mng.Model.AreaModel;
import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;

@Controller
public class ChangepassController {
   @Autowired
   Ichangepass ichangepass;
  
   

   @RequestMapping("/changepassword")
   public String changePasword(@RequestParam("userid") Long id ,@RequestParam("userpass") String userPass){
   	
	   ichangepass.changePassword(id, userPass);
   	return "redirect:/login";

   }
  
}
