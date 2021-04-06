package services;

import dao.*;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class ArchvistService {

    @Autowired
    private ArchvistDao archvistDao;

    @Autowired
    private RegionDao regionDao;

    @Autowired
    private PurposeDao purposeDao;

    @Autowired
    private PropertymcDao propertymcDao;

    @Autowired
    private DepartmentDao departmentDao;

    @Autowired
    private ItemDao itemDao;

    @Autowired
    private ItemUsageDao itemUsageDao;

    @Autowired
    private ItemUsepartmentDao itemUsepartmentDao;

    @Autowired
    private BuildingDao buildingDao;

    @Autowired
    private BuildingUsageDao buildingUsageDao;

    @Autowired
    private BuildingAccessDao buildingAccessDao;

    @Autowired
    private SupplierDao supplierDao;

    @Autowired
    private SuiteDao suiteDao;

    @Autowired
    private SuiteUsageDao suiteUsageDao;

    @Autowired
    private SuiteAccessDao suiteAccessDao;

    @Autowired
    private RoomDao roomDao;

    @Autowired
    private RoomUsageDao roomUsageDao;

    @Autowired
    private RoomAccessDao roomAccessDao;

    @Autowired
    private BunkDao bunkDao;

    @Autowired
    private BunkLesseeDao bunkLesseeDao;

    @Autowired
    private BunkUsageDao bunkUsageDao;



    public Archvist login(String id,String password){
        Archvist archvist = archvistDao.login(id, password);
        return archvist;
    }

    // 区域的操作
    public Boolean addregion(Region region){
        Boolean aBoolean = regionDao.InsertOne(region);
        return aBoolean;
    }

    public Boolean deleteregion(String region){
        Boolean aBoolean = regionDao.DeleteOne(region);
        return aBoolean;
    }

    public Boolean updateregion(String region_code,String region_newname){
        Boolean aBoolean = regionDao.UpdateOne(region_code, region_newname);
        return aBoolean;
    }

    public Region selectregion(String region){
        Region region1 = regionDao.SelectOne(region);
        return region1;
    }

    public List<Region> allregion(){
        List<Region> regions = regionDao.SelectAll();
        return regions;
    }


    //用途的操作
    public Boolean addpurpose(Purpose purpose){
        Boolean aBoolean = purposeDao.InsertOne(purpose);
        return aBoolean;
    }

    public Boolean deletepurpose(String purpose){
        Boolean aBoolean = purposeDao.DelectOne(purpose);
        return aBoolean;
    }

    public Boolean updatepurpose(String purpose_code,String purpose_newname){
        Boolean aBoolean = purposeDao.UpdateOne(purpose_code,purpose_newname);
        return aBoolean;
    }

    public Purpose selectpurpose(String purpose){
        Purpose purpose1 = purposeDao.SelectOne(purpose);
        return purpose1;
    }

    public List<Purpose> allpurpose(){
        List<Purpose> purposes = purposeDao.SelectAll();
        return purposes;
    }

    //物业的操作
    public Boolean addpropertymc(Propertymc propertymc){
        Boolean aBoolean = propertymcDao.InsertOne(propertymc);
        return aBoolean;
    }

    public Boolean deletepropertymc(String propertymc){
        Boolean aBoolean = propertymcDao.DeleteOne(propertymc);
        return aBoolean;
    }

    public Boolean updatepropertymc(String propertymc_code,String propertymc_newname){
        Boolean aBoolean = propertymcDao.UpdateOne(propertymc_code,propertymc_newname);
        return aBoolean;
    }

    public Propertymc selectpropertymc(String propertymc){
        Propertymc propertymc1 = propertymcDao.SelectOne(propertymc);
        return propertymc1;
    }

    public List<Propertymc> allpropertymc(){
        List<Propertymc> propertymcs = propertymcDao.SelectAll();
        return propertymcs;
    }

    //部门的操作
    public Boolean adddepartment(Department department){
        Boolean aBoolean = departmentDao.InsertOne(department);
        return aBoolean;
    }

    public Boolean deletedepartment(String department){
        Boolean aBoolean = departmentDao.DeleteOne(department);
        return aBoolean;
    }

    public Boolean updatedepartment(String department_code,String department_newname){
        Boolean aBoolean = departmentDao.UpdateOne(department_code, department_newname);
        return aBoolean;
    }

    public Department selectdepartment(String department){
        Department department1 = departmentDao.SelectOne(department);
        return department1;
    }

    public List<Department> alldepartment(){
        List<Department> departments = departmentDao.SelectAll();
        return departments;
    }


    //小区的操作
    @Transactional
    public Boolean adddeitem(Item item,ItemUsage itemUsage,ItemUsepartment itemUsepartment){
        Boolean aBoolean = itemDao.InsertOne(item);
        Boolean aBoolean1 = itemUsageDao.InsertOne(itemUsage);
        Boolean aBoolean2 = itemUsepartmentDao.InsertOne(itemUsepartment);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }

    public Boolean deleteitem(String item){
        Boolean aBoolean = itemDao.DeleteOne(item);
        if (aBoolean){
            return true;
        }else {
            return false;
        }


    }

    @Transactional
    public Boolean updateitem(Item item,ItemUsage itemUsage,ItemUsepartment itemUsepartment){
        Boolean aBoolean = itemDao.UpdateOne(item);
        Boolean aBoolean1 = itemUsageDao.UpdateOne(itemUsage);
        Boolean aBoolean2 = itemUsepartmentDao.UpdateOne(itemUsepartment);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }

    public Item selectitem(String itemcode){
        Item item = itemDao.SelectOne(itemcode);
        return item;
    }
    public ItemUsage itemusageselect(String itemcode){
        ItemUsage itemUsages = itemUsageDao.SelectOne(itemcode);
        return itemUsages;
    }
    public ItemUsepartment itemusepartmentselect(String itemcode){
        ItemUsepartment itemUsepartment1 = itemUsepartmentDao.SelectOne(itemcode);
        return itemUsepartment1;
    }

    public List<Item> Byregionselectitem(String regioncode){
        List<Item> item = itemDao.SelectByRegion(regioncode);
        return item;
    }


////////////////////////////////////////////////////////////////


///////楼栋的操作///////////////////////////////////////////////////

    @Transactional
    public Boolean addbuilding(Building building,BuildingUsage buildingUsage,BuildingAccess buildingAccess){
        Boolean aBoolean = buildingDao.InsertOne(building);
        Boolean aBoolean1 = buildingUsageDao.InsertOne(buildingUsage);
        Boolean aBoolean2 = buildingAccessDao.InsertOne(buildingAccess);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }

    @Transactional
    public Boolean updatebuilding(Building building,BuildingUsage buildingUsage,BuildingAccess buildingAccess){
        Boolean aBoolean = buildingDao.UpdateOne(building);
        Boolean aBoolean1 = buildingUsageDao.UpdateOne(buildingUsage);
        Boolean aBoolean2 = buildingAccessDao.UpdateOne(buildingAccess);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }


    public Building selectbuilding(String buildingcode){
        Building building = buildingDao.SelectOne(buildingcode);
        return building;
    }

    public BuildingUsage buildingusageselect(String buildingcode){
        BuildingUsage buildingUsage = buildingUsageDao.SelectOne(buildingcode);
        return buildingUsage;
    }

    public BuildingAccess buildingaccessselect(String buildingcode){
        BuildingAccess buildingAccess = buildingAccessDao.SelectOne(buildingcode);
        return buildingAccess;
    }

    public List<Supplier> supplierselectall(){
        List<Supplier> suppliers = supplierDao.SelectAll();
        return suppliers;
    }

    public Supplier supplierselectone(String suppliercode){
        Supplier supplier = supplierDao.SelectOne(suppliercode);
        return supplier;
    }

/////套房的操作/////////////////////////////////////////////////////////////////////


    @Transactional
    public Boolean addsuite(Suite suite,SuiteUsage suiteUsage,SuiteAccess suiteAccess){
        Boolean aBoolean = suiteDao.InsertOne(suite);
        Boolean aBoolean1 = suiteUsageDao.InsertOne(suiteUsage);
        Boolean aBoolean2 = suiteAccessDao.InsertOne(suiteAccess);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }

    @Transactional
    public Boolean updatesuite(Suite suite,SuiteUsage suiteUsage,SuiteAccess suiteAccess){
        Boolean aBoolean = suiteDao.UpdateOne(suite);
        Boolean aBoolean1 = suiteUsageDao.UpdateOne(suiteUsage);
        Boolean aBoolean2 = suiteAccessDao.UpdateOne(suiteAccess);
        if (aBoolean && aBoolean1 && aBoolean2){
            return true;
        }else {
            return false;
        }
    }

    @Transactional
    public Boolean deletesuite(String suitecode){
        Boolean aBoolean = suiteDao.DeleteOne(suitecode);
        return aBoolean;
    }

    public Suite selectsuite(String suitecode){
        Suite suite = suiteDao.SelectOne(suitecode);
        return suite;
    }

    public SuiteUsage suiteusageselect(String suitecode){
        SuiteUsage suiteUsage = suiteUsageDao.SelectOne(suitecode);
        return suiteUsage;
    }

    public SuiteAccess suiteaccessselect(String suitecode){
        SuiteAccess suiteAccess = suiteAccessDao.SelectOne(suitecode);
        return suiteAccess;
    }

    public List<Building> buildingselectbyitem(String itemcode){
        List<Building> buildings = buildingDao.SelectByItemcode(itemcode);
        return buildings;
    }

    public List<Building> buildings_selectby_item_region(String itemcode,String regioncode){

        List<Building> buildings = buildingDao.SelectByItemRegion(regioncode,itemcode);

        return buildings;
    }

    public List<Suite> suites_selectby_building_item_region(String buildingcode,String itemcode,String regioncode){
        List<Suite> suites = suiteDao.SelectBybuildingitemregion(buildingcode, itemcode, regioncode);
        return suites;
    }

    public List<Room> rooms_selectby_suite_building_item_region(String suitecode,String buildingcode,String itemcode,String regioncode){
        List<Room> rooms = roomDao.selectby_suite_building_item_region(suitecode, buildingcode, itemcode, regioncode);
        return rooms;
    }

/////// 房间的操作////////////////////////////////////////////////////////
    public List<Suite> suiteselectbybuilding(String buildingcode){
        List<Suite> suites = suiteDao.SelectByBuilding(buildingcode);
        return suites;
    }

    public List<Room> roomselectbysuite(String suitecode){
        List<Room> selectbysuite = roomDao.selectbysuite(suitecode);
        return selectbysuite;
    }

    public List<Bunk> bunkselectbyroom(String roomcode){
        List<Bunk> bunkselectbyroom = bunkDao.bunkselectbyroom(roomcode);
        return bunkselectbyroom;
    }


    public Boolean addroom(Room room){
        return null;
    }

    public Boolean deleteroom(String room){
        return null;
    }

    public Boolean updateroom(String room_code,String room_newname) {
        return null;
    }

    public Room selectroom(String region){
        return null;
    }

    public List<Room> allroom(){
        return null;
    }


//////////////////////////////////////////////////////////////


///////床位的操作//////////////////////////////////////////////

    public Boolean addbunk(Bunk bunk){
        return null;
    }

    public Boolean deletebunk(String bunk){
        return null;
    }

    public Boolean updatebunk(String bunk_code,String bunk_newname) {
        return null;
    }

    public Bunk selectbunk(String bunk){
        return null;
    }

    public List<Bunk> allbunk(){
        return null;
    }

    public BunkLessee selectbunklessee(String bunkcode){
        BunkLessee bunkLessee = bunkLesseeDao.selectByPrimaryKey(bunkcode);
        return bunkLessee;
    }







////////////////////////////////////////////////////////////////


/////收费的操作////////////////////////////////////////////////////








///////////////////////////////////////////////////////////////////////
}
