package model;

/**
 * 收费标准
 * */

public class Charge {
    private String chargeCode;

    private String chargeName;

    private String itemCode;

    private Integer activeStatus;

    private String note;

    public String getChargeCode() {
        return chargeCode;
    }

    public void setChargeCode(String chargeCode) {
        this.chargeCode = chargeCode;
    }

    public String getChargeName() {
        return chargeName;
    }

    public void setChargeName(String chargeName) {
        this.chargeName = chargeName;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
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

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "收费  " +
                chargeCode + " " +
                chargeName + " " +
                itemCode + " " +
                activeStatus + " " +
                note + " " +
                "";
    }
}