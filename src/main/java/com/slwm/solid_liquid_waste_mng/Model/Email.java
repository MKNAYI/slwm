package com.slwm.solid_liquid_waste_mng.Model;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class Email {
	@Autowired
	private JavaMailSender sender;
	
	public void SendEmail(String email,String subject,String msg) {
		MimeMessage message = sender.createMimeMessage();

		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			helper.setTo(email);
			helper.setText(msg);
			helper.setSubject(subject);
			//return " message Send Success...!";
			
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println("Error while sending mail ..");
		}
		
		sender.send(message);


		
	}
	
	
}
