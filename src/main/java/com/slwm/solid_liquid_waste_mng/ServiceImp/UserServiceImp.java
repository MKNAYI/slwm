package com.slwm.solid_liquid_waste_mng.ServiceImp;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slwm.solid_liquid_waste_mng.IService.IUserService;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;
import com.slwm.solid_liquid_waste_mng.repo.UserRepo;

@Service
@Transactional
public class UserServiceImp implements IUserService {

	
	@Autowired
	UserRepo userRepo;

	@Override
	public void deleteByDriverId(Long id) {
		UserModel userModel=userRepo.finddeleteByDriverId(id);
		if(userModel!=null) {
		userModel.setIsdelete("true");	
		userRepo.save(userModel);
	}
		}
	

}
