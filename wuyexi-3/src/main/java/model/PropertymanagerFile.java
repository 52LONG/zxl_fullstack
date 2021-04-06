package model;

import java.sql.Timestamp;

public class PropertymanagerFile  {
    private String id;

    private String name;

    private String propertymcCode;

    private String propertymcName;

    private String itemCode;

    private String itemName;

    private String information;

    private Timestamp time;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return
                id + " " +
                name + " " +
                propertymcCode + " " +
                propertymcName + " " +
                itemCode + " " + itemName + " " +
                information + " " +
                time + " " +
                "";
    }
}