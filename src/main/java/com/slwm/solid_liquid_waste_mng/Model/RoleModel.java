package com.slwm.solid_liquid_waste_mng.Model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="roll_master")

public class RoleModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int roleid; 
	private String rolename;
	
	
	@ManyToMany(mappedBy ="roleModel")
	private Set<UserModel> UserModel;


	public int getRoleid() {
		return roleid;
	}


	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}


	public String getRolename() {
		return rolename;
	}


	public void setRolename(String rolename) {
		this.rolename = rolename;
	}


	public Set<UserModel> getUserModel() {
		return UserModel;
	}


	public void setUserModel(Set<UserModel> userModel) {
		UserModel = userModel;
	}
	
				
	
}
