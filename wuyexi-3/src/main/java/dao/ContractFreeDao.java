package dao;

import model.ContractFree;

public interface ContractFreeDao {
    Boolean deleteByPrimaryKey(String contractno);

    Boolean insert(ContractFree record);

    Boolean insertSelective(ContractFree record);

    ContractFree selectByPrimaryKey(String contractno);

    Boolean updateByPrimaryKeySelective(ContractFree record);

    Boolean updateByPrimaryKey(ContractFree record);
}