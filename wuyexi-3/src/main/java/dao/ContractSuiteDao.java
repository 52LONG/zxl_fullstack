package dao;

import model.ContractSuite;

public interface ContractSuiteDao {
    Boolean deleteByPrimaryKey(String contractno);

    Boolean insert(ContractSuite record);

    Boolean insertSelective(ContractSuite record);

    ContractSuite selectByPrimaryKey(String contractno);

    Boolean updateByPrimaryKeySelective(ContractSuite record);

    Boolean updateByPrimaryKey(ContractSuite record);
}