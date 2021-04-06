package controller;

import com.mysql.cj.exceptions.StreamingNotifiable;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.DepartmenterService;
import utils.TimeUtil;
import utils.Util;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/departmenter")
public class DepartmenterController {
    @Autowired
    private Departmenter departmenter;

    @Autowired
    private Department department;

    @Autowired
    private Employee employee;

    @Autowired
    private Archvist archvist;

    @Autowired
    private DepartmenterService departmenterService;

    @RequestMapping("/login")
    public String departmenterlogin(HttpSession session, String id, String password, String yzm, Model model) {
        departmenter = departmenterService.login(id, password);
        if (departmenter==null){
            model.addAttribute("msg","账号或密码错误");
            return "error";
        }else{
            if(!yzm.equals("5374")){
                model.addAttribute("msg","验证码错误");
                return "error";
            }
        }
        session.setAttribute("departmenter",departmenter);
        return "departmenter_index";
    }

    @RequestMapping("/exit")
    public void exit(HttpSession session, HttpServletResponse response) throws IOException {

        session.setAttribute("departmenter",null);
        session.invalidate();
        response.sendRedirect("../departmenter_login.jsp");
    }

    /////部门的操作////////////////////////////////////////////////////
    @RequestMapping("/adddepartment")
    public String AddDepartment(Model model,String code,String name){
        department.setDepartmentCode(code);
        department.setDepartmentName(name);
        Boolean adddepartment = departmenterService.adddepartment(department);
        if (!adddepartment){
            model.addAttribute("msg","添加失败");
            return "error";
        }else {
            return "departmenter_index";
        }
    }


    @RequestMapping("/deletedepartment")
    public String DeleteDepartment(String department ,Model model){
        Boolean deletedepartment = departmenterService.deletedepartment(department);
        if (!deletedepartment){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/updatedepartment")
    public String UpdateDepartment(String department_code,String department_newname ,Model model){
        Boolean updatedepartment = departmenterService.updatedepartment(department_code, department_newname);
        if (!updatedepartment){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/selectdepartment")
    @ResponseBody
    public List<Department> SelectDepartment(String department){
        List<Department> departmentList=new ArrayList<>();
        if (department.equals("") || department==null){
            departmentList=departmenterService.departmentallselect();
        }else{
            Department selectdepartment = departmenterService.selectdepartment(department);
            departmentList.add(selectdepartment);
        }
        return departmentList;
    }

/////////////////////////////////////////////////////////////////////////////



///////////档案管理员的操作信息///////////////////////////////////////////////////////
    @RequestMapping("/selectarchvistfile")
    @ResponseBody
    public List<ArchvistFile> SelectArchvistFile(){
        List<ArchvistFile> archvistFiles = departmenterService.archvistFiles();
        return archvistFiles;
    }

////////////////////////////////////////////////////////////////////////////////////





/////管理员的操作/////////////////////////////////////////////////////////////////////

    @RequestMapping("/selectdepatmenterfile")
    @ResponseBody
    public List<DepartmenterFile> SelectDepartment(){
        List<DepartmenterFile> departmenterFiles = departmenterService.departmenterFiles();
        return departmenterFiles;
    }

//////////////////////////////////////////////////////////////////////////////////////




///////人员的操作///////////////////////////////////////////////////////////////


    @RequestMapping("/addemployee")
    public String AddEmployee(Model model, String id, String name,String emdepartment,Integer worktime,String client) throws ParseException {
        employee.setId(id);
        employee.setName(name);
        employee.setPassword("123056");
        employee.setEmid("em"+Util.GetRandom_longsize());
        employee.setEmdepartment(emdepartment);
        employee.setIncumbency(worktime);
        employee.setClientCode(client);
        Boolean addemployee = departmenterService.addemployee(employee);
        if (!addemployee){
            model.addAttribute("msg","添加失败");
            return "error";
        }else {
            return "departmenter_index";
        }
    }


    @RequestMapping("/deleteemployee")
    public String DeleteEmployee(String employee ,Model model){
        Boolean deleteemployee = departmenterService.deleteemployee(employee);
        if (!deleteemployee){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/updateemployee")
    public String UpdateEmployee(Model model,String id,String psd,Integer worktime,String emid,String emdepartment) throws ParseException {
        employee.setId(id);
        employee.setPassword(psd);
        employee.setIncumbency(worktime);
        employee.setEmid(emid);
        employee.setEmdepartment(emdepartment);
        Boolean updateemployee = departmenterService.updateemployee(employee);
        if (!updateemployee){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/selectemployee")
    @ResponseBody
    public Employee SelectEmployee(String employee) {
        Employee selectemployee = departmenterService.selectemployee(employee);
        return selectemployee;
    }

/////////////////////////////////////////////////////////////////////////////


////档案管理员的管理////////////////////////////////////////////////////////////

    @RequestMapping("/addarchvist")
    public String AddArchvist(Model model,String id,String name,String emdepartment){
        archvist.setId(id);
        archvist.setName(name);
        archvist.setPassword("12369878");
        archvist.setEmid("em"+Util.GetRandom_longsize());
        archvist.setEmdartment(emdepartment);
        Boolean addarchvist = departmenterService.addarchvist(archvist);
        if (!addarchvist){
            model.addAttribute("msg","添加失败");
            return "error";
         }else {
            return "departmenter_index";
        }
    }


    @RequestMapping("/deletearchvist")
    public String DeleteArchvist(String id ,Model model){
        Boolean deletearchvist = departmenterService.deletearchvist(id);
        if (!deletearchvist){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/updatearchvist")
    public String UpdateArchvist(Model model,String id,String name,String psd,String emid,String emde)  {
        archvist.setId(id);
        archvist.setEmid(emid);
        archvist.setEmdartment(emde);
        archvist.setPassword(psd);
        archvist.setName(name);
        Boolean deletearchvist = departmenterService.updatearchvist(archvist);
        if (!deletearchvist){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "departmenter_index";
        }
    }

    @RequestMapping("/selectarchvist")
    @ResponseBody
    public Archvist SelectArchvist(String archvist) {
        Archvist selectarchvist = departmenterService.selectarchvist(archvist);
        return selectarchvist;
    }




//////////////////////////////////////////////////////////////////////////////////////


//////查看合同 ////////////////////////////////////////////////////////////////////////////


    @RequestMapping("/getdormitory")
    @ResponseBody
    public Dormitory Selectdormitory(){
        return departmenterService.getdormitory();
    }

    @RequestMapping("/passdormitory")
    public String DormitoryPass(){



        return "departmenter_index";
    }

    @RequestMapping("/denydormitory")
    public String DormitoryDeny(String dormitorycode,Model model){
        Boolean delectdormitory = departmenterService.delectdormitory(dormitorycode);
        if (!delectdormitory){
            model.addAttribute("msg","操作失败");
            return "error";
        }
        return "departmenter_index";
    }




////////////////////////////////////////////////////////////////////////////////////////


}