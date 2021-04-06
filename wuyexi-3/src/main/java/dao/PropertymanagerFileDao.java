package dao;

import model.PropertymanagerFile;

import java.util.List;

public interface PropertymanagerFileDao {

    public int insert(PropertymanagerFile record);

    public PropertymanagerFile selectByPrimaryKey(String id);

    public List<PropertymanagerFile> selectall();
}