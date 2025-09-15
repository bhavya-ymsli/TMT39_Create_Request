package com.blank.dao.impl;

import com.blank.dao.TMT39CareerRetrieveDao;
import com.blank.entity.Career;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import jakarta.persistence.criteria.Predicate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TMT39CareerRetrieveDaoImpl implements TMT39CareerRetrieveDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Career findByEinAndSysOwnerCd(String ein, String sysOwnerCd, String effectiveFrom) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Career> cq = cb.createQuery(Career.class);
        Root<Career> root = cq.from(Career.class);

        Predicate einPredicate = cb.equal(root.get("id").get("ein"), ein);
        Predicate sysOwnerPredicate = cb.equal(root.get("id").get("sysOwnerCd"), sysOwnerCd);
        Predicate effectiveFromPredicate = cb.equal(root.get("id").get("effectiveFrom"), effectiveFrom);

        cq.select(root).where(cb.and(einPredicate, sysOwnerPredicate, effectiveFromPredicate));

        return em.createQuery(cq).getResultStream().findFirst().orElse(null);
    }
}
