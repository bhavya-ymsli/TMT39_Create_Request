package com.blank.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.springframework.stereotype.Repository;
import jakarta.persistence.criteria.Predicate;
import com.blank.dao.TMT39OrganizationRetrieveDao;
import com.blank.entity.Organization;

@Repository
public class TMT39OrganizationRetrieveDaoImpl implements TMT39OrganizationRetrieveDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Organization findByOrganizationCd(String organizationCd) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Organization> cq = cb.createQuery(Organization.class);
        Root<Organization> root = cq.from(Organization.class);

        // Create the predicate condition
        Predicate predicate = cb.equal(root.get("organizationCd"), organizationCd);

        // Apply predicate to where clause
        cq.select(root).where(predicate);

        // Execute the query and return first result or null
        return em.createQuery(cq)
                 .getResultStream()
                 .findFirst()
                 .orElse(null);
    }
}