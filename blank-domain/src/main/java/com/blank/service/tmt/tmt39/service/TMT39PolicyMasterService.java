package com.blank.service.tmt.tmt39.service;

import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterResultModel;

public interface TMT39PolicyMasterService {

	public TMT39PolicyMasterResultModel getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel);
	
}
