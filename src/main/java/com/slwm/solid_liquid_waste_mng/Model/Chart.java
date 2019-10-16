package com.slwm.solid_liquid_waste_mng.Model;

public class Chart {
	private String Area;
	private int Total;
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public int getTotal() {
		return Total;
	}
	public void setTotal(int total) {
		Total = total;
	}
	public Chart(String area, int total) {
	
		Area = area;
		Total = total;
	}
	

}
