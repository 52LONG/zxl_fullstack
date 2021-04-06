package dao;

import model.ChargeRates;

public interface ChargeRatesDao {
    Boolean deleteByPrimaryKey(String chargeCode);

    Boolean insert(ChargeRates record);

    Boolean insertSelective(ChargeRates record);

    ChargeRates selectByPrimaryKey(String chargeCode);

    Boolean updateByPrimaryKeySelective(ChargeRates record);

    Boolean updateByPrimaryKey(ChargeRates record);
}