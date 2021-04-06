package dao;

import model.ArchvistFile;

import java.util.List;

public interface ArchvistFileDao {

    public Boolean InsertOne(ArchvistFile archvistFile);

    public List<ArchvistFile> searchAll();

}