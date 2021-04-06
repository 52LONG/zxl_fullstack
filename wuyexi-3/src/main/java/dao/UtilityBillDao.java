package dao;

import model.UtilityBill;

public interface UtilityBillDao {

    Boolean insert(UtilityBill record);

    int insertSelective(UtilityBill record);

    UtilityBill selectByPrimaryKey(String suiteCode);

    int updateByPrimaryKeySelective(UtilityBill record);

    int updateByPrimaryKey(UtilityBill record);
}