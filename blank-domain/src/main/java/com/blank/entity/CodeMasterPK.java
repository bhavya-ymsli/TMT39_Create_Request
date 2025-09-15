package com.blank.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Data;

@Data
@Embeddable
public class CodeMasterPK {
	
	@Column(name="codeid")
	private String codeId;
	
	@Column(name="codekey")
	private String codeKey; 
	
}
