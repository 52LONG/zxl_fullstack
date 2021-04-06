package dao;

import model.Building;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BuildingDao {
    public Building SelectOne(@Param("building") String building);

    public List<Building> SelectAll();

    public Boolean InsertOne(Building building);

    public Boolean DeleteOne(@Param("itemusage") String building);

    public Boolean UpdateOne(Building building);

    public List<Building> SelectByItemcode(@Param("itemcode") String itemcode);

    public List<Building> SelectByItemRegion(@Param("rc")String rc,@Param("ic")String ic);
}