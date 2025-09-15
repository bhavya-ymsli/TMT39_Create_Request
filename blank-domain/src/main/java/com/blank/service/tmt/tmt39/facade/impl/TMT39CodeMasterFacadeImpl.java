package com.blank.service.tmt.tmt39.facade.impl;

import com.blank.service.tmt.tmt39.facade.TMT39CodeMasterFacade;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultModel;
import com.blank.service.tmt.tmt39.service.TMT39CodeMasterService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TMT39CodeMasterFacadeImpl implements TMT39CodeMasterFacade{

	@Autowired
	TMT39CodeMasterService codeMasterService;
	
	public TMT39CodeMasterResultModel retrieveCodeMasterData(String codeId) {
		return codeMasterService.retrieveCodeMasterData(codeId);
	}
	
}
