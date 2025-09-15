package com.blank.service.tmt.tmt39.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import com.blank.constant.TMT39Messages;
import com.blank.exception.CustomException;

import org.springframework.stereotype.Component;

import com.blank.service.tmt.tmt39.facade.TMT39PolicyMasterFacade;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterResultModel;
import com.blank.service.tmt.tmt39.service.TMT39PolicyMasterService;

@Component
public class TMT39PolicyMasterFacadeImpl implements TMT39PolicyMasterFacade{

	@Autowired
	TMT39PolicyMasterService policyMasterService;

	@Override
	public TMT39PolicyMasterResultModel getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel) throws CustomException {
		if(requestModel.getSysOwnerCd()==null || requestModel.getSysOwnerCd().trim().equals("")) {
			throw new CustomException(TMT39Messages.M_E_209.getCode(),TMT39Messages.M_E_209.getMessage());
		}
		return policyMasterService.getEditableFieldDetails(requestModel);
	}
	
	
}
