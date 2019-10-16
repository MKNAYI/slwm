package com.slwm.solid_liquid_waste_mng.IService;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.slwm.solid_liquid_waste_mng.Model.OpratorModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;

public interface Ioparetor {
	
	
	void addOprator(OpratorModel op, UserModel usermodel, MultipartFile photo);
    
	List<OpratorModel> getOparator();
	
	OpratorModel getOpratorById(Long id);
	
	void deleteOpratorById(Long id);
	
	void EditOpratorById(OpratorModel op);
	long AvailableOp();
}
