package controller;

import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.ArchvistService;
import utils.TimeUtil;
import utils.Util;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/archvist")
public class ArchvistController {
    @Autowired
    private Archvist archvist;

    @Autowired
    private Region region;

    @Autowired
    private Purpose purpose;

    @Autowired
    private Propertymc propertymc;

    @Autowired
    private Item item;

    @Autowired
    private ItemUsage itemUsage;

    @Autowired
    private ItemUsepartment itemUsepartment;

    @Autowired
    private Building building;

    @Autowired
    private BuildingUsage buildingUsage;

    @Autowired
    private BuildingAccess buildingAccess;

    @Autowired
    private Suite suite;

    @Autowired
    private SuiteUsage suiteUsage;

    @Autowired
    private SuiteAccess suiteAccess;

    @Autowired
    private ArchvistService archvistService;


    @RequestMapping("/login")
    public String archvistlogin(String id, String password, String yzm, Model model, HttpSession session) {
         archvist= archvistService.login(id, password);
        if (archvist==null) {
            model.addAttribute("msg","账号或密码错误");
            return "error";
        }else{
            if(!yzm.equals("5374")){
                model.addAttribute("msg","验证码错误");
                return "error";
            }
        }
        session.setAttribute("archvist",archvist);
        return "archvist_index";
    }

    @RequestMapping("exit")
    public void exit(HttpSession session,HttpServletResponse response) throws IOException {

        session.setAttribute("archvist",null);
        session.invalidate();
        response.sendRedirect("../archvist_login.jsp");
    }


