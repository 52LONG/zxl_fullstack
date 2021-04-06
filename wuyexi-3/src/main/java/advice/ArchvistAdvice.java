package advice;

import dao.ArchvistFileDao;
import model.Archvist;
import model.ArchvistFile;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import services.ArchvistFileService;
import utils.UserUtil;

import java.sql.Timestamp;
import java.util.Date;

@Aspect
public class ArchvistAdvice {

   @Autowired
   private ArchvistFileService archvistFileService;

    //切点（过滤条件）
    @Pointcut("execution(* services.ArchvistService.add*(..))")
    public void around_add(){};

    @Pointcut("execution(* services.ArchvistService.select*(..))")
    public void around_select(){};

    @Pointcut("execution(* services.ArchvistService.delete*(..))")
    public void around_delete(){};

    @Pointcut("execution(* services.ArchvistService.update*(..))")
    public void around_update(){};

    @Pointcut("execution(* controller.ArchvistController.archvistlogin(..))")
    public void login(){};

    @Pointcut("execution(* controller.ArchvistController.exit(..))")
    public void exit(){};


    //advice

    @AfterReturning("login()")
    public void archvist_login(JoinPoint joinPoint){
        Archvist archvist = UserUtil.getsession_archvist();
        String[] s={" "};
        if (archvist!=null) {
            archvistFileService.InsertFile(archvist, s, 5, "档案管理员登录：");
        }
    }

    @Before("exit()")
    public void archvist_exit(){
        Archvist archvist = UserUtil.getsession_archvist();
        String[] s={" "};
        if (archvist!=null) {
            archvistFileService.InsertFile(archvist, s, 6, "档案管理员退出登录：");
        }
    }


    @Around("around_add()")
    public Object add(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Archvist archvist = UserUtil.getsession_archvist();
        Boolean validarchvist = UserUtil.validarchvist(archvist);
        if (!validarchvist){
            UserUtil.getResponse().sendRedirect("../archvist_login.jsp");
        }

        Object proceed = proceedingJoinPoint.proceed();

        if ((Boolean) proceed) {
            Object[] args = proceedingJoinPoint.getArgs();

            archvistFileService.InsertFile(archvist, args, 1, "添加数据 ");
        }
        return proceed;
    }

    @Around("around_select()")
    public Object select(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Archvist archvist = UserUtil.getsession_archvist();
        Boolean validarchvist = UserUtil.validarchvist(archvist);
        if (!validarchvist){
            UserUtil.getResponse().sendRedirect("../archvist_login.jsp");
        }

        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界

        Object[] args = proceedingJoinPoint.getArgs();

        if (proceed!=null) {
            archvistFileService.InsertFile(archvist, args, 4, "查询数据 ");
        }

        return proceed;
    }

    @Around("around_delete()")
    public Object delete(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Archvist archvist = UserUtil.getsession_archvist();
        Boolean validarchvist = UserUtil.validarchvist(archvist);
        if (!validarchvist){
            UserUtil.getResponse().sendRedirect("../archvist_login.jsp");
        }

        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界

        if ((Boolean)proceed) {
            Object[] args = proceedingJoinPoint.getArgs();

            archvistFileService.InsertFile(archvist, args, 2, "删除数据 ");
        }

        return proceed;
    }


    @Around("around_update()")
    public Object update(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Archvist archvist = UserUtil.getsession_archvist();
        Boolean validarchvist = UserUtil.validarchvist(archvist);
        if (!validarchvist){
            UserUtil.getResponse().sendRedirect("../archvist_login.jsp");
        }

        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界

        if ((Boolean)proceed) {
            Object[] args = proceedingJoinPoint.getArgs();

            archvistFileService.InsertFile(archvist, args, 3, "更新数据 ");
        }

        return proceed;
    }
}
