package com.slwm.solid_liquid_waste_mng.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="Admin_tab")

public class AdminModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long adminId; 
	private String adminUname; 
	private String adminPass;
	public long getAdminId() {
		return adminId;
	}
	public void setAdminId(long adminId) {
		this.adminId = adminId;
	}
	public String getAdminUname() {
		return adminUname;
	}
	public void setAdminUname(String adminUname) {
		this.adminUname = adminUname;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	
	/*
	 * @JsonIgnore
	 * 
	 * @OneToOne(mappedBy ="areaModel") private OpratorModel opratorModel;
	 */
	
	
}
