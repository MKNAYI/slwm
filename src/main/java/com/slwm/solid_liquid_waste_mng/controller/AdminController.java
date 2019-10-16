package com.slwm.solid_liquid_waste_mng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.slwm.solid_liquid_waste_mng.Model.AdminModel;
import com.slwm.solid_liquid_waste_mng.Model.AreaModel;
import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.OpratorModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.AdminRepo;
import com.slwm.solid_liquid_waste_mng.repo.AreaRepo;
import com.slwm.solid_liquid_waste_mng.repo.Driverrepo;
import com.slwm.solid_liquid_waste_mng.repo.OperatorRepo;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

@Controller
public class AdminController {
	@Autowired
	AdminRepo adminRepo;

	@Autowired
	OperatorRepo operatorRepo;

	@Autowired
	Driverrepo driverRepo;
	@Autowired
	UserRepo userRepo;

	@RequestMapping("/admin/login")
	public String loginAdmin(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		// String type = request.getParameter("type");

		System.out.println(uname);
		System.out.println(pass);
		// System.out.println(type);

		AdminModel r = adminRepo.getAdmin(uname, pass);
		if (r != null) {
			session.setAttribute("adminUname", uname);
			return "/Aindex";

		} else {
			System.out.println("Wrong Password");
			return "/adminLogin";
		}

	}

	@RequestMapping("/login/checkLogin")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("type");

		UserModel userModel = userRepo.getLogin(email, password);
		if (userModel != null) {

			session.setAttribute("userModel", userModel);
			
			//if (type.equalsIgnoreCase("Operator")) {
				return "redirect:/Oindex";
			//}
			//else if(type.equalsIgnoreCase("Driver")) {
			//	return "redirect:/Dindex";
			//}

		} else {
			System.out.println("Wrong Password");
			return "redirect:/Login";
		}

		/*
		 * if (type.equalsIgnoreCase("Operator")) {
		 * 
		 * System.out.println("--------------");
		 * 
		 * UserModel userModel =userRepo.getLogin(email, password); if (userModel !=
		 * null) { session.setAttribute("userModel", userModel);
		 * 
		 * return "redirect:/Oindex";
		 * 
		 * }else { return "redirect:/login"; } }
		 * 
		 * else if(type.equalsIgnoreCase("Driver")) {
		 * 
		 * System.out.println("--------------"); UserModel userModel
		 * =userRepo.getLogin(email, password);
		 * 
		 * if (userModel != null) {
		 * 
		 * session.setAttribute("userModel", userModel);
		 * 
		 * return "redirect:/Dindex";
		 * 
		 * }else { return "redirect:/login"; } }
		 */
		//return "";

	}

	@RequestMapping("/signout")
	public String signout(HttpSession session) {

		session.invalidate();
		return "redirect:/login";
	}

}
