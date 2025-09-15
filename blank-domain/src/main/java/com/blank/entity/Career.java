package com.blank.entity;

import jakarta.persistence.*;
import lombok.*;
import java.sql.Timestamp;

@Entity
@Table(name = "career")
@Data
public class Career {

    @EmbeddedId
    private CareerPK id;

    @Column(name = "company")
    private String company;

    @Column(name = "location")
    private String location;

    @Column(name = "organization_cd")
    private String organizationCd;

    @Column(name = "grade")
    private String grade;

    @Column(name = "designation")
    private String designation;

    @Column(name = "cost_center")
    private String costCenter;

    @Column(name = "place_of_posting")
    private String placeOfPosting;

    @Column(name = "reporting_to_ein")
    private String reportingToEin;

    @Column(name = "create_author")
    private String createAuthor;

    @Column(name = "create_date")
    private Timestamp createDate;

    @Column(name = "update_author")
    private String updateAuthor;

    @Column(name = "update_date")
    private Timestamp updateDate;

    @Column(name = "update_program")
    private String updateProgram;

    @Column(name = "update_counter")
    private Integer updateCounter;

    @Column(name = "role_description")
    private String roleDescription;

    @Column(name = "effective_to")
    private String effectiveTo;

    @Column(name = "mo_delegate")
    private String moDelegate;

    @Column(name = "bill_delegate")
    private String billDelegate;

    @Column(name = "lms_delegate")
    private String lmsDelegate;

    @Column(name = "pms_delegate")
    private String pmsDelegate;

    @Column(name = "taxi_delegate")
    private String taxiDelegate;

    @Column(name = "mobile_delegate")
    private String mobileDelegate;

    @Column(name = "ot_delegate")
    private String otDelegate;

    @Column(name = "conveyance_delegate")
    private String conveyanceDelegate;

    @Column(name = "transferred")
    private String transferred;

    @Column(name = "deputed")
    private String deputed;

    @Column(name = "skill_code")
    private String skillCode;

    @Column(name = "section")
    private String section;

    @Column(name = "create_date_time")
    private Timestamp createDateTime;

    @Column(name = "update_date_time")
    private Timestamp updateDateTime;

    @Column(name = "promoted")
    private String promoted;

    @Column(name = "mentor")
    private String mentor;
}
