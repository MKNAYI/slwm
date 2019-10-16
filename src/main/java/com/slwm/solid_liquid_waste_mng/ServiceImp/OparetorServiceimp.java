package com.slwm.solid_liquid_waste_mng.ServiceImp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.slwm.solid_liquid_waste_mng.IService.Ioparetor;
import com.slwm.solid_liquid_waste_mng.Model.OpratorModel;
import com.slwm.solid_liquid_waste_mng.Model.RoleModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.OperatorRepo;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;
import com.slwm.solid_liquid_waste_mng.repo.rollRepo;

@Service
@Transactional
public class OparetorServiceimp implements Ioparetor {
	 private static String UPLOADED_FOLDER = "E:\\MK_001\\Spring\\SLWM\\src\\main\\resources\\static\\images\\photo\\";

	@Autowired
	OperatorRepo oprepo;

	@Autowired
	UserRepo userRepo;

	@Autowired
	rollRepo rolRepo;
	
	@Autowired
	private JavaMailSender sender;

	public void addOprator(OpratorModel op, UserModel usermodel,MultipartFile photo) {

		String email = op.getOpemail();
		String name = op.getOpname();

		Random r = new Random();
		String pass = "s" + r.nextInt((999 - 100) + 1) + 100;

		int rollid = 2;

		//RoleModel rollModel = rolRepo.findById(rollid).orElse(null);

		usermodel.setUsername(email);
		usermodel.setUserpass(pass);
		//usermodel.setRollModel(rollModel);
		//usermodel.setOpratorModel(op);
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
					String opphoto=photo.getOriginalFilename();
					op.setImg(opphoto);

		oprepo.save(op);

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
	public List<OpratorModel> getOparator() {

		return oprepo.findAll();
	}

	@Override
	public OpratorModel getOpratorById(Long opid) {

		return oprepo.findById(opid).orElse(null);

	}

	@Override
	public void deleteOpratorById(Long id) {
		oprepo.deleteById(id);
	}

	@Override
	public void EditOpratorById(OpratorModel op) {
		oprepo.save(op);

	}

	@Override
	public long AvailableOp() {

		return oprepo.count();
	}

}
