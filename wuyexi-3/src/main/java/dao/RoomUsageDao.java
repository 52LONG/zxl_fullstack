package dao;

import model.RoomUsage;

public interface RoomUsageDao {
    Boolean deleteByPrimaryKey(String roomCode);

    Boolean insert(RoomUsage record);

    Boolean insertSelective(RoomUsage record);

    RoomUsage selectByPrimaryKey(String roomCode);

    Boolean updateByPrimaryKeySelective(RoomUsage record);

    Boolean updateByPrimaryKey(RoomUsage record);
}