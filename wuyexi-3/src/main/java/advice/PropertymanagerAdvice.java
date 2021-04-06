package advice;

import dao.PropertymanagerFileDao;
import model.Propertymanager;
import model.PropertymanagerFile;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import utils.UserUtil;

import java.sql.Timestamp;
import java.util.Date;

@Aspect
public class PropertymanagerAdvice {

    @Autowired
    private PropertymanagerFile propertymanagerFile;

    @Autowired
    private PropertymanagerFileDao propertymanagerFileDao;

    @Pointcut("execution(* controller.PropertymanagerController.login(..))")
    public void login(){};

    @Pointcut("execution(* controller.PropertymanagerController.exit(..))")
    public void exit(){};


    @AfterReturning("login()")
    public void proertymanagerlogin(JoinPoint joinPoint){
        Propertymanager propertymanager = UserUtil.getsession_propertymanager();
        if (propertymanager != null) {

            propertymanagerFile.setId(propertymanager.getId());
            propertymanagerFile.setName(propertymanager.getName());
            propertymanagerFile.setPropertymcCode(propertymanager.getPropertymcCode());
            propertymanagerFile.setPropertymcName(propertymanager.getPropertymcName());
            propertymanagerFile.setItemCode(propertymanager.getItemCode());
            propertymanagerFile.setItemName(propertymanager.getItemName());
            propertymanagerFile.setInformation("物业管理员登录");
            propertymanagerFile.setTime(new Timestamp(new Date().getTime()));
            int insert = propertymanagerFileDao.insert(propertymanagerFile);

        }

    }

    @Before("exit()")
    public void proertymanagerexit(JoinPoint joinPoint){
        Propertymanager propertymanager = UserUtil.getsession_propertymanager();
        if (propertymanager!=null) {
            propertymanagerFile.setId(propertymanager.getId());
            propertymanagerFile.setName(propertymanager.getName());
            propertymanagerFile.setPropertymcCode(propertymanager.getPropertymcCode());
            propertymanagerFile.setPropertymcName(propertymanager.getPropertymcName());
            propertymanagerFile.setItemCode(propertymanager.getItemCode());
            propertymanagerFile.setItemName(propertymanager.getItemName());
            propertymanagerFile.setInformation("物业管理员退出");
            propertymanagerFile.setTime(new Timestamp(new Date().getTime()));
            int insert = propertymanagerFileDao.insert(propertymanagerFile);
           
        }
    }
}
