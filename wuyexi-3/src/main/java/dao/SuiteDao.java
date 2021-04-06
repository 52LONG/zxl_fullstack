package dao;

import model.Suite;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuiteDao {
    public Suite SelectOne(@Param("suite") String suite);

    public List<Suite> SelectAll();

    public Boolean InsertOne(Suite suite);

    public Boolean DeleteOne(@Param("suite") String suite);

    public Boolean UpdateOne(Suite suite);

    public List<Suite> SelectByBuilding(@Param("buildingcode")String buildingcode);

    public List<Suite> SelectBybuildingitemregion(@Param("p1")String bc,@Param("p2")String ic,@Param("p3")String rc);
}