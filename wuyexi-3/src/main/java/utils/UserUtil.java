package utils;

import model.Archvist;
import model.Departmenter;
import model.Employee;
import model.Propertymanager;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserUtil {

    public static HttpServletRequest getRequest(){
        ServletRequestAttributes attributes= (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attributes.getRequest();
    }

    public static HttpServletResponse getResponse(){
        ServletRequestAttributes attributes= (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        return attributes.getResponse();
    }

    public static HttpSession getSession(){
        ServletRequestAttributes attributes= (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpServletRequest request = UserUtil.getRequest();
        return request.getSession();
    }



    public static Archvist getsession_archvist(){
        return (Archvist) UserUtil.getSession().getAttribute("archvist");
    }

    public static Departmenter getsession_departmenter(){
        return  (Departmenter) UserUtil.getSession().getAttribute("departmenter");
    }

    public static Propertymanager getsession_propertymanager(){
        return  (Propertymanager) UserUtil.getSession().getAttribute("propertymanager");
    }

    public static Employee getsession_employee(){
        return (Employee) UserUtil.getSession().getAttribute("user");
    }


    public static Boolean validemployee(Employee employee){
        if (employee!=null){
        return true;
        }else {
            return false;
        }
    }

    public static Boolean validarchvist(Archvist archvist){
        if (archvist!=null){
            return true;
        }else
        {
            return false;
        }
    }

    public static Boolean validdepartmenter(Departmenter departmenter){
        if (departmenter!=null){
            return true;
        }else
        {
            return false;
        }
    }

    public static Boolean validpropertymanager(Propertymanager propertymanager){
        if (propertymanager!=null){
            return true;
        }else
        {
            return false;
        }
    }
}
