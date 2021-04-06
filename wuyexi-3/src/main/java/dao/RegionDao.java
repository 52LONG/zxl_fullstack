package dao;

import model.Region;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RegionDao {

    public Region SelectOne(@Param("region") String region);

    public List<Region> SelectAll();

    public Boolean InsertOne(Region region);

    public Boolean DeleteOne(@Param("region") String region);

    public Boolean UpdateOne(@Param("regioncode") String region_code,@Param("regionname") String region_name);
}