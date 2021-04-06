package advice;

import dao.UserFileDao;
import model.Employee;
import model.UserFile;
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
public class UserAdvice {

    @Autowired
    private UserFile userFile;

    @Autowired
    private UserFileDao userFileDao;

    @Pointcut("execution(* controller.UserController.userlogin(..))")
    public void userlogin(){};

    @Pointcut("execution(* controller.UserController.exit(..))")
    public void userexit(){};


    @AfterReturning("userlogin()")
    public void login(JoinPoint joinPoint){

        Employee employee = UserUtil.getsession_employee();
        if (employee!=null) {
            userFile.setId(employee.getId());
            userFile.setName(employee.getName());
            userFile.setEmid(employee.getEmid());
            userFile.setEmdepartment(employee.getEmdepartment());
            userFile.setInformation("用户登录");
            userFile.setTime(new Timestamp(new Date().getTime()));

            int insert = userFileDao.insert(userFile);

        }
    }

    @Before("userexit()")
    public void exit(JoinPoint joinPoint){
        Employee employee = UserUtil.getsession_employee();
        if (employee!=null) {
            userFile.setId(employee.getId());
            userFile.setName(employee.getName());
            userFile.setEmid(employee.getEmid());
            userFile.setEmdepartment(employee.getEmdepartment());
            userFile.setInformation("用户退出");
            userFile.setTime(new Timestamp(new Date().getTime()));
            int insert = userFileDao.insert(userFile);

        }
    }
}
