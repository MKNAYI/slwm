package com.slwm.solid_liquid_waste_mng.configration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter 
{
	
	@Autowired
	UserDetailsService userDetailsService;
	
	@Autowired
	CustomizeAuthenticationSuccessHandler customizeAuthenticationSuccessHandler;
	
	@Bean(name = "passwordEncoder")
	public PasswordEncoder passwordencoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception 
	{
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordencoder());
	
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception 
	{
		http.authorizeRequests()
		.antMatchers("/adr", "/adust","/static/**","/css/**","/images/**", "/assets/**", "/global_assets/**", "/register", "/registerProcess",
				"/login", "/forgatepass","/forgatepass/Action","/changepassword","/Rest-password","/SetStatus/Dustbin/** ","/notification/**")
		.permitAll()
		.antMatchers("/thankyou", "/api/**", "/crmapi/**", "/verifyotp", "/UpdatePassword", "/payuform",
				"/payment", "/invoice","/privacy-policy")
		.permitAll()
		.antMatchers("/Driver/**").access("hasRole('ROLE_DRIVER')")
		.antMatchers("/Admin/**").access("hasRole('ROLE_ADMIN')")
		.anyRequest().authenticated().and().formLogin().successHandler(customizeAuthenticationSuccessHandler)
		.loginPage("/login").usernameParameter("username").passwordParameter("userpass")
		.and().logout()
		.logoutSuccessUrl("/login?logout").deleteCookies("JSESSIONID").invalidateHttpSession(true).and().csrf()
		.disable();

		
	}
	
	

}
