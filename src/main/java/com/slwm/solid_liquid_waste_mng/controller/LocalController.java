package com.slwm.solid_liquid_waste_mng.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.IService.IDriverService;
import com.slwm.solid_liquid_waste_mng.Model.AreaModel;
import com.slwm.solid_liquid_waste_mng.Model.DailyReport;
import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.DustbinModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;
import com.slwm.solid_liquid_waste_mng.repo.DailyReportRepo;
import com.slwm.solid_liquid_waste_mng.repo.Dustrepo;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
@RequestMapping("/")
public class LocalController {
	@Autowired
	Dustrepo dustrepo;
	@Autowired
	AreaRepo areaRepo;
	@Autowired
	UserRepo userRepo;
	@Autowired
	IDriverService iDriverService;
	@Autowired
	private JavaMailSender sender;
	@Autowired
	DailyReportRepo dailyReportRepo;	
	
 @RequestMapping("/{page}")
	public String Aind(@PathVariable String page) {
		return page; 
	}
 
 
 
//Get Lan ang Lon
	@RequestMapping("/dustbin/getdata/lanlon")
	@ResponseBody
	public List<DustbinModel> getLanLonpra() {
		return dustrepo.getLanLon();

	}

	//Dustbin Status Update and mail to driver
	@RequestMapping("/SetStatus/Dustbin/{id}/{status}")
	@ResponseBody
	public String setStatusDustbin1(@PathVariable("id") Long id, @PathVariable("status") int status, DriverModel driverModel,AreaModel areaModel,DailyReport dailyReport) {
		
		DustbinModel dustbinModel = dustrepo.findById(id).orElse(null);
		if(dustbinModel.getStatus()!=status)
		{
		DateFormat dateformt=new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		Date date=new Date();
		
		String date1=dateformt.format(date);

		String DriverEmail="";
		String dustbinType="";

		
		dustbinModel.setStatus(status);
		dustbinType=dustbinModel.getType();
		dailyReport.setDate(date1);
		dailyReport.setStatus(status);
		dailyReport.setDustbinModel(dustbinModel);
		
		if (75 <= status) {
		 areaModel = dustbinModel.getAreaModel();
		 Long areaid1 = areaModel.getAreaid();
	      driverModel = iDriverService.getAreawiseDriver(areaid1);
	    	 DriverEmail = driverModel.getDriemail();
			String msg ="Dustbin Type:-"+dustbinType+ "\nDustbin ID:-" + id + "\nDustbin status:-" + status+"%" + "\nArea:-" + areaModel.getAreaname()
				+ "\naddress:-" + areaModel.getFullarea()+"\nDate-Time:-"+date1;
		 //  Email email = new Email();
	     //  email.SendEmail("mknayi144@gmail.com", "DustBin Notification", msg);
			
			MimeMessage message = sender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(message);

			try {
				helper.setTo(DriverEmail);
				helper.setText(msg);
				helper.setSubject(" Dustbin Information_SLWM:-");
			} catch (MessagingException e) {
				e.printStackTrace();
				System.out.println("Error while sending mail ..");
			}
			sender.send(message);

			
		}
		dustrepo.save(dustbinModel); 
		dailyReportRepo.save(dailyReport);
	//return DriverEmail;
		
		}
		return "Same Record"+dailyReport;
	}
	
	



	//forgatepass
	@RequestMapping("/forgatepass/Action")
	public String resetPassword(HttpServletRequest request,HttpServletResponse response) {
		  String username = request.getParameter("username");
		// String username="paintermanish.pm@gmail.com";
		   System.out.println(username);
		   
		  
			   UserModel usermodel = userRepo.findByUsername(username);
			   if(usermodel!=null) {
				   MimeMessage message = sender.createMimeMessage();
				   MimeMessageHelper helper = new MimeMessageHelper(message);
				   try {
					   System.out.println(usermodel.getUsername());
						helper.setTo(usermodel.getUsername());
						helper.setText("Your Password Reset Link http://localhost:8080/Rest-password?token="+usermodel.getToken());
						helper.setSubject("Mail For Reset Password");
					} catch (MessagingException e) {
						e.printStackTrace();
						return "Error while sending mail ..";
					}
					sender.send(message);
									   
				   return "redirect:/login";
	  
			   }
			   else 
			   {
				
				   return "/forgatepass";
			   }
		   
	}
	
	@RequestMapping(value = "/Rest-password", method = RequestMethod.GET)
	public String getResetPassword(@RequestParam("token") String Token,Model m) 
	{
		
			UserModel userModel = userRepo.findByToken(Token);
			if(userModel!=null) {
			
			m.addAttribute("userModel", userModel);
			return "/Rest-password";
			}else {
				
				   return "redirect:/403";
			   }
		
		
	}
	
	@RequestMapping(value = "/Rest-password", method = RequestMethod.POST)
	public String gsetResetPassword(@RequestParam("userid") Long userid,@RequestParam("userpass") String password,Model m) 
	{ 
		 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			
		
			UserModel user = userRepo.findById(userid).orElse(null);
			user.setUserpass(passwordEncoder.encode(password));
			user.setToken(UUID.randomUUID().toString());
			userRepo.save(user);
			m.addAttribute("message", "Password succesfully updated");
			return "redirect:/login";
		}
	
	
	
	@RequestMapping("/notification/get")
    @ResponseBody
	public List<DailyReport> getDailyReport() {
		
		//ModelAndView mv=new ModelAndView("dailyReport");
		//mv.addObject("DaliyReportList",dailyReportRepo.findAll());
	 	//return mv;
		return dailyReportRepo.findAll();
	}
	

}
