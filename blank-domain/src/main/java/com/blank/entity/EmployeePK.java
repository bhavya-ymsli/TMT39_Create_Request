package com.blank.entity;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import lombok.Data;

@Data
@Embeddable
public class EmployeePK implements Serializable {
    private String ein;
    private String sysOwnerCd;
}
