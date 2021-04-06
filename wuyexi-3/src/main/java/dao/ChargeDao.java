package dao;

import model.Charge;

public interface ChargeDao {
    Boolean deleteByPrimaryKey(String chargeCode);

    Boolean insert(Charge record);

    Boolean insertSelective(Charge record);

    Charge selectByPrimaryKey(String chargeCode);

    Boolean updateByPrimaryKeySelective(Charge record);

    Boolean updateByPrimaryKey(Charge record);
}