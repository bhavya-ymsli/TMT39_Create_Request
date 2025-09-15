package com.blank.web.app.controller.tmt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterResultModel;
import com.blank.exception.CustomException;
import com.blank.service.tmt.tmt39.facade.TMT39PolicyMasterFacade;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;

@RestController
@RequestMapping("/tmt")
public class TMT39PolicyMasterController {
	
	@Autowired
	TMT39PolicyMasterFacade policyMasterFacade;

	@PostMapping("/editable-field-details.json")
    public ResponseEntity<TMT39PolicyMasterResultModel> getEditableFieldDetails(@RequestBody TMT39PolicyMasterRequestModel requestModel) {
        try {
			return policyMasterFacade.getEditableFieldDetails(requestModel);
		} catch (CustomException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
            return new TMT39PolicyMasterResultModel();
		}
    }

}
