package dao;
import model.BuildingUsage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BuildingUsageDao {

    public BuildingUsage SelectOne(@Param("buildingusage") String buildingusage);

    public List<BuildingUsage> SelectAll();

    public Boolean InsertOne(BuildingUsage buildingusage);

    public Boolean DeleteOne(@Param("buildingusage") String buildingusage);

    public Boolean UpdateOne(BuildingUsage buildingusage);
}
