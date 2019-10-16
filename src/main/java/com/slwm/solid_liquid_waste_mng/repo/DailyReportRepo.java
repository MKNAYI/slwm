package com.slwm.solid_liquid_waste_mng.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.slwm.solid_liquid_waste_mng.Model.AdminModel;
import com.slwm.solid_liquid_waste_mng.Model.DailyReport;

public interface DailyReportRepo extends JpaRepository<DailyReport,Long> {
	/*
	 * @Query(value="select * from Admin_tab where adminUname=?1 and adminPass=?2"
	 * ,nativeQuery=true) AdminModel getAdmin(String uname, String pass);
	 */

}
