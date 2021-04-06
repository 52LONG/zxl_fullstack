package services;

import dao.*;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

  @Autowired
  private EmployeeDao employeeDao;

  @Autowired
  private UserFileDao userFileDao;

  @Autowired
  private DormitoryDao dormitoryDao;

  @Autowired
  private RepairListDao repairListDao;

  @Autowired
  private BunkDao bunkDao;

  @Autowired
  private BunkLesseeDao bunkLesseeDao;

  @Autowired
  private BunkUsageDao bunkUsageDao;

  public Employee login(String id,String password){
    Employee employee = employeeDao.login(id, password);
    return employee;
  }

  public Boolean InsertUserFile(UserFile userFile){
    int insert = userFileDao.insert(userFile);
    if (insert>0){
      return true;
    }else {
      return false;
    }
  }

  public Dormitory getbormitoryByUserId(String userid){
    Dormitory dormitory = dormitoryDao.selectByUserId(userid);
    return dormitory;
  }
  public List<UserFile> SelectUserFile(){
    List<UserFile> select = userFileDao.select();
    return select;
  }

  public Boolean CreatDormitory(Dormitory dormitory){
    Boolean insert = dormitoryDao.insert(dormitory);
    return insert;
  }

  public Employee selectuserByid(String id){
    Employee employee = employeeDao.SelectOne(id);
    return employee;
  }

  public Boolean addrepairlist(RepairList repairList){
    Boolean insert = repairListDao.insert(repairList);
    return insert;
  }

  public List<Bunk> bunkselectbyroomcode(String roomcode){
    List<Bunk> bunkselectbyroom = bunkDao.bunkselectbyroom(roomcode);
    return bunkselectbyroom;
  }

  public BunkLessee bunkLesseselectbybunkcode(String bunkcode){
    BunkLessee bunkLessee = bunkLesseeDao.selectByPrimaryKey(bunkcode);
    return bunkLessee;
  }

}
