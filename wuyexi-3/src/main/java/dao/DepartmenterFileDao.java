package dao;


import model.DepartmenterFile;

import java.util.List;

public interface DepartmenterFileDao {
    public Boolean InsertOne(DepartmenterFile departmenterFile);

    public List<DepartmenterFile> searchAll();
}