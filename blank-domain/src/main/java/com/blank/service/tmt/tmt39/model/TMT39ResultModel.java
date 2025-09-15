package com.blank.service.tmt.tmt39.model;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TMT39ResultModel {

	private String ein;
	private String sysOwnerCode;
	private String employeeName;
	private String grade;
	private String designation;
    private String organizationCd;
    private String organizationName;
    private String billingCompany;
//    private String requestNo;
    private String costCenter;
    private String officialNo;
    private String residentialAddress;
    private String placeOfPosting;
	
	private List<TMT39ResultDetailModel> resultDetailModelList;
}