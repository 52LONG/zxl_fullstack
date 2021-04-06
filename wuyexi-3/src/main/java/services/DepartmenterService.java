package services;

import dao.*;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DepartmenterService {

    @Autowired
    private DepartmenterDao departmenterDao;

    @Autowired
    private DepartmentDao departmentDao;

    @Autowired
    private ArchvistFileDao archvistFileDao;

    @Autowired
    private EmployeeDao employeeDao;

    @Autowired
    private ArchvistDao archvistDao;

    @Autowired
    private DepartmenterFileDao departmenterFileDao;

    @Autowired
    private DormitoryDao dormitoryDao;


    public Departmenter login(String id,String password){
        Departmenter departmenter = departmenterDao.login(id, password);
        return departmenter;
    }


    public Boolean adddepartment(Department department){
        Boolean aBoolean = departmentDao.InsertOne(department);
        return aBoolean;
    }

    public Boolean deletedepartment(String department){
        Boolean aBoolean = departmentDao.DeleteOne(department);
        return aBoolean;
    }

    public Boolean updatedepartment(String department_code,String department_newname){
        Boolean aBoolean = departmentDao.UpdateOne(department_code, department_newname);
        return aBoolean;
    }

    public Department selectdepartment(String department){
        Department department1 = departmentDao.SelectOne(department);
        return department1;
    }

    public List<Department> departmentallselect(){
        List<Department> departments = departmentDao.SelectAll();
        return departments;
    }

    public List<ArchvistFile> archvistFiles(){
        List<ArchvistFile> archvistFiles = archvistFileDao.searchAll();
        return archvistFiles;
    }

    public List<DepartmenterFile> departmenterFiles(){
        List<DepartmenterFile> departmenterFiles = departmenterFileDao.searchAll();
        return departmenterFiles;
    }


    public Boolean addemployee(Employee employee){
        Boolean aBoolean = employeeDao.InsertOne(employee);
        return aBoolean;
    }

    public Boolean deleteemployee(String employee){
        Boolean aBoolean = employeeDao.DeleteOne(employee);
        return aBoolean;
    }

    public Boolean updateemployee(Employee employee){
        Boolean aBoolean = employeeDao.UpdateOne(employee);
        return aBoolean;
    }

    public Employee selectemployee(String employee){
        Employee employee1 = employeeDao.SelectOne(employee);
        return employee1;
    }


    public Boolean addarchvist(Archvist archvist){
        Boolean aBoolean = archvistDao.InsertOne(archvist);
        return aBoolean;
    }

    public Boolean deletearchvist(String archvist){
        Boolean aBoolean = archvistDao.DeleteOne(archvist);
        return aBoolean;
    }

    public Boolean updatearchvist(Archvist archvist){
        Boolean aBoolean = archvistDao.UpdateOne(archvist);
        return aBoolean;
    }

    public Archvist selectarchvist(String archvist){
        Archvist archvist1 = archvistDao.SelectOne(archvist);
        return archvist1;
    }

    public Dormitory getdormitory(){
        List<Dormitory> selectall = dormitoryDao.selectall();
        return selectall.get(0);
    }

    public Boolean delectdormitory(String dormitorycode){
        Boolean aBoolean = dormitoryDao.deleteByPrimaryKey(dormitorycode);
        return aBoolean;
    }

}
