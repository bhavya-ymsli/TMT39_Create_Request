package com.blank.entity;

import jakarta.persistence.*;
import lombok.*;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "employee")
@Data
public class Employee {

    @EmbeddedId
    private EmployeePK compId;

    @Column(name = "access_id")
    private String accessId;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "organization_cd")
    private String organizationCd;

    @Column(name = "desktop_required")
    private String desktopRequired;

    @Column(name = "laptop_required")
    private String laptopRequired;

    @Column(name = "email_required")
    private String emailRequired;

    @Column(name = "official_email")
    private String officialEmail;

    @Column(name = "expatriates")
    private String expatriates;

    @Column(name = "employee_type")
    private String employeeType;

    @Column(name = "employee_status")
    private String employeeStatus;

    @Column(name = "extension_no")
    private String extensionNo;

    @Column(name = "date_of_joining")
    private String dateOfJoining;

    @Column(name = "date_of_resign")
    private String dateOfResign;

    @Column(name = "date_of_leaving")
    private String dateOfLeaving;

    @Column(name = "leaving_reason")
    private String leavingReason;

    @Column(name = "passport_no")
    private String passportNo;

    @Column(name = "place_of_issue")
    private String placeOfIssue;

    @Column(name = "issue_date")
    private String issueDate;

    @Column(name = "expiry_date")
    private String expiryDate;

    @Column(name = "nationality")
    private String nationality;

    @Column(name = "date_of_birth")
    private String dateOfBirth;

    @Column(name = "gender")
    private String gender;

    @Column(name = "photo_url")
    private String photoUrl;

    @Column(name = "zone")
    private String zone;

    @Column(name = "outsource_flag")
    private String outsourceFlag;

    @Column(name = "suspend_type_cd")
    private String suspendTypeCd;

    @Column(name = "retire_type_cd")
    private String retireTypeCd;

    @Column(name = "retire_date")
    private String retireDate;

    @Column(name = "manager_flg")
    private String managerFlg;

    @Column(name = "acces_interface_flag")
    private String accesInterfaceFlag;

    @Column(name = "salary_account")
    private String salaryAccount;

    @Column(name = "salary_ifsc_code")
    private String salaryIfscCode;

    @Column(name = "era_account")
    private String eraAccount;

    @Column(name = "era_ifsc_code")
    private String eraIfscCode;

    @Column(name = "bank_name")
    private String bankName;

    @Column(name = "account_status")
    private BigDecimal accountStatus;

    @Column(name = "account_status_as_on")
    private Date accountStatusAsOn;

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

    @Column(name = "passport_available")
    private String passportAvailable;

    @Column(name = "calender_cd")
    private String calenderCd;

    @Column(name = "time_office_code")
    private String timeOfficeCode;

    @Column(name = "cost_center")
    private String costCenter;

    @Column(name = "background_verification_cd")
    private String backgroundVerificationCd;

    @Column(name = "date_of_confirmation")
    private String dateOfConfirmation;

    @Column(name = "employee_portal")
    private String employeePortal;

    @Column(name = "billing_organization_cd")
    private String billingOrganizationCd;

    @Column(name = "official_no")
    private String officialNo;

    @Column(name = "outlook_email_id")
    private String outlookEmailId;

    @Column(name = "previous_experience_months")
    private String previousExperienceMonths;

    @Column(name = "previous_experience_years")
    private String previousExperienceYears;

    @Column(name = "old_employee_portal")
    private String oldEmployeePortal;

    @Column(name = "company")
    private String company;

    @Column(name = "location")
    private String location;

    @Column(name = "register_flag")
    private String registerFlag;

    @Column(name = "effective_from")
    private String effectiveFrom;

    @Column(name = "email_wf_id")
    private Integer emailWfId;

    @Column(name = "system_wf_id")
    private Integer systemWfId;

    @Column(name = "org_ein_interface_flag")
    private String orgEinInterfaceFlag;

    @Column(name = "serial_no")
    private String serialNo;

    @Column(name = "company_location")
    private String companyLocation;

    @Column(name = "asset_no")
    private String assetNo;

    @Column(name = "validated")
    private String validated;

    @Column(name = "transfer_official_details_flag")
    private String transferOfficialDetailsFlag;

    @Column(name = "planned_date_of_confirmation")
    private String plannedDateOfConfirmation;

    @Column(name = "planned_date_of_relieving")
    private String plannedDateOfRelieving;

    @Column(name = "lotus_id")
    private String lotusId;

    @Column(name = "lotus_workflow_key")
    private String lotusWorkflowKey;

    @Column(name = "employee_shift_type")
    private String employeeShiftType;

    @Column(name = "employee_nationality")
    private String employeeNationality;

    @Column(name = "billing_company")
    private String billingCompany;

    @Column(name = "territory")
    private String territory;

    @Column(name = "bus_route")
    private String busRoute;

    @Column(name = "boarding_point")
    private String boardingPoint;

    @Column(name = "aadhar_card_no")
    private String aadharCardNo;

    @Column(name = "employee_category")
    private String employeeCategory;

    @Column(name = "blue_white_collar_flag")
    private String blueWhiteCollarFlag;

    @Column(name = "ymc_interface_flag")
    private String ymcInterfaceFlag;

    @Column(name = "contract_name")
    private String contractName;

    @Column(name = "starlink_department")
    private String starlinkDepartment;

    @Column(name = "mobile_applicable")
    private String mobileApplicable;

    @Column(name = "mobile_operator")
    private String mobileOperator;

    @Column(name = "avalon_pay_group")
    private String avalonPayGroup;

    @Column(name = "avalon_designation")
    private String avalonDesignation;

    @Column(name = "leave_credit_flag")
    private String leaveCreditFlag;

    @Column(name = "avalon_category")
    private String avalonCategory;

    @Column(name = "avalon_department")
    private String avalonDepartment;

    @Column(name = "avalon_cont_code")
    private String avalonContCode;

    @Column(name = "avalon_shift")
    private String avalonShift;

    @Column(name = "avalon_grade")
    private String avalonGrade;

    @Column(name = "avalon_regul_code")
    private String avalonRegulCode;

    @Column(name = "avalon_depute_code")
    private String avalonDeputeCode;

    @Column(name = "avalon_branch")
    private String avalonBranch;

    @Column(name = "avalon_job_code")
    private String avalonJobCode;

    @Column(name = "avalon_stag_off")
    private String avalonStagOff;

    @Column(name = "avalon_auto_flag")
    private String avalonAutoFlag;

    @Column(name = "avalon_skill_code")
    private String avalonSkillCode;

    @Column(name = "avalon_navision_ccn_key2")
    private String avalonNavisionCcnKey2;

    @Column(name = "avalon_navision_ccn_key1")
    private String avalonNavisionCcnKey1;

    @Column(name = "refered_by")
    private String referedBy;

    @Column(name = "previous_ein")
    private String previousEin;

    @Column(name = "misconduct_flag")
    private String misconductFlag;

    @Column(name = "salary_flag")
    private String salaryFlag;

    @Column(name = "punch_tag")
    private String punchTag;

    @Column(name = "misconduct_reason")
    private String misconductReason;

    @Column(name = "referred_type")
    private String referredType;

    @Column(name = "finger_bypass")
    private String fingerBypass;

    @Column(name = "contract_end_date")
    private String contractEndDate;
}
