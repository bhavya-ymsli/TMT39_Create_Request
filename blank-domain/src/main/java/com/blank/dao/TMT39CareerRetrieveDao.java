package com.blank.dao;

import com.blank.entity.Career;
import java.util.List;

public interface TMT39CareerRetrieveDao {
	Career findByEinAndSysOwnerCd(String ein, String sysOwnerCd, String effectiveFrom);
}
