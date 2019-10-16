package com.slwm.solid_liquid_waste_mng;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class SlwmApplication {

	public static void main(String[] args) {
		SpringApplication.run(SlwmApplication.class, args);
		
		
    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		
		String hashedPassword = passwordEncoder.encode("ABC");
		System.out.println("===========================================");
		System.out.println(hashedPassword);
		System.out.println("===========================================");
	}

}
