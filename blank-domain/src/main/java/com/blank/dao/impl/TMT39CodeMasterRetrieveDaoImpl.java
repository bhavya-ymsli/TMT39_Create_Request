package com.blank.dao.impl;

import com.blank.dao.TMT39CodeMasterRetrieveDao;
import com.blank.entity.CodeMaster;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultDetailModel;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultModel;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TMT39CodeMasterRetrieveDaoImpl implements TMT39CodeMasterRetrieveDao {

	@PersistenceContext
    private EntityManager em;

    @Override
    public TMT39CodeMasterResultModel getCodeMasterData(String codeId) {
        CriteriaBuilder qb = em.getCriteriaBuilder();
        CriteriaQuery<CodeMaster> query = qb.createQuery(CodeMaster.class);
        Root<CodeMaster> codeMaster = query.from(CodeMaster.class);

        Predicate where = qb.conjunction();
        if (codeId != null && !codeId.isEmpty()) {
            where = qb.and(where, qb.equal(codeMaster.get("compId").get("codeId"), codeId));
        } else {
            return new TMT39CodeMasterResultModel();
        }

        query.where(where);
        query.orderBy(qb.asc(codeMaster.get("compId").get("codeKey")));
        
        List<CodeMaster> codeMasterList = em.createQuery(query).getResultList();
        
        TMT39CodeMasterResultModel resultModel = new TMT39CodeMasterResultModel();
        resultModel.setCodeMasterResultDetailModelList(
            codeMasterList.stream()
                .map(this::convertToResultDetail)
                .collect(java.util.stream.Collectors.toList())
        );
        
        return resultModel;
    }
    
    private TMT39CodeMasterResultDetailModel convertToResultDetail(CodeMaster codeMaster) {
        TMT39CodeMasterResultDetailModel detailModel = new TMT39CodeMasterResultDetailModel();
        detailModel.setCodeKey(codeMaster.getCompId().getCodeKey());
        detailModel.setCodeData(codeMaster.getCodeData());
        return detailModel;
    }
}