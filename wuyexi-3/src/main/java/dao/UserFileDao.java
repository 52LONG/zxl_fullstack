package dao;

import model.UserFile;

import java.util.List;

public interface UserFileDao {
    public int insert(UserFile record);

    public List<UserFile> select();
}