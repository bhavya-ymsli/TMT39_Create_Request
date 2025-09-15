package com.blank.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "tms_local_conveyance_policy_mst")
public class PolicyMaster {

	@EmbeddedId
	private PolicyMasterPK compId;
	
    @Column(name = "is_bill_required")
    private boolean isBillRequired;

    @Column(name = "is_amount_editable")
    private boolean isAmountEditable;

    @Column(name = "is_bill_no_required")
    private boolean isBillNoRequired;

    @Column(name = "is_bill_date_required")
    private boolean isBillDateRequired;

    @Column(name = "is_vehicle_no_required")
    private boolean isVehicleNoRequired;

}
