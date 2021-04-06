package controller;

import model.Propertymanager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import services.PropertymanagerService;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/propertymanager")
public class PropertymanagerController {
    @Autowired
    private Propertymanager propertymanager;

    @Autowired
    private PropertymanagerService propertymanagerService;

    @RequestMapping("/login")
    public String login(String id, String password , String yzm, Model model, HttpSession session) {
        propertymanager=propertymanagerService.login(id,password);
        if (propertymanager==null){
            model.addAttribute("msg","账号或密码错误");
            return "error";
        }else{
            if(!yzm.equals("5374")){
                model.addAttribute("msg","验证码错误");
                return "error";
            }
        }
        session.setAttribute("propertymanager",propertymanager);
        return "propertymanager_index";
    }

    @RequestMapping("/exit")
    public void exit(HttpSession session, HttpServletResponse response) throws IOException {
        session.setAttribute("propertymanager",null);
        session.invalidate();
        response.sendRedirect("../propertymanager_login.jsp");
    }


    public String Repairdone(String id,Model model){
        Boolean torepair = propertymanagerService.torepair(id);
        if (!torepair){
            model.addAttribute("msg","发生错误");
            return "error";
        }else {
            return "propertymanager_index";
        }
    }






}