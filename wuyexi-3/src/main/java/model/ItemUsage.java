package model;

/**
 * 项目 用途
 * */

public class ItemUsage {
    private String itemCode;

    private String purposeCode;

    private String pursposeName;

    private String note;

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(String purposeCode) {
        this.purposeCode = purposeCode;
    }

    public String getPursposeName() {
        return pursposeName;
    }

    public void setPursposeName(String pursposeName) {
        this.pursposeName = pursposeName;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "小区用途 " +
                itemCode + " " +
                purposeCode + " " +
                pursposeName + " " +
                note + " " +
                "";
    }
}