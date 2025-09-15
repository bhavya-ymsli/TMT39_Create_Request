package com.blank.service.tmt.tmt39.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blank.dao.TMT39PolicyMasterRetrieveDao;
import com.blank.entity.PolicyMaster;
import com.blank.entity.PolicyMasterPK;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterResultModel;
import com.blank.service.tmt.tmt39.service.TMT39PolicyMasterService;

@Service
public class TMT39PolicyMasterServiceImpl implements TMT39PolicyMasterService{

	@Autowired
    private TMT39PolicyMasterRetrieveDao policyDao;

    public TMT39PolicyMasterResultModel getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel) {
        // Map request model to PolicyMasterPK (embedded id)
        PolicyMasterPK pk = new PolicyMasterPK();
        pk.setSysOwnerCd(requestModel.getSysOwnerCd());
        pk.setCompanyCd(requestModel.getCompanyCd());
        pk.setGradeLevel(requestModel.getGradeLevel());
        pk.setGrade(requestModel.getGrade());
        pk.setTravelClass(requestModel.getTravelClass());
        pk.setEffectiveFrom(requestModel.getEffectiveFrom());

        // Prepare entity to pass to DAO (only composite key required for lookup)
        PolicyMaster entityForDao = new PolicyMaster();
        entityForDao.setCompId(pk);

        // Retrieve data from DAO
        PolicyMaster resultEntity = policyDao.getEditableFieldDetails(requestModel);

        // Map resultEntity to result model
        TMT39PolicyMasterResultModel resultModel = new TMT39PolicyMasterResultModel();
        resultModel.setSysOwnerCd(resultEntity.getCompId().getSysOwnerCd());
        resultModel.setCompanyCd(resultEntity.getCompId().getCompanyCd());
        resultModel.setGradeLevel(resultEntity.getCompId().getGradeLevel());
        resultModel.setGrade(resultEntity.getCompId().getGrade());
        resultModel.setTravelClass(resultEntity.getCompId().getTravelClass());
        resultModel.setBillRequired(resultEntity.isBillRequired());
        resultModel.setAmountEditable(resultEntity.isAmountEditable());
        resultModel.setBillNoRequired(resultEntity.isBillNoRequired());
        resultModel.setBillDateRequired(resultEntity.isBillDateRequired());
        resultModel.setVehicleNumberRequired(resultEntity.isVehicleNoRequired());

        return resultModel;
    }
}