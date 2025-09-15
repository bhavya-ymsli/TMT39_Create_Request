package com.blank.web.app.controller.tmt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blank.service.tmt.tmt39.facade.TMT39RetrieveFacade;
import com.blank.service.tmt.tmt39.model.TMT39ResultModel;
import com.blank.service.tmt.tmt39.model.TMT39RequestModel;

import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("tmt")
public class TMT39Controller {
	
	@Autowired
	TMT39RetrieveFacade retrieveFacade;
	
	@PostMapping("/get-basic-data.json")
	public TMT39ResultModel getTMT39Result(@RequestBody TMT39RequestModel requestModel) {

		try {
	        return retrieveFacade.getTMT39Result(requestModel.getEin(), requestModel.getSysOwnerCode());
	    } catch (Exception e) {
	        TMT39ResultModel errorModel = new TMT39ResultModel();
	        return errorModel;
	    }
	}
}
