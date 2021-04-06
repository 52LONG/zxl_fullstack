package dao;

import model.BunkUsage;

public interface BunkUsageDao {
    Boolean deleteByPrimaryKey(String bunkCode);

    Boolean insert(BunkUsage record);

    Boolean insertSelective(BunkUsage record);

    BunkUsage selectByPrimaryKey(String bunkCode);

    Boolean updateByPrimaryKeySelective(BunkUsage record);

    Boolean updateByPrimaryKey(BunkUsage record);
}