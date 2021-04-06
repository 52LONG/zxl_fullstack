package model;


import java.sql.Timestamp;

public class UtilityBill  {
    private String suiteCode;

    private String regionCode;

    private String regionName;

    private String itemCode;

    private String itemName;

    private String propertymcCode;

    private String propertymcName;

    private String buildingCode;

    private String buildingName;

    private String buildingFloor;

    private String suiteName;

    private Integer lastmonthWaterUse;

    private Integer lastmonthElectricityUse;

    private Integer thismonthWaterUse;

    private Integer thismonthElectricityUse;

    private Double waterBill;

    private Double electricityBill;

    private Integer paidStatus;

    private Timestamp time;

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
    }

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPropertymcCode() {
        return propertymcCode;
    }

    public void setPropertymcCode(String propertymcCode) {
        this.propertymcCode = propertymcCode;
    }

    public String getPropertymcName() {
        return propertymcName;
    }

    public void setPropertymcName(String propertymcName) {
        this.propertymcName = propertymcName;
    }

    public String getBuildingCode() {
        return buildingCode;
    }

    public void setBuildingCode(String buildingCode) {
        this.buildingCode = buildingCode;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
    }

    public String getBuildingFloor() {
        return buildingFloor;
    }

    public void setBuildingFloor(String buildingFloor) {
        this.buildingFloor = buildingFloor;
    }

    public String getSuiteName() {
        return suiteName;
    }

    public void setSuiteName(String suiteName) {
        this.suiteName = suiteName;
    }

    public Integer getLastmonthWaterUse() {
        return lastmonthWaterUse;
    }

    public void setLastmonthWaterUse(Integer lastmonthWaterUse) {
        this.lastmonthWaterUse = lastmonthWaterUse;
    }

    public Integer getLastmonthElectricityUse() {
        return lastmonthElectricityUse;
    }

    public void setLastmonthElectricityUse(Integer lastmonthElectricityUse) {
        this.lastmonthElectricityUse = lastmonthElectricityUse;
    }

    public Integer getThismonthWaterUse() {
        return thismonthWaterUse;
    }

    public void setThismonthWaterUse(Integer thismonthWaterUse) {
        this.thismonthWaterUse = thismonthWaterUse;
    }

    public Integer getThismonthElectricityUse() {
        return thismonthElectricityUse;
    }

    public void setThismonthElectricityUse(Integer thismonthElectricityUse) {
        this.thismonthElectricityUse = thismonthElectricityUse;
    }

    public Double getWaterBill() {
        return waterBill;
    }

    public void setWaterBill(Double waterBill) {
        this.waterBill = waterBill;
    }

    public Double getElectricityBill() {
        return electricityBill;
    }

    public void setElectricityBill(Double electricityBill) {
        this.electricityBill = electricityBill;
    }

    public Integer getPaidStatus() {
        return paidStatus;
    }

    public void setPaidStatus(Integer paidStatus) {
        this.paidStatus = paidStatus;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public String toString() {

        return  suiteCode + " " +
                regionCode + " " +
                regionName + " " +
                itemCode + " " +
                itemName + " " +
                propertymcCode + " " +
                propertymcName + " " +
                buildingCode + " " +
                buildingName + " " +
                buildingFloor + " " +
                suiteName + " " +
                lastmonthWaterUse + " " +
                lastmonthElectricityUse + " " +
                thismonthWaterUse + " " +
                thismonthElectricityUse + " " +
                waterBill + " " +
                electricityBill + " " +
                paidStatus + " " +
                time;
    }
}