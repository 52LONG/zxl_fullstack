package dao;


import model.SuiteUsage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuiteUsageDao {
    public SuiteUsage SelectOne(@Param("suiteusage") String suiteusage);

    public Boolean InsertOne(SuiteUsage suiteusage);

    public Boolean DeleteOne(@Param("suite") String suiteusage);

    public Boolean UpdateOne(SuiteUsage suiteusage);
}