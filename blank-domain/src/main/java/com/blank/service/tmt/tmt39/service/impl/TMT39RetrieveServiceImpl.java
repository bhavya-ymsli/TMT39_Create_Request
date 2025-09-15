package com.blank.service.tmt.tmt39.service.impl;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.blank.dao.TMT39CareerRetrieveDao;
import com.blank.dao.TMT39EmployeeRetrieveDao;
import com.blank.dao.TMT39OrganizationRetrieveDao;
import com.blank.entity.Career;
import com.blank.entity.Employee;
import com.blank.entity.Organization;
import com.blank.service.tmt.tmt39.model.TMT39ResultModel;
import com.blank.service.tmt.tmt39.service.TMT39RetrieveService;

@Service
public class TMT39RetrieveServiceImpl implements TMT39RetrieveService{

	@Autowired
    private TMT39EmployeeRetrieveDao employeeRetrieveDao;
	@Autowired
    private TMT39CareerRetrieveDao careerRetrieveDao;
	@Autowired
    private TMT39OrganizationRetrieveDao organizationRetrieveDao;

	@Override
    public TMT39ResultModel getTMT39Result(String ein, String sysOwnerCd) {
        TMT39ResultModel resultModel = new TMT39ResultModel();

        // Fetch employee using composite ID parts
        Employee employee = employeeRetrieveDao.findByEinAndSysOwnerCd(ein, sysOwnerCd);
        if (employee == null) {
            // Return empty or partially populated model or throw an exception
            return resultModel;
        }

        // Set fields from employee
        resultModel.setEin(employee.getCompId().getEin());
        resultModel.setSysOwnerCode(employee.getCompId().getSysOwnerCd());
        resultModel.setEmployeeName(employee.getDisplayName());
        resultModel.setBillingCompany(employee.getBillingCompany());
        resultModel.setCostCenter(employee.getCostCenter());
        resultModel.setOfficialNo(employee.getOfficialNo());
        resultModel.setResidentialAddress("[HARDCODED ADDRESS]-TABLE UNDEFINED");
        
        String effectiveFrom = employee.getEffectiveFrom();
        // Fetch careers by ein and sysOwnerCd and Effective from
        Career career = careerRetrieveDao.findByEinAndSysOwnerCd(ein, sysOwnerCd, effectiveFrom); 
        resultModel.setGrade(career.getGrade());
        resultModel.setDesignation(career.getDesignation());
        resultModel.setPlaceOfPosting(career.getPlaceOfPosting());

        // Fetch organization by organizationCd from employee
        String organizationCd = employee.getOrganizationCd();
        if (organizationCd != null) {
        	System.out.println(organizationCd);
            Organization organization = organizationRetrieveDao.findByOrganizationCd(organizationCd);
            if (organization != null) {
                resultModel.setOrganizationCd(organization.getOrganizationCd());
                resultModel.setOrganizationName(organization.getOrganizationName());
                
            }
        }

        return resultModel;
    }
}