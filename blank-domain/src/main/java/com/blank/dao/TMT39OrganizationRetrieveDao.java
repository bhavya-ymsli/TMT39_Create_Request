package com.blank.dao;

import com.blank.entity.Organization;
import java.util.Optional;

public interface TMT39OrganizationRetrieveDao {
	Organization findByOrganizationCd(String organizationCd);
}
