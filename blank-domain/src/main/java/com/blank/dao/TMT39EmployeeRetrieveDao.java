package com.blank.dao;

import com.blank.entity.Employee;
import java.util.Optional;

public interface TMT39EmployeeRetrieveDao {
	Employee findByEinAndSysOwnerCd(String ein, String sysOwnerCd);
}
