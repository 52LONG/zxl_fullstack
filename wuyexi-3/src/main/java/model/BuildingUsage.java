package model;
/*
* 楼栋用途
* */
public class BuildingUsage  {
    private String buildingCode;

    private String purposeCode;

    private String purposeName;

    private String note;

    public String getBuildingCode() {
        return buildingCode;
    }

    public void setBuildingCode(String buildingCode) {
        this.buildingCode = buildingCode;
    }

    public String getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(String purposeCode) {
        this.purposeCode = purposeCode;
    }

    public String getPurposeName() {
        return purposeName;
    }

    public void setPurposeName(String purposeName) {
        this.purposeName = purposeName;
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
                "楼栋用途 "+buildingCode + " " +
                        purposeCode + " "+
        purposeName + " " +
                note;
    }
}