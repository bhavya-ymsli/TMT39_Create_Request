package com.blank.entity;

import jakarta.persistence.*;
import lombok.*;
import java.sql.Timestamp;

@Data
@Entity
@Table(name = "organization")
public class Organization {

	@Id
	@Column(name = "organization_cd")
    private String organizationCd;

    @Column(name = "sys_owner_cd", length = 2)
    private String sysOwnerCd;

    @Column(name = "organization_level", length = 3)
    private String organizationLevel;

    @Column(name = "company", length = 4)
    private String company;

    @Column(name = "organization_nm", length = 100)
    private String organizationName;

    @Column(name = "location", length = 4)
    private String location;

    @Column(name = "parent_organization_cd", length = 10)
    private String parentOrganizationCd;

    @Column(name = "parent_organization_nm", length = 100)
    private String parentOrganizationName;

    @Column(name = "organization_head_ein", length = 50)
    private String organizationHeadEin;

    @Column(name = "status", length = 2)
    private String status;

    @Column(name = "create_author", length = 20)
    private String createAuthor;

    @Column(name = "create_date")
    private Timestamp createDate;

    @Column(name = "update_author", length = 20)
    private String updateAuthor;

    @Column(name = "update_date")
    private Timestamp updateDate;

    @Column(name = "update_program", length = 20)
    private String updateProgram;

    @Column(name = "update_counter")
    private Integer updateCounter;

    @Column(name = "company_location", length = 5)
    private String companyLocation;

    @Column(name = "acces_interface_flag", length = 5)
    private String accesInterfaceFlag;

    @Column(name = "operation", length = 50)
    private String operation;

    @Column(name = "division", length = 50)
    private String division;

    @Column(name = "department", length = 50)
    private String department;

    @Column(name = "blue_white_collar_flag", length = 3)
    private String blueWhiteCollarFlag;

    @Column(name = "group_cd", length = 50)
    private String groupCd;

    @Column(name = "center", length = 100)
    private String center;
}
