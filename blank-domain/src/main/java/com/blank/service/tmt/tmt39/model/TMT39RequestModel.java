package com.blank.service.tmt.tmt39.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TMT39RequestModel {

	//RequestId
	
	//To fetch data from the employee table
	private String ein; //  TTNNN/TTNNNN format
	private String sysOwnerCode;   // I guess 1 for YNA
	
	//TO fetch data from "tms_local_conveyance_policy_mst" table
	//sysOwnerCode
	private String companyCode;    // Number starting from 1
	private String gradeLevel;     // Number starting from 1
	private String grade;          // 2 letters
	private String travelClass;    // Name of travel selection from the drop down
	
	//To fetch data from "tms_local_conveyance_detail" table
	//sys_owner_code
	private String requestNo;      // int
	private String billSequenceNo; // int
	
	//To fetch data from "tms_local_conveyance_header" table
	//sysOwnerCode
	//requestNo
	//billSequenceNo
	
	//To fetch data from "career" table
	//ein
	//sysOwnerCode
	private String effectiveFrom; // charvarying 25 ( ig date)
	
}
