package com.slwm.solid_liquid_waste_mng.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;

@Controller

@RequestMapping("/Driver")
public class DriverAccessController {
    
     @Autowired
 	 AreaRepo areaRepo;
  //   @Autowired
 	// LeaveRepo leaveRepo;
    
     
     
     @RequestMapping("") 
    // @ResponseBody
 	public String driverIndex() {
    	 return "Driver/Dindex";
 	}
     @RequestMapping("/{page}") 
     // @ResponseBody
  	public String driverIndex1(@PathVariable("page") String page) {
     	 return "Driver/"+page;
  	}
  
	/*
	 * @RequestMapping("/ApplyLeave") // @ResponseBody public String
	 * ApplyLeave(@ModelAttribute() LeaveModel leaveModel ) {
	 * leaveModel.setStatus("Waitting"); // leaveRepo.save(leaveModel); return
	 * "redirect:/Driver/leaveinfo"; }
	 */
     
     
     
     
     /*@RequestMapping("/ao") 
   	public ModelAndView Opretrive(@ModelAttribute() OpratorModel op) {
    	ModelAndView opmv=new ModelAndView("ao");
    	opmv.addObject("oplist",ioparetor.getOparator());
    	return opmv;
   		
   	} 
   
    @RequestMapping("/delete/{id}") 
    public String delete(@PathVariable Long id  ) {
    	
    	ioparetor.deleteOpratorById(id);
    	return "redirect:/ao";
   		
   	} 
    
    @RequestMapping("/edit/{opid}")
    public ModelAndView opratoredit(@PathVariable() Long opid) {
    	ModelAndView mv=new ModelAndView("aoformEdit");
    	mv.addObject("oplist",ioparetor.getOpratorById(opid));
         return mv;  
   	}
    
    @RequestMapping("/edit") 
   	public String updateOprator(@ModelAttribute() OpratorModel op) {
    	ioparetor.EditOpratorById(op);
   		return "redirect:/ao";
   	}*/
	/*
	 * @RequestMapping("/areawise/{id}")
	 * 
	 * @ResponseBody public List<OpratorModel>
	 * opratorRetriveAreawise(@PathVariable() Long id) {
	 * 
	 * return oprepo.areawiseOpratoer(id);
	 * 
	 * //return oprepo.findById(opid).orElse(null);
	 * 
	 * }
	 */
    
}
