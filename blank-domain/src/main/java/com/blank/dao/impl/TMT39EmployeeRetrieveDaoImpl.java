package com.blank.dao.impl;

import com.blank.dao.TMT39EmployeeRetrieveDao;
import com.blank.entity.Employee;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.*;
import org.springframework.stereotype.Repository;

@Repository
public class TMT39EmployeeRetrieveDaoImpl implements TMT39EmployeeRetrieveDao{

	@PersistenceContext
    private EntityManager em;

	@Override
    public Employee findByEinAndSysOwnerCd(String ein, String sysOwnerCd) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Employee> cq = cb.createQuery(Employee.class);
        Root<Employee> root = cq.from(Employee.class);

        cq.select(root).where(
            cb.and(
                cb.equal(root.get("compId").get("ein"), ein),
                cb.equal(root.get("compId").get("sysOwnerCd"), sysOwnerCd)
            )
        );

        // get single result or null without Optional
        return em.createQuery(cq).getResultStream().findFirst().orElse(null);
    }
}