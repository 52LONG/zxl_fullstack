package advice;

import dao.DepartmenterFileDao;
import model.Departmenter;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import services.DepartmentFileService;
import services.DepartmenterService;
import utils.UserUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Aspect
public class DepartmenterAdvice {

    @Autowired
    private DepartmentFileService departmentFileService;


    //切点（过滤条件）
    @Pointcut("execution(* services.DepartmenterService.add*(..))")
    public void around_add(){};

    @Pointcut("execution(* services.DepartmenterService.select*(..))")
    public void around_select(){};

    @Pointcut("execution(* services.DepartmenterService.delete*(..))")
    public void around_delete(){};

    @Pointcut("execution(* services.DepartmenterService.update*(..))")
    public void around_update(){};

    @Pointcut("execution(* controller.DepartmenterController.departmenterlogin(..))")
    public void login(){};

    @Pointcut("execution(* controller.DepartmenterController.exit(..))")
    public void exit(){};


    //advice
    @AfterReturning("login()")
    public void departmenter_login(JoinPoint joinPoint){
        Departmenter departmenter = UserUtil.getsession_departmenter();
        String[] s={""};
        if (departmenter!=null) {
            departmentFileService.InsertFile(departmenter, s, 5, "部门管理员登录 ");
        }
    }

    @Before("exit()")
    public void department_exit(){
        Departmenter departmenter = UserUtil.getsession_departmenter();
        if (departmenter!=null) {
            String[] s={""};
            departmentFileService.InsertFile(departmenter, s, 6, "部门管理员退出登录 ");
        }
    }


    @Around("around_add()")
    public Object add(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Departmenter departmenter = UserUtil.getsession_departmenter();
        Boolean validdepartmenter = UserUtil.validdepartmenter(departmenter);

            if (!validdepartmenter){
                UserUtil.getResponse().sendRedirect("../departmenter_login.jsp");
            }

        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界


        if ((Boolean) proceed){
            Object[] args = proceedingJoinPoint.getArgs();
            departmentFileService.InsertFile(departmenter,args,1,"添加数据 ");
        }

        return proceed;
    }

    @Around("around_select()")
    public Object select(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Departmenter departmenter = UserUtil.getsession_departmenter();
        Boolean validdepartmenter = UserUtil.validdepartmenter(departmenter);
                if (!validdepartmenter){
                    UserUtil.getResponse().sendRedirect("../departmenter_login.jsp");
                }
        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界


        if (proceed!=null) {
            Object[] args = proceedingJoinPoint.getArgs();
            departmentFileService.InsertFile(departmenter, args, 4, "查询数据");
        }

        return proceed;
    }

    @Around("around_delete()")
    public Object delete(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        Departmenter departmenter = UserUtil.getsession_departmenter();
        Boolean validdepartmenter = UserUtil.validdepartmenter(departmenter);
        if (!validdepartmenter){
            UserUtil.getResponse().sendRedirect("../departmenter_login.jsp");
        }
        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界


        if ((Boolean) proceed) {
            Object[] args = proceedingJoinPoint.getArgs();
            departmentFileService.InsertFile(departmenter, args, 2, "删除数据");
        }
        return proceed;
    }

    @Around("around_update()")
    public Object update(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {

        Departmenter departmenter = UserUtil.getsession_departmenter();
        Boolean validdepartmenter = UserUtil.validdepartmenter(departmenter);
        if (!validdepartmenter){
            UserUtil.getResponse().sendRedirect("../departmenter_login.jsp");
        }


        Object proceed = proceedingJoinPoint.proceed();//////方法的前后分界


        if ((Boolean) proceed) {
            Object[] args = proceedingJoinPoint.getArgs();
            departmentFileService.InsertFile(departmenter, args, 3, "更新数据");
        }
        return proceed;
    }
}
