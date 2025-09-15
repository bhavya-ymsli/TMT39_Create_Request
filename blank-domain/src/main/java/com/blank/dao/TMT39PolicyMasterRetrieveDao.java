package com.blank.dao;

import com.blank.entity.PolicyMaster;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;

public interface TMT39PolicyMasterRetrieveDao {

	public PolicyMaster getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel);
	
}
