package model;

import java.sql.Timestamp;

/*
* 套房评估
* */
public class SuiteAccess  {
    private String suiteCode;

    private String regionCode;

    private String itemCode;

    private String buildingCode;

    private String buildingFloor;

    private Double accessPrice;

    private Timestamp accessBeginTime;

    private Timestamp accessEndTime;

    private Double averagePrice;

    private String supplierCode;

    private String note;

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

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getBuildingCode() {
        return buildingCode;
    }

    public void setBuildingCode(String buildingCode) {
        this.buildingCode = buildingCode;
    }

    public String getBuildingFloor() {
        return buildingFloor;
    }

    public void setBuildingFloor(String buildingFloor) {
        this.buildingFloor = buildingFloor;
    }

    public Double getAccessPrice() {
        return accessPrice;
    }

    public void setAccessPrice(Double accessPrice) {
        this.accessPrice = accessPrice;
    }

    public Timestamp getAccessBeginTime() {
        return accessBeginTime;
    }

    public void setAccessBeginTime(Timestamp accessBeginTime) {
        this.accessBeginTime = accessBeginTime;
    }

    public Timestamp getAccessEndTime() {
        return accessEndTime;
    }

    public void setAccessEndTime(Timestamp accessEndTime) {
        this.accessEndTime = accessEndTime;
    }

    public Double getAveragePrice() {
        return averagePrice;
    }

    public void setAveragePrice(Double averagePrice) {
        this.averagePrice = averagePrice;
    }

    public String getSupplierCode() {
        return supplierCode;
    }

    public void setSupplierCode(String supplierCode) {
        this.supplierCode = supplierCode;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "套房评估 " +
                suiteCode + " " +
                regionCode + " " +
                itemCode + " " +
                buildingCode + " " +
                buildingFloor + " " +
                accessPrice + " " +
                accessBeginTime + " " +
                accessEndTime + " " +
                averagePrice + " " +
                supplierCode + " " +
                note + " " +
                "";
    }
}