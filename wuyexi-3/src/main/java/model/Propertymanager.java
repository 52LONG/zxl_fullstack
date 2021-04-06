package model;

/*
* 物业管理员
* */
public class Propertymanager{
    private String id;

    private String name;

    private String password;

    private String PropertymcCode;

    private String PropertymcName;

    private String ItemCode;

    private String ItemName;

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPropertymcCode() {
        return PropertymcCode;
    }

    public void setPropertymcCode(String propertymcCode) {
        PropertymcCode = propertymcCode;
    }

    public String getPropertymcName() {
        return PropertymcName;
    }

    public void setPropertymcName(String propertymcName) {
        PropertymcName = propertymcName;
    }

    public String getItemCode() {
        return ItemCode;
    }

    public void setItemCode(String itemCode) {
        ItemCode = itemCode;
    }

    public String getItemName() {
        return ItemName;
    }

    public void setItemName(String itemName) {
        ItemName = itemName;
    }

    @Override
    public String toString() {
        return
                id + " " +
                name + " " +
                password + " " +
                PropertymcCode + " " +
                PropertymcName + " " +
                ItemCode + " " +
                ItemName;
    }
}