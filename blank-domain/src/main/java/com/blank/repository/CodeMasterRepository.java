package com.blank.repository;

import com.blank.entity.CodeMaster;
import com.blank.entity.CodeMasterPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CodeMasterRepository extends JpaRepository<CodeMaster, CodeMasterPK> {
    
    // Find all records by codeId (part of composite key)
    @Query("SELECT cm FROM CodeMaster cm WHERE cm.compId.codeId = :codeId")
    List<CodeMaster> findByCodeId(@Param("codeId") String codeId);
    
    // Alternative method using method name query
    List<CodeMaster> findByCompIdCodeId(String codeId);
}