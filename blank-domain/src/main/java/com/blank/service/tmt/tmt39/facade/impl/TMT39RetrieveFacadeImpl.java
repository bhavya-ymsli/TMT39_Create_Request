package com.blank.service.tmt.tmt39.facade.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.blank.service.tmt.tmt39.facade.TMT39RetrieveFacade;
import com.blank.service.tmt.tmt39.model.TMT39ResultModel;
import com.blank.service.tmt.tmt39.service.TMT39RetrieveService;

@Component
public class TMT39RetrieveFacadeImpl implements TMT39RetrieveFacade{


	@Autowired
	private TMT39RetrieveService retriveService;
	
	public TMT39ResultModel getTMT39Result(String ein, String sysOwnerCd) {
		
		return retriveService.getTMT39Result(ein, sysOwnerCd);
		
	}
}
