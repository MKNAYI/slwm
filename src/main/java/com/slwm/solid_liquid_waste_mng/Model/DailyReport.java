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
@Table(name = "Daily_master")
public class DailyReport {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long dayid;
	private String date;
    private int status;

	//@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "id")
	//@Column(name="driverid")
	private DustbinModel dustbinModel;

	public long getDayid() {
		return dayid;
	}

	public void setDayid(long dayid) {
		this.dayid = dayid;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public DustbinModel getDustbinModel() {
		return dustbinModel;
	}

	public void setDustbinModel(DustbinModel dustbinModel) {
		this.dustbinModel = dustbinModel;
	}

  
	
}
