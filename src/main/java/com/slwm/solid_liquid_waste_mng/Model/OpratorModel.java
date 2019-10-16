package com.slwm.solid_liquid_waste_mng.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="operator_master")

public class OpratorModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long opid; 
	//basic Information

	private String opname;
	private String opfname;
	private String oplname;
	private String opemail;
	private String opaddress;
	private String opdob;
	private String opcontact;
	private String opjdate;
	private String img;

	

	//@JsonIgnore
	@ManyToOne
	@JoinColumn(name="areaid") 
    private AreaModel areaModel;
	
	
	  public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	 
	public long getOpid() {
		return opid;
	}

	public void setOpid(long opid) {
		this.opid = opid;
	}

	public String getOpname() {
		return opname;
	}

	public void setOpname(String opname) {
		this.opname = opname;
	}

	public String getOpfname() {
		return opfname;
	}

	public void setOpfname(String opfname) {
		this.opfname = opfname;
	}

	public String getOplname() {
		return oplname;
	}

	public void setOplname(String oplname) {
		this.oplname = oplname;
	}

	public String getOpaddress() {
		return opaddress;
	}

	public void setOpaddress(String opaddress) {
		this.opaddress = opaddress;
	}

	public String getOpdob() {
		return opdob;
	}

	public void setOpdob(String opdob) {
		this.opdob = opdob;
	}

	public String getOpcontact() {
		return opcontact;
	}

	public void setOpcontact(String opcontact) {
		this.opcontact = opcontact;
	}

	public String getOpjdate() {
		return opjdate;
	}

	public void setOpjdate(String opjdate) {
		this.opjdate = opjdate;
	}

	public AreaModel getAreaModel() {
		return areaModel;
	}

	public void setAreaModel(AreaModel areaModel) {
		this.areaModel = areaModel;
	}
	public String getOpemail() {
		return opemail;
	}

	public void setOpemail(String opemail) {
		this.opemail = opemail;
	}

	
	}
