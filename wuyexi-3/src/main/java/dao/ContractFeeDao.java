package dao;

import model.ContractFee;

public interface ContractFeeDao {
    Boolean deleteByPrimaryKey(String contractno);

    Boolean insert(ContractFee record);

    Boolean insertSelective(ContractFee record);

    ContractFee selectByPrimaryKey(String contractno);

    Boolean updateByPrimaryKeySelective(ContractFee record);

    Boolean updateByPrimaryKey(ContractFee record);
}