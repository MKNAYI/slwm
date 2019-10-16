package com.slwm.solid_liquid_waste_mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Admin")
public class Index {
	
	
	
	 @RequestMapping(value= {"/","index" ,""})
		public String index() {
			return "Admin/Aindex"; 
		}
	
	
 @RequestMapping("/{page}")
	public String Aind(@PathVariable String page) {
		return "Admin/"+ page; 
	}
 
}
