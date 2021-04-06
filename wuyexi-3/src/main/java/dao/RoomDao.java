package dao;

import model.Room;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoomDao {

    Boolean deleteByPrimaryKey(String roomCode);

    Boolean insert(Room record);

    Boolean insertSelective(Room record);

    Room selectByPrimaryKey(String roomCode);

    Boolean updateByPrimaryKeySelective(Room record);

    Boolean updateByPrimaryKey(Room record);

    List<Room> selectby_suite_building_item_region(@Param("p1")String sc,@Param("p2")String bc,@Param("p3")String ic,@Param("p4")String rc);

    List<Room> selectbysuite(@Param("suitecode")String suitecode);
}