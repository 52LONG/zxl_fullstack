package model;

import java.sql.Timestamp;

/*
* 楼栋评估实体
* */
public class BuildingAccess  {
    private String buildingCode;

    private String regionCode;

    private String itemCode;

    private Double accessPrice;

    private Timestamp accessBeginTime;

    private Timestamp accessEndTime;

    private Double averagePrice;

    private String supplierName;

    private String note;


    public String getBuildingCode() {
        return buildingCode;
    }

    public void setBuildingCode(String buildingCode) {
        this.buildingCode = buildingCode;
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

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return
                "楼栋评估 "+buildingCode + " " +
                        regionCode + " " +
                        itemCode + " " +
                        accessPrice + " " +
                        accessBeginTime + " " +
                        accessEndTime + " " +
                        averagePrice + " " +
                        supplierName + " " +
                        note + " ";
    }
}