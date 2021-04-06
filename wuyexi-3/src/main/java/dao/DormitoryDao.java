package dao;

import model.Dormitory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DormitoryDao {
    Boolean deleteByPrimaryKey(String dormitoryCode);

    Boolean insert(Dormitory record);

    Boolean insertSelective(Dormitory record);

    Dormitory selectByPrimaryKey(String dormitoryCode);

    Boolean updateByPrimaryKeySelective(Dormitory record);

    Boolean updateByPrimaryKey(Dormitory record);

    Dormitory selectByUserId(@Param("userid") String userid);

    List<Dormitory> selectall();
}