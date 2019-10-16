package com.slwm.solid_liquid_waste_mng.repo;

import java.util.List;

import org.hibernate.annotations.NamedNativeQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slwm.solid_liquid_waste_mng.Model.AdminModel;
import com.slwm.solid_liquid_waste_mng.Model.OpratorModel;

public interface OperatorRepo extends JpaRepository<OpratorModel,Long> {

	/*
	 * @Query(value="SELECT * FROM operator_master WHERE areaid=?1",
	 * nativeQuery=true) List<OpratorModel> areawiseOpratoer(Long id);
	 */
	
	@Query(value="select * from operator_master where opemail=?1 and password=?2",nativeQuery=true)
	OpratorModel oparetorLogin(String email, String password);
}
