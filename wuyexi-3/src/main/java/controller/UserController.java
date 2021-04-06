package controller;


import model.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.ArchvistService;
import services.UserService;
import utils.UserUtil;
import utils.Util;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private ArchvistService archvistService;

   @Autowired
   private Employee employee;

   @Autowired
   private Dormitory dormitory;

   @Autowired
   private RepairList repairList;

    @RequestMapping("/login")
    public String userlogin(String id,String password,String yzm, Model model,HttpSession session){
        if (yzm!=null && !yzm.equals("")) {
            if (!yzm.equals("5374")) {
                model.addAttribute("msg", "验证码错误");
                return "error";
            }
        }
        Employee user = userService.login(id, password);
        if (user==null) {
            model.addAttribute("msg","账号或密码错误");
            return "error";
        }else{
            session.setAttribute("user",user);
            return "user_index";
        }

    }

    @RequestMapping("/exit")
    public void exit(HttpSession session, HttpServletResponse response) throws IOException {
        session.setAttribute("user",null);
        session.invalidate();
        response.sendRedirect("../user_login.jsp");
    }



    @RequestMapping("/getregion")
    @ResponseBody
    public List<Region> getregion(){
        List<Region> selectregion = archvistService.allregion();
        return selectregion;
    }

    @RequestMapping("/getitembyregion")
    @ResponseBody
    public List<Item> getitem(String regioncode){
        List<Item> byregionselectitem = archvistService.Byregionselectitem(regioncode);
        return byregionselectitem;
    }

    @RequestMapping("/getbuildingbyitem")
    @ResponseBody
    public List<Building> getbuilding(String itemcode,String regioncode){
        List<Building> buildings = archvistService.buildings_selectby_item_region(itemcode, regioncode);
        return buildings;
    }

    @RequestMapping("/getsuitebybuilding")
    @ResponseBody
    public List<Suite> getsuite(String buildingcode,String itemcode,String regioncode){
        List<Suite> suites = archvistService.suites_selectby_building_item_region(buildingcode, itemcode, regioncode);
        return suites;
    }

    @RequestMapping("/getroombysuite")
    @ResponseBody
    public List<Room> getroom(String suitecode,String buildingcode,String itemcode,String regioncode){
        List<Room> rooms = archvistService.rooms_selectby_suite_building_item_region(suitecode, buildingcode, itemcode, regioncode);
        return rooms;
    }

    @RequestMapping("/getbunksbyrooms")
    @ResponseBody
    public List<Bunk> getbunk(String roomcode,Model model,HttpServletRequest request)  {

        List<Bunk> bunkselectbyroom = archvistService.bunkselectbyroom(roomcode);
        Employee user = (Employee) UserUtil.getsession_employee();
        for (Bunk bunk : bunkselectbyroom) {
            if (bunk!=null) {
                BunkLessee selectbunklessee = userService.bunkLesseselectbybunkcode(bunk.getBunkCode());
                if (selectbunklessee!=null) {
                    Employee employee = userService.selectuserByid(selectbunklessee.getClient());
                    if (!user.getGender().equals(employee.getGender())) {
                            return null;
                    }
                }
            }
        }
        System.out.println(bunkselectbyroom);
       return bunkselectbyroom;
    }


    @RequestMapping("/creatdormitory")
    public String CreatDormitory(HttpSession session,Model model,String id,String region,String item,String building,String suite,String room,String bunk){
        if (region==null || region.equals("") || item==null || item.equals("") || building==null || building.equals("") || suite==null || suite.equals("") || room==null || room.equals("") || bunk==null || bunk.equals("")){
            model.addAttribute("msg","申请失败");
            return "error";
        }
        Employee user = (Employee)session.getAttribute("user");
        if (!user.getIdCard().equals(id)){
            model.addAttribute("msg","请先完善个人信息");
            return "error";
        }

        Dormitory dormitory = userService.getbormitoryByUserId(user.getEmid());
        if (dormitory==null) {


            String[] bunkcode_name = bunk.split("/");

            this.dormitory.setDormitoryCode("HT" + Util.GetRandom_longsize());
            this.dormitory.setEmid(user.getEmid());
            this.dormitory.setEmname(user.getName());
            this.dormitory.setGender(user.getGender());
            this.dormitory.setAddress(user.getAddress());
            this.dormitory.setBankCard(user.getBankCard());
            this.dormitory.setEmdepartment(user.getEmdepartment());
            this.dormitory.setPhone(user.getPhone());
            this.dormitory.setWorkphone(user.getWorkphone());
            this.dormitory.setOldAddress("暂无信息");
            this.dormitory.setChangeBunk(0);
            this.dormitory.setDormitoryStatus(1);
            this.dormitory.setEducationBackground(user.getEducationBackground());
            this.dormitory.setIncumbency(user.getIncumbency());
            this.dormitory.setIdCard(user.getIdCard());
            this.dormitory.setReason("申请租房");
            this.dormitory.setSzhk(0);
            this.dormitory.setZzsz(1);
            this.dormitory.setZzz(1);
            this.dormitory.setJsx(0);
            this.dormitory.setBuildingCode(building);
            this.dormitory.setFloor(" ");
            this.dormitory.setSuiteCode(suite);
            this.dormitory.setMarriage(user.getMarriage());
            this.dormitory.setItemCode(item);
            this.dormitory.setRoomCode(room);
            this.dormitory.setBunkCode(bunkcode_name[0]);
            this.dormitory.setBunkName(bunkcode_name[1]);
            Boolean aBoolean = userService.CreatDormitory(this.dormitory);
            if (!aBoolean) {
                model.addAttribute("msg", "申请失败");
                return "error";
            } else {
                return "user_index";
            }
        }else{
            model.addAttribute("msg", "正在审批，不要重复申请");
            return "error";
        }

    }

    @RequestMapping("/repairlist")
    public String repairlist(HttpSession session,String question,Model model){
        Employee user = (Employee)session.getAttribute("user");
        repairList.setQuestion(question);
        repairList.setTime(new Timestamp(new Date().getTime()));
        repairList.setId(user.getId());
        repairList.setEmid(user.getEmid());
        repairList.setEmdepartment(user.getEmdepartment());
        repairList.setName(user.getName());
        repairList.setStatus(0);
        repairList.setItemcode("不填");
        repairList.setItemname("不填");
        Boolean addrepairlist = userService.addrepairlist(repairList);
        if (!addrepairlist){
            model.addAttribute("msg", "报修失败");
            return "error";
        }else {
            return "user_index";
        }
    }





}
