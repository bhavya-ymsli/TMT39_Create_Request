package com.blank.service.tmt.tmt39.facade;

import com.blank.exception.CustomException;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterResultModel;


public interface TMT39PolicyMasterFacade {

	public TMT39PolicyMasterResultModel getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel) throws CustomException;
	
}