    //区域的操作////////////////////////////////////////////////////////////
    @RequestMapping("/addregion")
    public String AddRegion(String region_code,String region_name,Model model,HttpSession session){
        region.setRegionCode(region_code);
        region.setRegionName(region_name);
        Boolean addregion = archvistService.addregion(region);
        if (!addregion){
            model.addAttribute("msg","添加失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }


    @RequestMapping("/deleteregion")
    public String DeleteRegion(String region ,Model model,HttpSession session){
        Boolean deleteregion = archvistService.deleteregion(region);
        if (!deleteregion){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/updateregion")
    public String UpdateRegion(String region_code,String region_newname ,Model model){
        Boolean updateregion = archvistService.updateregion(region_code,region_newname);
        if (!updateregion){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/selectregion")
    @ResponseBody
    public List<Region> SelectRegion(String regions,Model model,HttpSession session){
        List<Region> selectone=new ArrayList<>();
        if (regions==null || regions.equals("")){
            selectone =archvistService.allregion();
        }else {
            Region region2 = archvistService.selectregion(regions);
           selectone.add(region2);
        }
        return selectone;
    }
    //////////////////////////////////////////////////////////////////////


    //用途的操作////////////////////////////////////////////////////////////
    @RequestMapping("/addpurpose")
    public String AddPurpose(String purpose_code,String purpose_name,Model model,HttpSession session){
        purpose.setPurposeCode(purpose_code);
        purpose.setPurposeName(purpose_name);

        Boolean addpurpose = archvistService.addpurpose(purpose);
        if (!addpurpose){
            model.addAttribute("msg","添加失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }


    @RequestMapping("/deletepurpose")
    public String DeletePurpose(String purpose ,Model model,HttpSession session){
        Boolean deleteregion = archvistService.deletepurpose(purpose);
        if (!deleteregion){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/updatepurpose")
    public String UpdatePurpose(String purpose_code,String purpose_newname ,Model model,HttpSession session){
        Boolean updateregion = archvistService.updatepurpose(purpose_code,purpose_newname);
        if (!updateregion){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/selectpurpose")
    @ResponseBody
    public List<Purpose> SelectPurpose(String purpose,Model model){
        List<Purpose> selectone=new ArrayList<>();
        if (purpose.equals("")){
            selectone = archvistService.allpurpose();
        }else{
            Purpose selectpurpose = archvistService.selectpurpose(purpose);
            selectone.add(selectpurpose);
        }
        return selectone;
    }
    ///////////////////////////////////////////////////////////////////



    //物业的操作/////////////////////////////////////////////////////////
    @RequestMapping("/addpropertymc")
    public String AddPropertymc(String propertymc_code,String propertymc_name,Model model,HttpSession session){
        propertymc.setPropertyMcCode(propertymc_code);
        propertymc.setPropertyMcName(propertymc_name);
        Boolean addpropertymc = archvistService.addpropertymc(propertymc);
        if (!addpropertymc){
            model.addAttribute("msg","添加失败");
            return "error";
        }else{

            return "archvist_index";
        }
    }


    @RequestMapping("/deletepropertymc")
    public String DeletePropertymc(String propertymc ,Model model,HttpSession session){
        Boolean deletepropertymc = archvistService.deletepropertymc(propertymc);
        if (!deletepropertymc){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{

            return "archvist_index";
        }
    }

    @RequestMapping("/updatepropertymc")
    public String UpdatePropertymc(String propertymc_code,String propertymc_newname ,Model model,HttpSession session){
        Boolean updatepropertymc = archvistService.updatepropertymc(propertymc_code, propertymc_newname);
        if (!updatepropertymc){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }


    @RequestMapping("/selectpropertymc")
    @ResponseBody
    public List<Propertymc> SelectPropertymc(String propertymc){
        List<Propertymc> selectonesss=new ArrayList<>();
        if (propertymc.equals("") || propertymc==null){
            selectonesss =archvistService.allpropertymc();
            return selectonesss;
        }else{
            Propertymc selectpropertymc = archvistService.selectpropertymc(propertymc);
            selectonesss.add(selectpropertymc);
            return selectonesss;
        }
    }
    ////////////////////////////////////////////////////////////////


    @RequestMapping("/selectdepartment")
    @ResponseBody
    public List<Department> SelectDepartment(String department){
        List<Department> departments=new ArrayList<>();
        if (department.equals("") || department==null){

            departments=archvistService.alldepartment();
            return departments;
        }else{
            Department selectdepartment = archvistService.selectdepartment(department);
            departments.add(selectdepartment);
            return departments;
        }
    }


    //小区的操作/////////////////////////////////////////////////////
    @RequestMapping("/additem")
    public String AddItem(Model model,String region, String itemName, String itemAddress, Double itemArea, String propertymc, String purpose, String purposenote, String department, String departmentnote, String begintime,String endtime,int status,String itemnote) throws ParseException {
        Date begin_time = TimeUtil.stringtodate(begintime);
        Date end_time = TimeUtil.stringtodate(endtime);
        if (begin_time.getTime()>end_time.getTime()){
            model.addAttribute("msg","时间错误");
            return "error";
        }
        String[] regioncode_name = region.split("/");
        String[] purposecode_name = purpose.split("/");
        String[] propertymccode_name = propertymc.split("/");
        String[] departmentcode_name = department.split("/");

        String itemcode = "XM"+Util.GetRandom_longsize();

        item.setItemCode(itemcode);
        item.setItemName(itemName);
        item.setItemAddress(itemAddress);
        item.setArea(itemArea);
        item.setRegionCode(regioncode_name[0]);
        item.setPropertymcCode(propertymccode_name[0]);
        item.setStatus(status);
        item.setNote(itemnote);

        itemUsage.setItemCode(itemcode);
        itemUsage.setPurposeCode(purposecode_name[0]);
        itemUsage.setPursposeName(purposecode_name[1]);
        itemUsage.setNote(purposenote);

        itemUsepartment.setItemCode(itemcode);
        itemUsepartment.setDepartmentCode(departmentcode_name[0]);
        itemUsepartment.setDepartmentName(departmentcode_name[1]);
        itemUsepartment.setBeginUseTime(TimeUtil.string_to_timestamp(begintime));
        itemUsepartment.setEndUseTime(TimeUtil.string_to_timestamp(endtime));
        itemUsepartment.setNote(departmentnote);

        Boolean adddeitem = archvistService.adddeitem(item, itemUsage, itemUsepartment);
        if (!adddeitem){
            model.addAttribute("msg","添加失败");
            return "error";
        }else {

            return "archvist_index";
        }
    }


    @RequestMapping("/updateitem")
    public String UpdateItem(Model model,String itemcode,String region, String itemName, String itemAddress, Double itemArea, String propertymc, String purpose, String purposenote, String department, String departmentnote, String begintime,String endtime,int status,String itemnote) throws ParseException {
        Date begin_time = TimeUtil.stringtodate(begintime);
        Date end_time = TimeUtil.stringtodate(endtime);
        if (begin_time.getTime()>end_time.getTime()){
            model.addAttribute("msg","时间错误");
            return "error";
        }
        String[] regioncode_name = region.split("/");
        String[] purposecode_name = purpose.split("/");
        String[] propertymccode_name = propertymc.split("/");
        String[] departmentcode_name = department.split("/");


        item.setItemCode(itemcode);
        item.setItemName(itemName);
        item.setItemAddress(itemAddress);
        item.setArea(itemArea);
        item.setRegionCode(regioncode_name[0]);
        item.setPropertymcCode(propertymccode_name[0]);
        item.setStatus(status);
        item.setNote(itemnote);

        itemUsage.setItemCode(itemcode);
        itemUsage.setPurposeCode(purposecode_name[0]);
        itemUsage.setPursposeName(purposecode_name[1]);
        itemUsage.setNote(purposenote);

        itemUsepartment.setItemCode(itemcode);
        itemUsepartment.setDepartmentCode(departmentcode_name[0]);
        itemUsepartment.setDepartmentName(departmentcode_name[1]);
        itemUsepartment.setBeginUseTime(TimeUtil.string_to_timestamp(begintime));
        itemUsepartment.setEndUseTime(TimeUtil.string_to_timestamp(endtime));
        itemUsepartment.setNote(departmentnote);

        Boolean updateitem = archvistService.updateitem(item, itemUsage, itemUsepartment);

        if (!updateitem){
            model.addAttribute("msg","修改失败");
            return "error";
        }else {
            return "archvist_index";
        }
    }

    @RequestMapping("/deleteitem")
    public String DeleteItem(HttpSession session,Model model,String itemCode){
        Boolean deleteitem = archvistService.deleteitem(itemCode);

        if (!deleteitem){
            model.addAttribute("msg","删除失败");
            return "error";
        }else {

            return "archvist_index";
        }
    }

    @RequestMapping("/selectitem")
    @ResponseBody
    public Item SelectItem(String itemCode){
        if (!itemCode.equals("") && !(itemCode==null)) {
            Item selectitem = archvistService.selectitem(itemCode);
            List<Region> allregion = archvistService.allregion();
            List<Propertymc> allpropertymc = archvistService.allpropertymc();

            for (Propertymc propertymc1 : allpropertymc) {
                if (selectitem.getPropertymcCode().equals(propertymc1.getPropertyMcCode())) {
                    selectitem.setPropertymcCode(propertymc1.getPropertyMcName());
                }
            }
            for (Region region1 : allregion) {
                if (selectitem.getRegionCode().equals(region1.getRegionCode())) {
                    selectitem.setRegionCode(region1.getRegionName());
                }
            }
            return selectitem;
        }
        return null;
    }

    @RequestMapping("/selectitemusage")
    @ResponseBody
    public ItemUsage SelectItemUsage(String itemCode){
        if (!itemCode.equals("") && !(itemCode==null)) {
            ItemUsage itemusageselect = archvistService.itemusageselect(itemCode);
            return itemusageselect;
        }
        return null;
    }

    @RequestMapping("/selectitemdepartment")
    @ResponseBody
    public ItemUsepartment SelectItemDepartment(String itemCode){
        if (!itemCode.equals("") && !(itemCode==null)) {
            ItemUsepartment itemusepartmentselect = archvistService.itemusepartmentselect(itemCode);
            return itemusepartmentselect;
        }
        return null;
    }


///////楼栋的操作////////////////////////////////////////

    @RequestMapping("/addbuilding")
    public String AddBuilding(Model model,String region, String item, String buildingname, String buildingaddress, int floor, String purpose, String purposenote, String landpurpose, String landno,Double landarea,Double usearea,String rightpurpose,String rightowner,String rightno,String assetno,String structure,String buyfrom,Double cost,String buytime,String buyway,String owner,String complitedtime,Double lasttime,String beginusetime,String endusetime,Double price,String accessbtime,String accessetime, Double totalarea,Double averprice,String supplier,String suppliernote,int status,String buildingnote) throws ParseException {

        if (purpose.equals("") || purpose==null || region.equals("") || region==null || item.equals("") || item==null || supplier.equals("") || supplier==null){
            model.addAttribute("msg","错误输入");
            return "error";
        }


        String[] buildpurpose = purpose.split("/");
        String[] buildregion = region.split("/");
        String[] builditem = item.split("/");
        String[] buildsupplier = supplier.split("/");

        String buingcode="LD"+Util.GetRandom_longsize();
        Item selectitem = archvistService.selectitem(builditem[0]);

        building.setBuildingCode(buingcode);
        building.setBuildingName(buildingname);
        building.setBuildingAddress(buildingaddress);
        building.setTotalFloor(floor);
        building.setLawOwner(rightowner);
        building.setOwner(owner);
        building.setAddressArea(landarea);
        building.setTotalArea(totalarea);
        building.setAssetCardno(assetno);
        building.setBeginUseTime(TimeUtil.string_to_timestamp(beginusetime));
        building.setBuildingStructure(structure);
        building.setBuyFrom(buyfrom);
        building.setBuyOrRentTime(TimeUtil.string_to_timestamp(buytime));
        building.setUseArea(usearea);
        building.setCompletedTime(TimeUtil.string_to_timestamp(complitedtime));
        building.setCost(cost);
        building.setEndUseTime(TimeUtil.string_to_timestamp(endusetime));
        building.setItemCode(builditem[0]);
        building.setLandno(landno);
        building.setLandPurpose(landpurpose);
        building.setLimittdUsetime(70.0);
        building.setLeftUsetime(lasttime);
        building.setNote(buildingnote);
        building.setPropertymcCode(selectitem.getPropertymcCode());
        building.setPurchaseWay(buyway);
        building.setRegionCode(buildregion[0]);
        building.setRightno(rightno);
        building.setRightPurpose(rightpurpose);
        //////////////buildassess
        buildingAccess.setBuildingCode(buingcode);
        buildingAccess.setAccessBeginTime(TimeUtil.string_to_timestamp(accessbtime));
        buildingAccess.setAccessEndTime(TimeUtil.string_to_timestamp(accessetime));
        buildingAccess.setAccessPrice(price);
        buildingAccess.setAveragePrice(averprice);
        buildingAccess.setItemCode(builditem[0]);
        buildingAccess.setRegionCode(buildregion[0]);
        buildingAccess.setSupplierName(buildsupplier[0]);
        buildingAccess.setNote(suppliernote);

        ///////////////buildusage

        buildingUsage.setBuildingCode(buingcode);
        buildingUsage.setPurposeCode(buildpurpose[0]);
        buildingUsage.setPurposeName(buildpurpose[1]);
        buildingUsage.setNote(purposenote);

        Boolean addbuilding = archvistService.addbuilding(building, buildingUsage, buildingAccess);

        if (!addbuilding){
            model.addAttribute("msg","添加失败");
            return "error";
        }else {
            return "archvist_index";
        }
    }


    @RequestMapping("/updatebuilding")
    public String UpdateBuilding(Model model,String buildingngcode ,String complitedtime,String region, String item, String buildingname, String buildingaddress, int floor, String purpose, String purposenote, String landpurpose, String landno,Double landarea,Double usearea,String rightpurpose,String rightowner,String rightno,String assetno,String structure,String buyfrom,Double cost,String buytime,String buyway,String owner,Double lasttime,String beginusetime,String endusetime,String assessnote,Double price,String accessbtime,String accessetime, Double totalarea,Double averprice,String supplier,String buildingnote) throws ParseException {

        if (purpose.equals("") || purpose==null || region.equals("") || region==null || item.equals("") || item==null || supplier.equals("") || supplier==null){
            model.addAttribute("msg","错误输入");
            return "error";
        }

        String[] buildpurpose = purpose.split("/");
        String[] buildregion = region.split("/");
        String[] builditem = item.split("/");
        String[] buildsu = supplier.split("/");


        Item selectitem = archvistService.selectitem(builditem[0]);


        building.setBuildingCode(buildingngcode);
        building.setBuildingName(buildingname);
        building.setBuildingAddress(buildingaddress);
        building.setTotalFloor(floor);
        building.setLawOwner(rightowner);
        building.setOwner(owner);
        building.setAddressArea(landarea);
        building.setTotalArea(totalarea);
        building.setAssetCardno(assetno);
        building.setBeginUseTime(TimeUtil.string_to_timestamp(beginusetime));
        building.setBuildingStructure(structure);
        building.setBuyFrom(buyfrom);
        building.setBuyOrRentTime(TimeUtil.string_to_timestamp(buytime));
        building.setUseArea(usearea);
        building.setCompletedTime(TimeUtil.string_to_timestamp(complitedtime));
        building.setCost(cost);
        building.setEndUseTime(TimeUtil.string_to_timestamp(endusetime));
        building.setItemCode(builditem[0]);
        building.setLandno(landno);
        building.setLandPurpose(landpurpose);
        building.setLimittdUsetime(70.0);
        building.setLeftUsetime(lasttime);
        building.setNote(buildingnote);
        building.setPropertymcCode(selectitem.getPropertymcCode());
        building.setPurchaseWay(buyway);
        building.setRegionCode(buildregion[0]);
        building.setRightno(rightno);
        building.setRightPurpose(rightpurpose);

        //////////////buildassess
        buildingAccess.setBuildingCode(buildingngcode);
        buildingAccess.setAccessBeginTime(TimeUtil.string_to_timestamp(accessbtime));
        buildingAccess.setAccessEndTime(TimeUtil.string_to_timestamp(accessetime));
        buildingAccess.setAccessPrice(price);
        buildingAccess.setAveragePrice(averprice);
        buildingAccess.setItemCode(builditem[0]);
        buildingAccess.setRegionCode(buildregion[0]);
        buildingAccess.setSupplierName(buildsu[0]);
        buildingAccess.setNote(assessnote);

        ///////////////buildusage

        buildingUsage.setBuildingCode(buildingngcode);
        buildingUsage.setPurposeCode(buildpurpose[0]);
        buildingUsage.setPurposeName(buildpurpose[1]);
        buildingUsage.setNote(purposenote);

        Boolean updatebuilding = archvistService.updatebuilding(building, buildingUsage, buildingAccess);

        if (!updatebuilding){
            model.addAttribute("msg","修改失败");
            return "error";
        }else {
            return "archvist_index";
        }
    }


    @RequestMapping("/selectbuilding")
    @ResponseBody
    public Building SelectBuilding(String buildingCode){
        if (buildingCode.equals("") || buildingCode==null){
            return null;
        }else {
            Building selectbuilding = archvistService.selectbuilding(buildingCode);

            Region selectregion = archvistService.selectregion(selectbuilding.getRegionCode());
            Item selectitem = archvistService.selectitem(selectbuilding.getItemCode());
            Propertymc selectpropertymc = archvistService.selectpropertymc(selectbuilding.getPropertymcCode());

            selectbuilding.setRegionCode(selectregion.getRegionName());
            selectbuilding.setItemCode(selectitem.getItemName());
            selectbuilding.setPropertymcCode(selectpropertymc.getPropertyMcName());

            return selectbuilding;
        }
    }

    @RequestMapping("/selectbuildingusage")
    @ResponseBody
    public BuildingUsage SelectBuildingUsage(String buildingCode){
        if (buildingCode.equals("") || buildingCode==null){
            return null;
        }else {
            BuildingUsage buildingusageselect = archvistService.buildingusageselect(buildingCode);
            return buildingusageselect;
        }
    }

    @RequestMapping("/selectbuildingaccess")
    @ResponseBody
    public BuildingAccess SelectBuildingAccess(String buildingCode){
        if (buildingCode.equals("") || buildingCode==null){
            return null;
        }else {
            BuildingAccess buildingaccessselect = archvistService.buildingaccessselect(buildingCode);
            return buildingaccessselect;
        }
    }

    @RequestMapping("/getitembyregion")
    @ResponseBody
    public List<Item> SelectItemByRegion(String region){
        if (region.equals("") || region==null){
            return null;
        }else {
            List<Item> selectitem = archvistService.Byregionselectitem(region);
            return selectitem;
        }
    }

    @RequestMapping("/getsupplier")
    @ResponseBody
    public List<Supplier> SelectSupplier(){
        List<Supplier> supplierselectall = archvistService.supplierselectall();
        return supplierselectall;
    }


///////////////////////////////////////////////////////////////////////////////////



////////套房的操作////////////////////////////////////////////////////////////////////

    @RequestMapping("/addsuite")
    public String AddSuite(Model model,String suiteregion,String suiteitem,Double suitearea,String suitebuilding,String floor,String suitename,String owner,Integer usestatus,String rightno,String aesetcardno,Double averarea,Double usearea,Double actualusearea,String roomstructure,Integer roomnum,String suitenote,int status,String suitepurpose,String purposenote,String purposebtime,String purposeetime,String accessnote,Double accessprice,String accessbtime,String accessetime,Double averprice,String suiteaccesscompany) throws ParseException {

        String[] suitere = suiteregion.split("/");
        String[] suiteit = suiteitem.split("/");
        String[] suitebu = suitebuilding.split("/");
        String[] suitepur = suitepurpose.split("/");
        String[] suitecompany = suiteaccesscompany.split("/");

        String suitecode="TF"+Util.GetRandom_longsize();

        Building selectbuilding = archvistService.selectbuilding(suitebu[0]);
        Double totalArea = selectbuilding.getTotalArea();

        suite.setSuiteCode(suitecode);
        suite.setSuiteName(suitename);
        suite.setNote(suitenote);
        suite.setRoomNum(roomnum);
        suite.setActiveStatus(status);
        suite.setActualUseArea(actualusearea);
        suite.setAverageArea(averarea);
        suite.setBuildingCode(suitebu[0]);
        suite.setBuildingName(suitebu[1]);
        suite.setFloor(floor);
        suite.setItemCode(suiteit[0]);
        suite.setOwner(owner);
        suite.setPurposeCode(suitepur[0]);
        suite.setRegionCode(suitere[0]);
        suite.setRoomStructure(roomstructure);
        suite.setSuiteArea(suitearea);
        suite.setSuiteLawNo(rightno);
        suite.setUseArea(usearea);
        suite.setSuitePropertyCardno(aesetcardno);
        suite.setUseStatus(usestatus);
        suite.setBuildingArea(totalArea);


        //////suite usage///////////////////////////
        suiteUsage.setSuiteCode(suitecode);
        suiteUsage.setPurposeCode(suitepur[0]);
        suiteUsage.setPurposeName(suitepur[1]);
        suiteUsage.setBeginUseTime(TimeUtil.string_to_timestamp(purposebtime));
        suiteUsage.setEndUseTime(TimeUtil.string_to_timestamp(purposeetime));
        suiteUsage.setNohStatus(1);
        suiteUsage.setNote(purposenote);

        /////suite access/////////////////////////////
        suiteAccess.setSuiteCode(suitecode);
        suiteAccess.setRegionCode(suitere[0]);
        suiteAccess.setSupplierCode(suitecompany[0]);
        suiteAccess.setBuildingCode(suitebu[0]);
        suiteAccess.setBuildingFloor(floor);
        suiteAccess.setItemCode(suiteit[0]);
        suiteAccess.setNote(accessnote);
        suiteAccess.setAccessBeginTime(TimeUtil.string_to_timestamp(accessbtime));
        suiteAccess.setAccessEndTime(TimeUtil.string_to_timestamp(accessetime));
        suiteAccess.setAccessPrice(accessprice);
        suiteAccess.setAveragePrice(averprice);

        Boolean addsuite = archvistService.addsuite(suite, suiteUsage, suiteAccess);

        if (!addsuite){
            model.addAttribute("msg","添加失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }


    @RequestMapping("/deletesuite")
    public String DeleteSuite(Model model,String suite_code){
        Boolean deletesuite = archvistService.deletesuite(suite_code);
        if (!deletesuite){
            model.addAttribute("msg","删除失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/updatesuite")
    public String UpdateSuite(Model model,String suitecode,String suiteregion,String suiteitem,Double suitearea,String suitebuilding,String floor,String suitename,String owner,Integer usestatus,String rightno,String aesetcardno,Double averarea,Double usearea,Double actualusearea,String roomstructure,Integer roomnum,String suitenote,int status,String suitepurpose,String purposenote,String purposebtime,String purposeetime,String accessnote,Double accessprice,String accessbtime,String accessetime,Double averprice,String accesscompany) throws ParseException {
        String[] suitere = suiteregion.split("/");
        String[] suiteit = suiteitem.split("/");
        String[] suitebu = suitebuilding.split("/");
        String[] suitepur = suitepurpose.split("/");
        String[] suitecompany = accesscompany.split("/");



        Building selectbuilding = archvistService.selectbuilding(suitebu[0]);
        Double totalArea = selectbuilding.getTotalArea();

        suite.setSuiteCode(suitecode);
        suite.setSuiteName(suitename);
        suite.setNote(suitenote);
        suite.setRoomNum(roomnum);
        suite.setActiveStatus(status);
        suite.setActualUseArea(actualusearea);
        suite.setAverageArea(averarea);
        suite.setBuildingCode(suitebu[0]);
        suite.setBuildingName(suitebu[1]);
        suite.setFloor(floor);
        suite.setItemCode(suiteit[0]);
        suite.setOwner(owner);
        suite.setPurposeCode(suitepur[0]);
        suite.setRegionCode(suitere[0]);
        suite.setRoomStructure(roomstructure);
        suite.setSuiteArea(suitearea);
        suite.setSuiteLawNo(rightno);
        suite.setUseArea(usearea);
        suite.setSuitePropertyCardno(aesetcardno);
        suite.setUseStatus(usestatus);
        suite.setBuildingArea(totalArea);


        //////suite usage///////////////////////////
        suiteUsage.setSuiteCode(suitecode);
        suiteUsage.setPurposeCode(suitepur[0]);
        suiteUsage.setPurposeName(suitepur[1]);
        suiteUsage.setBeginUseTime(TimeUtil.string_to_timestamp(purposebtime));
        suiteUsage.setEndUseTime(TimeUtil.string_to_timestamp(purposeetime));
        suiteUsage.setNohStatus(1);
        suiteUsage.setNote(purposenote);

        /////suite access/////////////////////////////
        suiteAccess.setSuiteCode(suitecode);
        suiteAccess.setRegionCode(suitere[0]);
        suiteAccess.setSupplierCode(suitecompany[0]);
        suiteAccess.setBuildingCode(suitebu[0]);
        suiteAccess.setBuildingFloor(floor);
        suiteAccess.setItemCode(suiteit[0]);
        suiteAccess.setNote(accessnote);
        suiteAccess.setAccessBeginTime(TimeUtil.string_to_timestamp(accessbtime));
        suiteAccess.setAccessEndTime(TimeUtil.string_to_timestamp(accessetime));
        suiteAccess.setAccessPrice(accessprice);
        suiteAccess.setAveragePrice(averprice);

        Boolean updatesuite = archvistService.updatesuite(suite, suiteUsage, suiteAccess);
        if (!updatesuite){
            model.addAttribute("msg","更新失败");
            return "error";
        }else{
            return "archvist_index";
        }
    }

    @RequestMapping("/selectsuite")
    @ResponseBody
    public Suite SelectSuite(String suitecode){
        Suite selectsuite = archvistService.selectsuite(suitecode);

        String regionCode = selectsuite.getRegionCode();
        String itemCode = selectsuite.getItemCode();

        Region selectregion = archvistService.selectregion(regionCode);
        Item selectitem = archvistService.selectitem(itemCode);

        selectsuite.setRegionCode(selectregion.getRegionName());
        selectsuite.setItemCode(selectitem.getItemName());

        return selectsuite;
    }


    @RequestMapping("/selectsuiteusage")
    @ResponseBody
    public SuiteUsage SelectSuiteUsage(String suitecode){
        SuiteUsage suiteusageselect = archvistService.suiteusageselect(suitecode);
        return suiteusageselect;
    }

    @RequestMapping("/selectsuiteaccess")
    @ResponseBody
    public SuiteAccess SelectSuiteAccess(String suitecode){
        SuiteAccess suiteaccessselect = archvistService.suiteaccessselect(suitecode);

        String suiteCode = suiteaccessselect.getSuiteCode();
        Supplier supplierselectone = archvistService.supplierselectone(suiteCode);

        suiteaccessselect.setSupplierCode(supplierselectone.getSupplierName());
        return suiteaccessselect;
    }


    @RequestMapping("/selectbuildingbyitem")
    @ResponseBody
    public List<Building> SelectBuildingByItem(String item){
        if (item.equals("") || item==null){
            return null;
        }else {
            List<Building> buildingselectbyitem = archvistService.buildingselectbyitem(item);
            return buildingselectbyitem;
        }
    }




///////////////////////////////////////////////////////////////////////////////////////




/////////房间的操作///////////////////////////////////////////////////////////////////////









///////////////////////////////////////////////////////////////////////////////////////////


/////////床位的操作//////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////////////////////////////////////////////////




////////收费项目的操作//////////////////////////////////////////////////////////////////////////










////////////////////////////////////////////////////////////////////////////////////////////////




////////////其他杂项//////////////////////////////////////////////////////////////////////////////






////////////////////////////////////////////////////////////////////////////////////////////////


}