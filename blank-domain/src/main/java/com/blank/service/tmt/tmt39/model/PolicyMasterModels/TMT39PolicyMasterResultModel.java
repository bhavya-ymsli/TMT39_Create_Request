package com.blank.service.tmt.tmt39.model.PolicyMasterModels;

import lombok.Data;

@Data
public class TMT39PolicyMasterResultModel {

	private String sysOwnerCd;
    private String companyCd;
    private String gradeLevel;
    private String grade;
    private String travelClass;
    private boolean isBillRequired;
    private boolean isAmountEditable;
    private boolean isBillNoRequired;
    private boolean isBillDateRequired;
    private boolean isVehicleNumberRequired;
	
}
