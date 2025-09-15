package com.blank.dao;

import com.blank.service.tmt.tmt39.model.CodeMasterModels.TMT39CodeMasterResultModel;

public interface TMT39CodeMasterRetrieveDao {
    TMT39CodeMasterResultModel getCodeMasterData(String codeId);
}