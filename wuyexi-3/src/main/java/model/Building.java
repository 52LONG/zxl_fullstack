package model;

import java.sql.Timestamp;
/*
 * 楼栋实体
 * */
public class Building  {
    private String buildingCode;

    private String buildingName;

    private String lawOwner;

    private String owner;

    private String regionCode;

    private String itemCode;

    private String assetCardno;

    private String buildingAddress;

    private Double totalArea;

    private String landno;

    private String landPurpose;

    private Timestamp beginUseTime;

    private Timestamp endUseTime;

    private Timestamp completedTime;

    private Timestamp buyOrRentTime;

    private String purchaseWay;

    private String propertymcCode;

    private Integer totalFloor;

    private Double useArea;

    private Double addressArea;

    private String rightPurpose;

    private Double limittedUsetime;

    private Double leftUsetime;

    private String rightno;

    private String buyFrom;

    private Double cost;

    private String buildingStructure;

    private String note;

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

    public String getLawOwner() {
        return lawOwner;
    }

    public void setLawOwner(String lawOwner) {
        this.lawOwner = lawOwner;
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

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getAssetCardno() {
        return assetCardno;
    }

    public void setAssetCardno(String assetCardno) {
        this.assetCardno = assetCardno;
    }

    public String getBuildingAddress() {
        return buildingAddress;
    }

    public void setBuildingAddress(String buildingAddress) {
        this.buildingAddress = buildingAddress;
    }

    public Double getTotalArea() {
        return totalArea;
    }

    public void setTotalArea(Double totalArea) {
        this.totalArea = totalArea;
    }

    public String getLandno() {
        return landno;
    }

    public void setLandno(String landno) {
        this.landno = landno;
    }

    public String getLandPurpose() {
        return landPurpose;
    }

    public void setLandPurpose(String landPurpose) {
        this.landPurpose = landPurpose;
    }

    public Timestamp getBeginUseTime() {
        return beginUseTime;
    }

    public void setBeginUseTime(Timestamp beginUseTime) {
        this.beginUseTime = beginUseTime;
    }

    public Timestamp getEndUseTime() {
        return endUseTime;
    }

    public void setEndUseTime(Timestamp endUseTime) {
        this.endUseTime = endUseTime;
    }

    public Timestamp getCompletedTime() {
        return completedTime;
    }

    public void setCompletedTime(Timestamp completedTime) {
        this.completedTime = completedTime;
    }

    public Timestamp getBuyOrRentTime() {
        return buyOrRentTime;
    }

    public void setBuyOrRentTime(Timestamp buyOrRentTime) {
        this.buyOrRentTime = buyOrRentTime;
    }

    public String getPurchaseWay() {
        return purchaseWay;
    }

    public void setPurchaseWay(String purchaseWay) {
        this.purchaseWay = purchaseWay;
    }

    public String getPropertymcCode() {
        return propertymcCode;
    }

    public void setPropertymcCode(String propertymcCode) {
        this.propertymcCode = propertymcCode;
    }

    public Integer getTotalFloor() {
        return totalFloor;
    }

    public void setTotalFloor(Integer totalFloor) {
        this.totalFloor = totalFloor;
    }

    public Double getUseArea() {
        return useArea;
    }

    public void setUseArea(Double useArea) {
        this.useArea = useArea;
    }

    public Double getAddressArea() {
        return addressArea;
    }

    public void setAddressArea(Double addressArea) {
        this.addressArea = addressArea;
    }

    public String getRightPurpose() {
        return rightPurpose;
    }

    public void setRightPurpose(String rightPurpose) {
        this.rightPurpose = rightPurpose;
    }

    public Double getLimittdUsetime() {
        return limittedUsetime;
    }

    public void setLimittdUsetime(Double limittdUsetime) {
        this.limittedUsetime = limittdUsetime;
    }

    public Double getLeftUsetime() {
        return leftUsetime;
    }

    public void setLeftUsetime(Double leftUsetime) {
        this.leftUsetime = leftUsetime;
    }

    public String getRightno() {
        return rightno;
    }

    public void setRightno(String rightno) {
        this.rightno = rightno;
    }

    public String getBuyFrom() {
        return buyFrom;
    }

    public void setBuyFrom(String buyFrom) {
        this.buyFrom = buyFrom;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public String getBuildingStructure() {
        return buildingStructure;
    }

    public void setBuildingStructure(String buildingStructure) {
        this.buildingStructure = buildingStructure;
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
                "楼栋 "+buildingCode + " " +
                        buildingName + " " +
                        lawOwner + " " +
                        owner + " " +
                        regionCode + " " +
                        itemCode + " " +
                        assetCardno + " " +
                        buildingAddress + " " +
                        totalArea + " " +
                        landno + " " +
                        landPurpose + " " +
                        beginUseTime + " " +
                        endUseTime + " " +
                        completedTime + " " +
                        buyOrRentTime + " " +
                        purchaseWay + " " +
                        propertymcCode + " " +
                        totalFloor + " " +
                        useArea + " " +
                        addressArea + " " +
                        rightPurpose + " " +
                        limittedUsetime + " " +
                        leftUsetime + " " +
                        rightno + " " +
                        buyFrom + " " +
                        cost + " " +
                        buildingStructure + " " +
                        note + " ";
    }
}