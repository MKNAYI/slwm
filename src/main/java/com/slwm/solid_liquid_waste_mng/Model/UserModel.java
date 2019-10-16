package com.slwm.solid_liquid_waste_mng.Model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne; 
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "User_master")
public class UserModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userid;
	private String username;
	private String userpass;
	private String token;

	@JsonIgnore
	@OneToOne
	@JoinColumn(name = "id")
	//@Column(name="driverid")
	private DriverModel driverModel;

	public DriverModel getDriverModel() {
		return driverModel;
	}

	public void setDriverModel(DriverModel driverModel) {
		this.driverModel = driverModel;
	}

	@JsonIgnore
    @ManyToMany
    @JoinTable(name="userrole",joinColumns=@JoinColumn(name="userid"),inverseJoinColumns=@JoinColumn(name="roleid"))
	private Set<RoleModel> roleModel;





	public Set<RoleModel> getRoleModel() {
		return roleModel;
	}

	public void setRoleModel(Set<RoleModel> roleModel) {
		this.roleModel = roleModel;
	}

	public long getUserid() {
		return userid;
	}

	public void setUserid(long userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

	private String isdelete;
	 
	public String getIsdelete() {
		return isdelete;
	}


	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}  
	
	
}
