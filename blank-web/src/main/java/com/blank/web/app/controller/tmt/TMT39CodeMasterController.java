package com.blank.web.app.controller.tmt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blank.service.tmt.tmt39.facade.TMT39CodeMasterFacade;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterRequestModel;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultModel;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/tmt")
public class TMT39CodeMasterController {

	@Autowired
	TMT39CodeMasterFacade codeMasterFacade;
	
	@PostMapping("get-codes.json")
	public TMT39CodeMasterResultModel retrieveCodeMasterData(@RequestBody TMT39CodeMasterRequestModel  requestModel){
		return codeMasterFacade.retrieveCodeMasterData(requestModel.getCodeId());
	}
}
