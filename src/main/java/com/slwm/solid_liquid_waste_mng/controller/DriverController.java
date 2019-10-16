package com.slwm.solid_liquid_waste_mng.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.IService.IDriverService;
import com.slwm.solid_liquid_waste_mng.IService.IUserService;
import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.DailyReportRepo;
import com.slwm.solid_liquid_waste_mng.repo.Driverrepo;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

@Controller
@RequestMapping("/Admin")
public class DriverController {
	
	@Autowired
	Driverrepo driverrepo;

	@Autowired
	IDriverService iDriverService;

	@Autowired
	IUserService iUserService;
	
	 @Autowired
 	 UserRepo userRepo;
	 @Autowired
    DailyReportRepo dailyReportRepo;	
		

	@RequestMapping("/addDriver")
	public String adddriver(@ModelAttribute() DriverModel driver,@RequestParam("photo") MultipartFile photo, UserModel usermodel) {

		iDriverService.addDriver(driver,usermodel,photo);
	
		return "redirect:/Admin/adr";
	}

	/*
	 * @RequestMapping(value = "/odri") public ModelAndView OparatorgetDriver() {
	 * ModelAndView drimv = new ModelAndView("odri"); drimv.addObject("drilist",
	 * iDriverService.getDriver()); return drimv;
	 * 
	 * }
	 */

	@RequestMapping(value = "/adr")
	public ModelAndView admingetDriver() {
		ModelAndView drimv = new ModelAndView("Admin/adr");
		drimv.addObject("drilist", iDriverService.getDriver());
		return drimv;

	}
	
	@RequestMapping("/deleteDriver/{id}")
	public String deleteDriver(@PathVariable Long id ) {
		
		iUserService.deleteByDriverId(id);
		iDriverService.deleteDriverById(id);

		return "redirect:/Admin/adr";
	}	
	
	 @RequestMapping("/editDriver/{id}")
     public ModelAndView driveredit(@PathVariable() long id) 
	 {
	     ModelAndView mv=new ModelAndView("Admin/odrieditform");
		 mv.addObject("drilist",driverrepo.findById(id).orElse(null));
	     return mv;  
		 //return iDriverService.getDriverById(id);
	   	}
	    
	    @RequestMapping("/editdriver") 
	   	public String updateDriver(@ModelAttribute() DriverModel driver) {
	    	driver.setIsdelete("false");
	    	driverrepo.save(driver);
	   		return "redirect:/Admin/adr";
	   	}
	    
		@RequestMapping("/ar")
		//@ResponseBody
		public ModelAndView getDailyReport() {
			
			ModelAndView mv=new ModelAndView("Admin/ar");
			mv.addObject("DaliyReportList",dailyReportRepo.findAll());
		 	return mv;
		}
	
}
