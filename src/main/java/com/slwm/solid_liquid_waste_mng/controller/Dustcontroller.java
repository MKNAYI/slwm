package com.slwm.solid_liquid_waste_mng.controller;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.IService.IDriverService;
import com.slwm.solid_liquid_waste_mng.Model.AreaModel;
import com.slwm.solid_liquid_waste_mng.Model.Chart;
import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.DustbinModel;
import com.slwm.solid_liquid_waste_mng.Model.Email;
import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;
import com.slwm.solid_liquid_waste_mng.repo.Dustrepo;

@Controller
@RequestMapping("/Admin")
public class Dustcontroller {
	@Autowired
	Dustrepo dustrepo;
	@Autowired
	AreaRepo areaRepo;
	@Autowired
	IDriverService iDriverService;
	@Autowired
	private JavaMailSender sender;
	
	/*
	 * @RequestMapping("/odust") public String dustEntry(@ModelAttribute()
	 * DustbinModel dust) {
	 * 
	 * dustrepo.save(dust);
	 * 
	 * return "odust";
	 * 
	 * 
	 * }
	 */
	/*
	 * @RequestMapping("/odust") public ModelAndView dustRetive(@ModelAttribute()
	 * DustbinModel dust) {
	 * 
	 * ModelAndView dustmv=new ModelAndView("odust");
	 * dustmv.addObject("dustlist",dustrepo.findAll()); return dustmv;
	 * 
	 * }
	 */

	@RequestMapping("/adddustBin")
	public String dustEntry(@ModelAttribute("adddustbin") DustbinModel dust) {
         dust.setIsdelete("false");
		dustrepo.save(dust);

		return "redirect:/Admin/adust";
	}

	@RequestMapping("/editdustBin")
	public String editdustEntry(@ModelAttribute("dustbinedit") DustbinModel dust) {
		 dust.setIsdelete("false");
		dustrepo.save(dust);

		return "redirect:/Admin/adust";
	}

	@RequestMapping("/odust2/deletedustbin/{id}")
	public String deletedustEntry(@PathVariable Long id) {
        
		DustbinModel dust =dustrepo.findById(id).orElse(null);
    if(dust!=null) {
	  dust.setIsdelete("true");
	  dustrepo.save(dust);
	  
  }
		return "redirect:/Admin/adust";
	}
	/*
	 * @RequestMapping("/odust2") public String dustEntry1(Model m) {
	 * m.addAttribute("dustlist", dustrepo.findAll());
	 * 
	 * return "odust2"; }
	 */

	@RequestMapping("/adust")
	public ModelAndView dustretive() {

		ModelAndView dustmv = new ModelAndView("Admin/adust");
		dustmv.addObject("dustlist", dustrepo.getisdeleteDustbin());
		return dustmv;

	}

	@RequestMapping("/chat/getData")
	@ResponseBody
	public List<AreaModel> getchartInfo() {
		     List <AreaModel> area = areaRepo.getAreaname();
		     List <DustbinModel>  dustbin = dustrepo.findAll();
		        
     // Chart chart= new Chart(area, );
		     return area;
	}
	
	
}
