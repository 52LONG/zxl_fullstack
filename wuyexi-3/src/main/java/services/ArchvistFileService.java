package services;

import dao.ArchvistFileDao;
import model.Archvist;
import model.ArchvistFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;

@Service
public class ArchvistFileService {
    @Autowired
    private ArchvistFile archvistFile;

    @Autowired
    private ArchvistFileDao archvistFileDao;

    public void InsertFile(Archvist archvist, Object[] args,int type,String information){
        archvistFile.setId(archvist.getId());
        archvistFile.setName(archvist.getName());
        archvistFile.setEmid(archvist.getEmid());
        archvistFile.setEmdepartment(archvist.getEmdartment());
        archvistFile.setType(type);
        Timestamp timestamp=new Timestamp(new Date().getTime());
        archvistFile.setTime(timestamp);

        for (Object arg : args) {
            information=information+arg;
        }
        archvistFile.setInformation(information);

        archvistFileDao.InsertOne(archvistFile);

    }
}
