package dao;

import model.Bill;

public interface BillDao {
    Boolean deleteByPrimaryKey(String billCode);

    Boolean insert(Bill record);

    Boolean insertSelective(Bill record);

    Bill selectByPrimaryKey(String billCode);

    Boolean updateByPrimaryKeySelective(Bill record);

    Boolean updateByPrimaryKey(Bill record);
}