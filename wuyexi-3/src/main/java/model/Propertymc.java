package model;

/***
 * 物业部门 实体
 */

public class Propertymc{
    private String propertyMcCode;

    private String propertyMcName;

    public String getPropertyMcCode() {
        return propertyMcCode;
    }

    public void setPropertyMcCode(String propertyMcCode) {
        this.propertyMcCode = propertyMcCode;
    }

    public String getPropertyMcName() {
        return propertyMcName;
    }

    public void setPropertyMcName(String propertyMcName) {
        this.propertyMcName = propertyMcName;
    }

    @Override
    public String toString() {
        return "物业公司 " +
                propertyMcCode + " " +
                propertyMcName + " " +
                "";
    }
}