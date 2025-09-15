package com.blank.entity;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import lombok.*;

@Data
@Embeddable
public class CareerPK implements Serializable {
    private String ein;
    private String sysOwnerCd;
    private String effectiveFrom;
}
