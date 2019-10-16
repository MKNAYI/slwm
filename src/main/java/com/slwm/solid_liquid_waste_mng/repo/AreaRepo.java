package com.slwm.solid_liquid_waste_mng.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slwm.solid_liquid_waste_mng.Model.AreaModel;

public interface AreaRepo extends JpaRepository<AreaModel,Long> {

	@Query(value="select * from area_tab where isdelete='false'",nativeQuery=true)
	List<AreaModel> getisdeleteArea();
	
	@Query(value="select areaname from area_tab",nativeQuery=true)
	List<AreaModel> getAreaname();

	
}
