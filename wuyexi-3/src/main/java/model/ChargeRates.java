package model;

import java.sql.Timestamp;

/*
 * 收费标准表体实体
 * */
public class ChargeRates {
    private String chargeCode;

    private Double price;

    private String chargeUnit;

    private String chargeWay;

    private Integer chargeCycle;

    private Timestamp activeTime;

    private Timestamp disabledTime;

    private Integer incumbency;

    private String incumbencyDesc;

    private Integer incumbencyBegin;

    private Integer incumbencyEnd;

    private String note;

    public String getChargeCode() {
        return chargeCode;
    }

    public void setChargeCode(String chargeCode) {
        this.chargeCode = chargeCode;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getChargeUnit() {
        return chargeUnit;
    }

    public void setChargeUnit(String chargeUnit) {
        this.chargeUnit = chargeUnit;
    }

    public String getChargeWay() {
        return chargeWay;
    }

    public void setChargeWay(String chargeWay) {
        this.chargeWay = chargeWay;
    }

    public Integer getChargeCycle() {
        return chargeCycle;
    }

    public void setChargeCycle(Integer chargeCycle) {
        this.chargeCycle = chargeCycle;
    }

    public Timestamp getActiveTime() {
        return activeTime;
    }

    public void setActiveTime(Timestamp activeTime) {
        this.activeTime = activeTime;
    }

    public Timestamp getDisabledTime() {
        return disabledTime;
    }

    public void setDisabledTime(Timestamp disabledTime) {
        this.disabledTime = disabledTime;
    }

    public Integer getIncumbency() {
        return incumbency;
    }

    public void setIncumbency(Integer incumbency) {
        this.incumbency = incumbency;
    }

    public String getIncumbencyDesc() {
        return incumbencyDesc;
    }

    public void setIncumbencyDesc(String incumbencyDesc) {
        this.incumbencyDesc = incumbencyDesc;
    }

    public Integer getIncumbencyBegin() {
        return incumbencyBegin;
    }

    public void setIncumbencyBegin(Integer incumbencyBegin) {
        this.incumbencyBegin = incumbencyBegin;
    }

    public Integer getIncumbencyEnd() {
        return incumbencyEnd;
    }

    public void setIncumbencyEnd(Integer incumbencyEnd) {
        this.incumbencyEnd = incumbencyEnd;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "收费标准  " +
                chargeCode + " " +
                price + " " +
                chargeUnit + " " +
                chargeWay + " " +
                chargeCycle + " " +
                activeTime + " " +
                disabledTime + " " +
                incumbency + " " +
                incumbencyDesc + " " +
                incumbencyBegin + " " +
                incumbencyEnd + " " +
                note + " " +
                "";
    }
}