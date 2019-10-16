package com.slwm.solid_liquid_waste_mng.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.slwm.solid_liquid_waste_mng.Model.UserModel;

@Repository
public interface UserRepo extends JpaRepository<UserModel, Long> {
	
	@Query(value="select * from user_master where use_name=?1 and user_pass=?2",nativeQuery=true)
	UserModel getLogin(String email, String password);

	@Query(value="select * from user_master WHERE id=?",nativeQuery=true)
	UserModel  finddeleteByDriverId(Long id);

	UserModel findByUsername(String username);

	UserModel findByToken(String token);
		
}
