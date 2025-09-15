package com.blank.service.tmt.tmt39.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blank.dao.TMT39CodeMasterRetrieveDao;
import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultModel;
import com.blank.service.tmt.tmt39.service.TMT39CodeMasterService;

@Service
public class TMT39CodeMasterServiceImpl implements TMT39CodeMasterService {

    @Autowired
    private TMT39CodeMasterRetrieveDao tmt39CodeMasterRetrieveDao;

    @Override
    public TMT39CodeMasterResultModel retrieveCodeMasterData(String codeId) {
        return tmt39CodeMasterRetrieveDao.getCodeMasterData(codeId);
    }
}