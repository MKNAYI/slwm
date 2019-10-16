package com.slwm.solid_liquid_waste_mng.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "driver_master")
public class DriverModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String drifname;

	private String driname;
	private String drilname;
	private String driaddress;
	private String dridob;


 
	private String img;
	private String driemail;
	private String dricontact;
	private String drijdate;

	@ManyToOne
	@JoinColumn(name = "areaid")
	private AreaModel areaModel;

	
	 @OneToOne(mappedBy ="driverModel")
	 private UserModel userModel;
	  
	  public UserModel getUserModel() { return userModel; }
	  
	  public void setUserModel(UserModel userModel) { this.userModel = userModel; }
	 
	  
	  
	  
		private String isdelete;
		 
		public String getIsdelete() {
			return isdelete;
		}


		public void setIsdelete(String isdelete) {
			this.isdelete = isdelete;
		}  
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	public String getDriemail() {
		return driemail;
	}

	public void setDriemail(String driemail) {
		this.driemail = driemail;
	}
	public String getDrifname() {
		return drifname;
	}

	public void setDrifname(String drifname) {
		this.drifname = drifname;
	}

	public String getDriname() {
		return driname;
	}

	public void setDriname(String driname) {
		this.driname = driname;
	}

	public String getDrilname() {
		return drilname;
	}

	public void setDrilname(String drilname) {
		this.drilname = drilname;
	}

	public String getDriaddress() {
		return driaddress;
	}

	public void setDriaddress(String driaddress) {
		this.driaddress = driaddress;
	}

	public String getDridob() {
		return dridob;
	}

	public void setDridob(String dridob) {
		this.dridob = dridob;
	}

	public String getDricontact() {
		return dricontact;
	}

	public void setDricontact(String dricontact) {
		this.dricontact = dricontact;
	}

	public String getDrijdate() {
		return drijdate;
	}

	public void setDrijdate(String drijdate) {
		this.drijdate = drijdate;
	}

	public AreaModel getAreaModel() {
		return areaModel;
	}

	public void setAreaModel(AreaModel areaModel) {
		this.areaModel = areaModel;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	
  

}
