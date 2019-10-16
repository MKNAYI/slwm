package com.slwm.solid_liquid_waste_mng.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slwm.solid_liquid_waste_mng.Model.DustbinModel;

public interface Dustrepo extends JpaRepository<DustbinModel, Long> {

	
	@Query(value="select *from dust_master",nativeQuery=true)
	List<DustbinModel> getLanLon();
	
	@Query(value="SELECT  COUNT(*) FROM dust_master WHERE TYPE=?1 AND STATUS>?2",nativeQuery=true)
	int get75Updustbin(String type, int status);

	@Query(value="SELECT FROM dust_master WHERE  STATUS>?1",nativeQuery=true)
	List<DustbinModel>  get75UpdustbinNotification( int status);
	
	@Query(value="select * from dust_master where isdelete='false'",nativeQuery=true)
	List<DustbinModel> getisdeleteDustbin();
	
}
