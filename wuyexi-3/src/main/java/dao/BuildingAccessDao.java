package dao;



import model.BuildingAccess;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BuildingAccessDao {

    public BuildingAccess SelectOne(@Param("buildingaccess") String buildingaccess);

    public List<BuildingAccess> SelectAll();

    public Boolean InsertOne(BuildingAccess buildingaccess);

    public Boolean DeleteOne(@Param("buildingaccess") String buildingaccess);

    public Boolean UpdateOne(BuildingAccess buildingaccess);
}