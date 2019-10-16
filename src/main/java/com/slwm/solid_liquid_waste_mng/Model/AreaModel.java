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
@Table(name="Area_tab")

public class AreaModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long areaid; 
	private String areaname; 
	private String fullarea;
	private String isdelete;
	 
	public String getIsdelete() {
		return isdelete;
	}


	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}


	public long getAreaid() {
		return areaid;
	}


	public void setAreaid(long areaid) {
		this.areaid = areaid;
	}


	public String getAreaname() {
		return areaname;
	}


	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}


	public String getFullarea() {
		return fullarea;
	}


	public void setFullarea(String fullarea) {
		this.fullarea = fullarea;
	}




	
}
