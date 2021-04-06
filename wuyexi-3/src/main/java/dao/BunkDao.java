package dao;

import model.Bunk;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public interface BunkDao {
    Boolean deleteByPrimaryKey(String bunkCode);

    Boolean insert(Bunk record);

    Boolean insertSelective(Bunk record);

    Bunk selectByPrimaryKey(String bunkCode);

    Boolean updateByPrimaryKeySelective(Bunk record);

    Boolean updateByPrimaryKey(Bunk record);

    List<Bunk> bunkselectbyroom(@Param("roomcode")String room);

}