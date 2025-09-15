package com.blank.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "code_mst")
public class CodeMaster {

	@EmbeddedId
	private CodeMasterPK compId;
	
	@Column(name="codedata")
	private String codeData;
	
}
