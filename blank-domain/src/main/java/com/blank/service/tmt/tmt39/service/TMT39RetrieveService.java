package com.blank.service.tmt.tmt39.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.blank.service.tmt.tmt39.model.TMT39ResultModel;

public interface TMT39RetrieveService {

	public TMT39ResultModel getTMT39Result(String ein, String sysOwnerCd);

}
