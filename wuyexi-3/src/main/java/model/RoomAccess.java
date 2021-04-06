package model;


import java.sql.Timestamp;

public class RoomAccess {
    private String roomCode;

    private String regionCode;

    private String itemCode;

    private String buildingCode;

    private String floor;

    private String suiteCode;

    private Double accessPrice;

    private Timestamp accessBeginTime;

    private Timestamp accessEndTime;

    private Double averagePrice;

    private String supplierCode;

    private String note;

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
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

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
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
        return  "房间评估 "+
                roomCode + " " +
                regionCode + " " +
                itemCode + " " +
                buildingCode + " " +
                floor + " " +
                suiteCode + " " +
                accessPrice + " " +
                accessBeginTime + " " +
                accessEndTime + " " +
                averagePrice + " " +
                supplierCode + " " +
                note;
    }
}