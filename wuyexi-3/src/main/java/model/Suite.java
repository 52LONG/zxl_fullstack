package model;

/*
* 套房 实体
* */

public class Suite {
    private String suiteCode;

    private String itemCode;

    private String buildingCode;

    private String buildingName;

    private String owner;

    private String regionCode;

    private Double buildingArea;

    private String floor;

    private String suiteName;

    private String suiteLawNo;

    private String suitePropertyCardno;

    private Double useArea;

    private Double averageArea;

    private Double suiteArea;

    private Double actualUseArea;

    private String roomStructure;

    private Integer roomNum;

    private String purposeCode;

    private Integer useStatus;

    private Integer activeStatus;

    private String note;

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
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

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public Double getBuildingArea() {
        return buildingArea;
    }

    public void setBuildingArea(Double buildingArea) {
        this.buildingArea = buildingArea;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getSuiteName() {
        return suiteName;
    }

    public void setSuiteName(String suiteName) {
        this.suiteName = suiteName;
    }

    public String getSuiteLawNo() {
        return suiteLawNo;
    }

    public void setSuiteLawNo(String suiteLawNo) {
        this.suiteLawNo = suiteLawNo;
    }

    public String getSuitePropertyCardno() {
        return suitePropertyCardno;
    }

    public void setSuitePropertyCardno(String suitePropertyCardno) {
        this.suitePropertyCardno = suitePropertyCardno;
    }

    public Double getUseArea() {
        return useArea;
    }

    public void setUseArea(Double useArea) {
        this.useArea = useArea;
    }

    public Double getAverageArea() {
        return averageArea;
    }

    public void setAverageArea(Double averageArea) {
        this.averageArea = averageArea;
    }

    public Double getSuiteArea() {
        return suiteArea;
    }

    public void setSuiteArea(Double suiteArea) {
        this.suiteArea = suiteArea;
    }

    public Double getActualUseArea() {
        return actualUseArea;
    }

    public void setActualUseArea(Double actualUseArea) {
        this.actualUseArea = actualUseArea;
    }

    public String getRoomStructure() {
        return roomStructure;
    }

    public void setRoomStructure(String roomStructure) {
        this.roomStructure = roomStructure;
    }

    public Integer getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    public String getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(String purposeCode) {
        this.purposeCode = purposeCode;
    }

    public Integer getUseStatus() {
        return useStatus;
    }

    public void setUseStatus(Integer useStatus) {
        this.useStatus = useStatus;
    }

    public Integer getActiveStatus() {
        return activeStatus;
    }

    public void setActiveStatus(Integer activeStatus) {
        this.activeStatus = activeStatus;
    }

    public String getNote() {
        return note;
    }

    @Override
    public String toString() {
        return "套房 " +
                suiteCode + " " +
                itemCode + " " +
                buildingCode + " " +
                buildingName + " " +
                owner + " " +
                regionCode + " "+
                buildingArea + " " +
                floor + " " +
                suiteName + " " +
                suiteLawNo + " " +
                suitePropertyCardno + " " +
                useArea + " " +
                averageArea + " " +
                suiteArea + " " +
                actualUseArea + " " +
                roomStructure + " " +
                roomNum + " " +
                purposeCode + " " +
                useStatus + " " +
                activeStatus + " " +
                note + " " +
                "";
    }

    public void setNote(String note) {
        this.note = note;
    }
}