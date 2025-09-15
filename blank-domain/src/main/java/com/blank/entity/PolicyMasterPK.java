package com.blank.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Data;

@Data
@Embeddable
public class PolicyMasterPK {

    @Column(name = "sys_owner_cd")
    private String sysOwnerCd;

    @Column(name = "company_cd")
    private String companyCd;

    @Column(name = "grade_level")
    private String gradeLevel;

    @Column(name = "grade")
    private String grade;

    @Column(name = "travel_class")
    private String travelClass;
    
    @Column(name = "effective_from")
    private String effectiveFrom;
}
