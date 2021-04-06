package model;

import java.sql.Timestamp;

/*
 * 合同 费用
 * */
public class ContractFee{
    private String contractno;

    private String suiteCode;

    private String suiteName;

    private String chargeCode;

    private String chargeName;

    private Double chargeUnit;

    private String chargeCycle;

    private Timestamp changeBeginTime;

    private Timestamp changeEndTime;

    private Timestamp chargeDay;

    private String note;

    public String getContractno() {
        return contractno;
    }

    public void setContractno(String contractno) {
        this.contractno = contractno;
    }

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
    }

    public String getSuiteName() {
        return suiteName;
    }

    public void setSuiteName(String suiteName) {
        this.suiteName = suiteName;
    }

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

    public Double getChargeUnit() {
        return chargeUnit;
    }

    public void setChargeUnit(Double chargeUnit) {
        this.chargeUnit = chargeUnit;
    }

    public String getChargeCycle() {
        return chargeCycle;
    }

    public void setChargeCycle(String chargeCycle) {
        this.chargeCycle = chargeCycle;
    }

    public Timestamp getChangeBeginTime() {
        return changeBeginTime;
    }

    public void setChangeBeginTime(Timestamp changeBeginTime) {
        this.changeBeginTime = changeBeginTime;
    }

    public Timestamp getChangeEndTime() {
        return changeEndTime;
    }

    public void setChangeEndTime(Timestamp changeEndTime) {
        this.changeEndTime = changeEndTime;
    }

    public Timestamp getChargeDay() {
        return chargeDay;
    }

    public void setChargeDay(Timestamp chargeDay) {
        this.chargeDay = chargeDay;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "合同费用  " +
                contractno + " " +
                suiteCode + " " +
                suiteName + " " +
                chargeCode + " " +
                chargeName + " " +
                chargeUnit + " " +
                chargeCycle + " " +
                changeBeginTime + " " +
                changeEndTime + " " +
                chargeDay + " " +
                note + " " +
                "";
    }
}