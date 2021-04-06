package dao;

import model.Propertymc;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PropertymcDao {
    public Propertymc SelectOne(@Param("propertymc") String propertymc);

    public List<Propertymc> SelectAll();

    public Boolean InsertOne(Propertymc propertymc);

    public Boolean DeleteOne(@Param("propertymc") String propertymc);

    public Boolean UpdateOne(@Param("propertymccode") String propertymc_code,@Param("propertymcname") String propertymc_name);
}

