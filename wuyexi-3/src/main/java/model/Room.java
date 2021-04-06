package model;


public class Room {
    private String roomCode;

    private String regionCode;

    private String itemCode;

    private String buildingCode;

    private String floor;

    private String suiteCode;

    private String roomName;

    private Integer available;

    private Double availableArea;

    private Double rentArea;

    private Integer bnnkNum;

    private Integer useStatus;

    private String purposeCode;

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

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public Integer getAvailable() {
        return available;
    }

    public void setAvailable(Integer available) {
        this.available = available;
    }

    public Double getAvailableArea() {
        return availableArea;
    }

    public void setAvailableArea(Double availableArea) {
        this.availableArea = availableArea;
    }

    public Double getRentArea() {
        return rentArea;
    }

    public void setRentArea(Double rentArea) {
        this.rentArea = rentArea;
    }

    public Integer getBnnkNum() {
        return bnnkNum;
    }

    public void setBnnkNum(Integer bnnkNum) {
        this.bnnkNum = bnnkNum;
    }

    public Integer getUseStatus() {
        return useStatus;
    }

    public void setUseStatus(Integer useStatus) {
        this.useStatus = useStatus;
    }

    public String getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(String purposeCode) {
        this.purposeCode = purposeCode;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return  "房间 "+
                roomCode + " " +
                regionCode + " " +
                itemCode + " " +
                buildingCode + " " +
                floor + " " +
                suiteCode + " " +
                roomName + " " +
                available + " " +
                availableArea + " " +
                rentArea + " " +
                bnnkNum + " " +
                useStatus + " " +
                purposeCode + " " +
                note + " " +
                "";
    }
}