package model;

/*
* 项目 实体
* */

public class Item {
    private String itemCode;

    private String itemName;

    private String itemAddress;

    private String regionCode;

    private String propertymcCode;

    private Double area;

    private Integer status;

    private String note;

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

    public String getItemAddress() {
        return itemAddress;
    }

    public void setItemAddress(String itemAddress) {
        this.itemAddress = itemAddress;
    }

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public String getPropertymcCode() {
        return propertymcCode;
    }

    public void setPropertymcCode(String propertymcCode) {
        this.propertymcCode = propertymcCode;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "小区 " +
                itemCode + " " +
                itemName + " " +
                itemAddress + " " +
                regionCode + " " +
                propertymcCode + " " +
                area + " " +
                status + " " +
                note + " " +
                "";
    }
}