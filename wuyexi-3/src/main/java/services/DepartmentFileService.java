package services;

import dao.DepartmenterFileDao;
import model.Archvist;
import model.Department;
import model.Departmenter;
import model.DepartmenterFile;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;

import javax.xml.crypto.Data;
import java.sql.Timestamp;
import java.util.Date;

public class DepartmentFileService {

    @Autowired
    private DepartmenterFile departmenterFile;

    @Autowired
    private DepartmenterFileDao departmenterFileDao;

    public void InsertFile(Departmenter departmenter, Object[] args, int type, String information){
        departmenterFile.setId(departmenter.getId());
        departmenterFile.setEmid(departmenter.getEmid());
        departmenterFile.setName(departmenter.getName());
        departmenterFile.setEmdepartment(departmenter.getEmdepartment());
        departmenterFile.setType(type);
        Timestamp timestamp=new Timestamp(new Date().getTime());
        departmenterFile.setTime(timestamp);
        for (Object arg : args) {
            information+=arg;
        }
        departmenterFile.setInformation(information);
        departmenterFileDao.InsertOne(departmenterFile);
    }

}
