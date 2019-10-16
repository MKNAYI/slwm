package com.slwm.solid_liquid_waste_mng.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slwm.solid_liquid_waste_mng.Model.RoleModel;
import com.slwm.solid_liquid_waste_mng.Model.UserModel;

public interface rollRepo extends JpaRepository<RoleModel, Integer> {
	/*
	 * @Query(value="select * from user_master where use_name=?1 and user_pass=?2"
	 * ,nativeQuery=true) UserModel getLogin(String email, String password);
	 */
}
