package com.slwm.solid_liquid_waste_mng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import com.slwm.solid_liquid_waste_mng.Model.DustbinModel;
import com.slwm.solid_liquid_waste_mng.repo.Driverrepo;
import com.slwm.solid_liquid_waste_mng.repo.Dustrepo;

@RestController
public class DeshbordController {
	@Autowired
	Driverrepo driverrepo;
	@Autowired
	Dustrepo dustRepo;
    
	@RequestMapping("/dashBord/getDustbin/Soild")
	 public int dustgetsolid() {
		  String type="Solid";
         return dustRepo.get75Updustbin(type, 75);
	  }

	@RequestMapping("/dashBord/getDustbin/liquid")
	 public int dustgetliquid() {
		  String type="Liquid";
         return dustRepo.get75Updustbin(type, 75);
	  }
	@RequestMapping("/dashBord/getdriver")
	 public Long Availableop() {
		  
        return driverrepo.count();
	  }
	//Notification bar View...............................
	@RequestMapping("/getdustbin/notification")
	 public List<DustbinModel> notificationbar(){
		  
       return dustRepo.get75UpdustbinNotification(75);
	  }
	
	
	
}
