package dao;

import model.Department;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DepartmentDao {

    public Department SelectOne(@Param("department") String department);

    public List<Department> SelectAll();

    public Boolean InsertOne(Department department);

    public Boolean DeleteOne(@Param("department") String department);

    public Boolean UpdateOne(@Param("departmentName") String departmentcode,@Param("departmentCode") String departmentname);

}
