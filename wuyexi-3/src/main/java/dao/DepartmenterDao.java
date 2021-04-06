package dao;

import model.Departmenter;

public interface DepartmenterDao {
    public Departmenter login(String id,String password);
}