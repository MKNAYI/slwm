package com.slwm.solid_liquid_waste_mng.IService;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;

public interface IUserService {

	void deleteByDriverId(Long id);

}
