package com.blank.dao.impl;

import org.springframework.stereotype.Repository;

import com.blank.dao.TMT39PolicyMasterRetrieveDao;
import com.blank.entity.PolicyMaster;
import com.blank.service.tmt.tmt39.model.PolicyMasterModels.TMT39PolicyMasterRequestModel;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.*;

@Repository
public class TMT39PolicyMasterRetrieveDaoImpl implements TMT39PolicyMasterRetrieveDao {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public PolicyMaster getEditableFieldDetails(TMT39PolicyMasterRequestModel requestModel) {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<PolicyMaster> cq = cb.createQuery(PolicyMaster.class);
        Root<PolicyMaster> root = cq.from(PolicyMaster.class);

        // Reference fields from the embedded key using .get("compId")
        Predicate predicate = cb.and(
            cb.equal(root.get("compId").get("sysOwnerCd"), requestModel.getSysOwnerCd()),
            cb.equal(root.get("compId").get("companyCd"), requestModel.getCompanyCd()),
            cb.equal(root.get("compId").get("gradeLevel"), requestModel.getGradeLevel()),
            cb.equal(root.get("compId").get("grade"), requestModel.getGrade()),
            cb.equal(root.get("compId").get("travelClass"), requestModel.getTravelClass()),
            cb.equal(root.get("compId").get("effectiveFrom"), requestModel.getEffectiveFrom())
        );

        cq.select(root).where(predicate);

        return entityManager.createQuery(cq).getSingleResult();
    }
}
