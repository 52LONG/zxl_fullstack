package services;

import dao.PropertymanagerDao;
import dao.PropertymanagerFileDao;
import dao.RepairListDao;
import model.Propertymanager;
import model.PropertymanagerFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertymanagerService {

    @Autowired
    private RepairListDao repairListDao;

    @Autowired
    private PropertymanagerDao propertymanagerDao;

    @Autowired
    private PropertymanagerFileDao propertymanagerFileDao;

    public Propertymanager login(String id,String password){
        Propertymanager propertymanager = propertymanagerDao.login(id, password);
        return propertymanager;
    }

    public Boolean InsertFropertymanagerFile(PropertymanagerFile propertymanagerFile){
        int insert = propertymanagerFileDao.insert(propertymanagerFile);
        if (insert>0){
            return true;
        }else {
            return false;
        }
    }

    public List<PropertymanagerFile> SelectAll(){
        List<PropertymanagerFile> selectall = propertymanagerFileDao.selectall();
        return selectall;
    }

    public Boolean torepair(String id){
        Boolean update = repairListDao.update(id);
        return update;
    }

}
