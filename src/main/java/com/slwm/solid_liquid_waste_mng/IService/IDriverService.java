package com.slwm.solid_liquid_waste_mng.IService;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;

public interface IDriverService {
	
	
	void addDriver(DriverModel driver,UserModel usermodel, MultipartFile photo);
    
	List<DriverModel> getDriver();
	
	DriverModel getDriverById(Long id);
	
	void deleteDriverById(long id);
	
	void EditDriverById(DriverModel op);
	
	DriverModel getAreawiseDriver(Long areaid1);
	
	
}
