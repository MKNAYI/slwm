package com.slwm.solid_liquid_waste_mng.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.slwm.solid_liquid_waste_mng.Model.DriverModel;
import com.slwm.solid_liquid_waste_mng.Model.OpratorModel;

@Repository
public interface Driverrepo extends JpaRepository<DriverModel,Long> {
	@Query(value="select * from driver_master where email=?1 and password=?2",nativeQuery=true)
	DriverModel driverLogin(String email, String password);
	
	@Query(value="select * from driver_master where areaid=?1",nativeQuery=true)
	DriverModel getAreaDriver(Long areaid1);
	
	@Query(value="SELECT * FROM driver_master WHERE isdelete='false'",nativeQuery=true)
	List<DriverModel> getisdeleteDriver();
}
