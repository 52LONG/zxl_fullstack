package model;

/*
 * 合同 套房
 * */
public class ContractSuite {
    private String contractno;

    private String regionCode;

    private String itemCode;

    private String buildingCode;

    private String buildingName;

    private String floor;

    private String suiteCode;

    private String suiteName;

    private String roomCode;

    private String bunkCode;

    private Double useArea;

    private Double averageArea;

    private Double suiteArea;

    private Double actualUseArea;

    private String note;

    public String getContractno() {
        return contractno;
    }

    public void setContractno(String contractno) {
        this.contractno = contractno;
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

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
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

    public String getSuiteName() {
        return suiteName;
    }

    public void setSuiteName(String suiteName) {
        this.suiteName = suiteName;
    }

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    public String getBunkCode() {
        return bunkCode;
    }

    public void setBunkCode(String bunkCode) {
        this.bunkCode = bunkCode;
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "合同套房  " +
                contractno + " " +
                regionCode + " " +
                itemCode + " " +
                buildingCode + " " +
                buildingName + " " +
                floor + " " +
                suiteCode + " " +
                suiteName + " " +
                roomCode + " " +
                bunkCode + " " +
                useArea + " " +
                averageArea + " " +
                suiteArea + " " +
                actualUseArea + " " +
                note + " " +
                "";
    }
}