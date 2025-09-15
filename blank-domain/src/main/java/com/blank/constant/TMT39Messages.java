package com.blank.constant;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public enum TMT39Messages {


    // Success
    M_E_001("M.E.001", "New Bill added successfully."),
    M_E_002("M.E.002", "Request updated successfully."),
    M_E_004("M.E.004", "Bill details submitted successfully."),
   
 
    // Validation Errors
    M_E_101("M.E.101", " code is required."),
    M_E_102("M.E.102", "Duplicate  Code not allowed."),
    M_E_103("M.E.102", " code must be alphanumeric."),
    M_E_104("M.E.103", " code must not exceed 10 characters."),
    
    
    
    M_E_105("M.E.105", " name is required."),
    M_E_106("M.E.106", " name must not exceed 50 characters."),
    
    M_E_107("M.E.107", "Contact person name is required."),
    M_E_108("M.E.108", "Contact person name must contain only alphabets and spaces."),
    M_E_109("M.E.109", "Contact person name must be maximum 50 characters."),
	
    M_E_110("M.E.110", "Site is required."),
    M_E_111("M.E.111", "Invalid Site. Allowed values are CHENNAI, FARIDABAD, SURAJPUR, AKDR."),
    
    M_E_112("M.E.112", "  address is required."),
    M_E_113("M.E.113", "  address must not exceed 255 characters."),
    
    M_E_114("M.E.114", "  first contact number is required."),
    M_E_115("M.E.115", "  contact number must be exactly 10 digits."),
    
    
    M_E_116("M.E.116", "Email ID is required."),
    M_E_117("M.E.117", "Invalid Email Id format."),
    M_E_118("M.E.118", " Email Id cannot be more than 50 characters."),
 
    M_E_119("M.E.119", "Duplicate Email Id not allowed."),
    
    M_E_120("M.E.120", "Status is required."),
    M_E_121("M.E.121", "Invalid Status. Allowed values are Active or Inactive."),
    M_E_122("M.E.122", " Status cannot be modified on new insert."),
    
    M_E_123("M.E.123", "Effective From is required."),
    M_E_124("M.E.124", "Effective To is required."),
    
    M_E_125("M.E.125", "Effective From must be less than or equal to Effective To."),
 
    // DB / Processing Errors
    M_E_203("M.E.203", "  code not found."),
    M_E_204("M.E.204", "Database connection error."),
    M_E_205("M.E.205", "Constraint violation in database."),
    M_E_206("M.E.206", "Unexpected database error occurred."),
	M_E_208("M.E.208", "Please refresh the screen to get latest changes."),
	
	M_E_209("M.E.209", "SysOwnerCd is required.");

    private final String code;
    private final String message;
	public String getCode() {
		return code;
	}
	public String getMessage() {
		return message;
	}
    

}