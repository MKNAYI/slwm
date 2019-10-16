package com.slwm.solid_liquid_waste_mng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.Model.AreaModel;
import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;

@Controller
@RequestMapping("/Admin")
public class AreaController {
   @Autowired
	AreaRepo areaRepo;
  
   

   @RequestMapping("/addarea")
   public String locationEntery(@ModelAttribute("area") AreaModel area){
   	area.setIsdelete("false");
   	areaRepo.save(area);
   	return "redirect:/Admin/areaDetails";

   }
   @RequestMapping("/editarea")
   public String editArea(@ModelAttribute("editarea") AreaModel area){
	   area.setIsdelete("false");
      	areaRepo.save(area);
   	return "redirect:/Admin/areaDetails";

   }
   @RequestMapping("/area/delete/{id}")
   public String deleteArea(@PathVariable("id") Long id){
   	
        AreaModel area=areaRepo.findById(id).orElse(null); 
        if(area!=null) {
        	area.setIsdelete("true");
        	areaRepo.save(area);
        }
   	return "redirect:/Admin/areaDetails";

   }
	/*
	 * @RequestMapping("/aoform") public ModelAndView locationRetive(){
	 * 
	 * ModelAndView locmv=new ModelAndView("aoform");
	 * locmv.addObject("arealist",areaRepo.findAll()); return locmv; }
	 */
   
   
	
	  //Areawise Data Show In Dropdown Box In Top..
	  
	  @RequestMapping("/ao/areawise")
	  
	  @ResponseBody public List<AreaModel> AreaDropDown(){
	  
	  return areaRepo.getisdeleteArea(); }
	  
	 /*
	 * @RequestMapping("/odustform/addloc") public ModelAndView
	 * locationEnterydustbin(){ ModelAndView locmv=new ModelAndView("odustform");
	 * locmv.addObject("arealist",areaRepo.getisdeleteArea()); return locmv; }
	 */
   @RequestMapping("/aformEditaeraList")
   @ResponseBody
   public List<AreaModel> aofromeditArealist() {
    	
    	return areaRepo.getisdeleteArea();
    }
   @RequestMapping("/areaDetails")
   public ModelAndView getArea(){
   	ModelAndView locmv=new ModelAndView("Admin/areaDetails");
   	locmv.addObject("arealist",areaRepo.getisdeleteArea());
   	return locmv;
   }

}
