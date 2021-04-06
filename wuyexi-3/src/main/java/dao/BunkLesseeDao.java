package dao;

import model.BunkLessee;

public interface BunkLesseeDao {
    Boolean deleteByPrimaryKey(String bunkCode);

    Boolean insert(BunkLessee record);

    Boolean insertSelective(BunkLessee record);

    BunkLessee selectByPrimaryKey(String bunkCode);

    Boolean updateByPrimaryKeySelective(BunkLessee record);

    Boolean updateByPrimaryKey(BunkLessee record);
}