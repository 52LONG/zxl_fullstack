package dao;

import model.RepairList;
import org.apache.ibatis.annotations.Param;

public interface RepairListDao {
    Boolean insert(RepairList record);

    Boolean insertSelective(RepairList record);

    Boolean update(@Param("id") String id);
}