package dao;

import model.Employee;
import model.Item;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface EmployeeDao {

    public Employee login(String id,String password);


    public Employee SelectOne(@Param("employee") String employee);


    public List<Employee> SelectAll();

    public Boolean InsertOne(Employee employee);

    public Boolean DeleteOne(@Param("employee") String employee);

    public Boolean UpdateOne(Employee employee);

}