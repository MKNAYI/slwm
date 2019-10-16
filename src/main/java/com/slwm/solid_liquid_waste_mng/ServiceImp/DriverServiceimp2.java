package com.slwm.solid_liquid_waste_mng.ServiceImp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.Set;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.slwm.solid_liquid_waste_mng.IService.IDriverService;
import com.slwm.solid_liquid_waste_mng.IService.IUserService;
import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.RoleModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.Driverrepo;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;
import com.slwm.solid_liquid_waste_mng.repo.rollRepo;


@Service
@Transactional
public class DriverServiceimp2 implements IDriverService {
	 private static String UPLOADED_FOLDER = "E:\\MK_001\\Spring\\SLWM\\src\\main\\resources\\static\\images\\photo\\";

	@Autowired	
	Driverrepo driverrepo;
	@Autowired
	UserRepo userRepo;
    @Autowired
	rollRepo rolRepo;
	@Autowired
	private JavaMailSender sender;
	
	@Override
	public void addDriver(DriverModel driver, UserModel usermodel, MultipartFile photo) {
		
		 BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String email = driver.getDriemail();
		

		Random r = new Random();
		String pass = "slwm" + r.nextInt((999 - 100) + 1) + 100;

         String hashpassword=passwordEncoder.encode(pass);
		RoleModel roleModel = rolRepo.findById((int)2).orElse(null);

		Set<RoleModel> RoleModel1=new HashSet<RoleModel>();
		RoleModel1.add(roleModel);
		usermodel.setUsername(email);
		usermodel.setUserpass(hashpassword);
		usermodel.setIsdelete("false");
		usermodel.setRoleModel(RoleModel1);
		usermodel.setDriverModel(driver);
		usermodel.setToken(UUID.randomUUID().toString());
		//image Upload
		if (photo.isEmpty()) {
	          //  redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
	         System.out.print("file Not Find or Empty");
	        }

	        try {

	            // Get the file and save it somewhere
	            byte[] bytes = photo.getBytes();
	            Path path = Paths.get(UPLOADED_FOLDER + photo.getOriginalFilename());
	            Files.write(path, bytes);

	           // redirectAttributes.addFlashAttribute("message",
	                   // "You successfully uploaded '" + photo.getOriginalFilename() + "'");

	        } catch (IOException e) {
	            e.printStackTrace();
	        }
			String driphoto=photo.getOriginalFilename();
			driver.setImg(driphoto);
			driver.setIsdelete("false");
		driverrepo.save(driver);

		userRepo.save(usermodel);
		// Send Password To email
          String msg="\nHey...Notice,SLWM Send Your Password !.Please Chanage Your PassWord First,Thank You.";
		MimeMessage message = sender.createMimeMessage();

		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			helper.setTo(email);
			helper.setText(pass+"\n"+msg);
			helper.setSubject(" Your Password :");
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println("Error while sending mail ..");
		}
		sender.send(message);

		
		
		
	}

	@Override
	public List<DriverModel> getDriver() {
		return driverrepo.getisdeleteDriver();
	}

	@Override
	public DriverModel getDriverById(Long id) {
		return driverrepo.findById(id).orElse(null);
		
	}

	@Override
	public void deleteDriverById(long id) {
		DriverModel driver=	driverrepo.findById(id).orElse(null);
		if(driver!=null) {
		driver.setIsdelete("true");	
		driverrepo.save(driver);
		}
	}

	@Override
	public void EditDriverById(DriverModel op) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DriverModel getAreawiseDriver(Long areaid1) {
			return driverrepo.getAreaDriver(areaid1);
	}

	
	}
