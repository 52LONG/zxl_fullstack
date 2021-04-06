package model;

/*
* 区域编码
* */
public class Region {
    private String regionCode;

    private String regionName;

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    @Override
    public String toString() {
        return "区域 "+regionCode+" "+regionName ;
    }
}