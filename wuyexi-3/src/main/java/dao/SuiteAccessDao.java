package dao;

import model.SuiteAccess;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuiteAccessDao {

    public SuiteAccess SelectOne(@Param("suite") String suiteaccess);

    public Boolean InsertOne(SuiteAccess suiteaccess);

    public Boolean DeleteOne(@Param("suite") String suiteaccess);

    public Boolean UpdateOne(SuiteAccess suiteaccess);

}