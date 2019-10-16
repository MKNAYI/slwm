package com.slwm.solid_liquid_waste_mng.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "dust_master")
public class DustbinModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String type;
	private float lan;
	private float lon;
	//private Long  sr_No;
	private int status;
	
	private String isdelete;
	 
	public String getIsdelete() {
		return isdelete;
	}


	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}
	
	@ManyToOne
	@JoinColumn(name = "areaid")
	private AreaModel areaModel;

	public AreaModel getAreaModel() {
		return areaModel;
	}

	public void setAreaModel(AreaModel areaModel) {
		this.areaModel = areaModel;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getLan() {
		return lan;
	}

	public void setLan(float lan) {
		this.lan = lan;
	}

	public float getLon() {
		return lon;
	}

	public void setLon(float lon) {
		this.lon = lon;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
