package dao;

import model.RoomAccess;

public interface RoomAccessDao {
    int deleteByPrimaryKey(String roomCode);

    int insert(RoomAccess record);

    int insertSelective(RoomAccess record);

    RoomAccess selectByPrimaryKey(String roomCode);

    int updateByPrimaryKeySelective(RoomAccess record);

    int updateByPrimaryKey(RoomAccess record);
}