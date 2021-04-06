package dao;

import model.Contract;

public interface ContractDao {
    Boolean deleteByPrimaryKey(String contractno);

    Boolean insert(Contract record);

    Boolean insertSelective(Contract record);

    Contract selectByPrimaryKey(String contractno);

    Boolean updateByPrimaryKeySelective(Contract record);

    Boolean updateByPrimaryKey(Contract record);
}