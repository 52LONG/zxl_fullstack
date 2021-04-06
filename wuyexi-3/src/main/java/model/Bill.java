package model;

/*
 *  账单实体类
 * */

import java.sql.Timestamp;

public class Bill {
    private String billCode;

    private String departmentCode;

    private String regionCode;

    private String propertymcCode;

    private String buildingCode;

    private String floor;

    private String suiteCode;

    private String roomCode;

    private String bunkCode;

    private String contractno;

    private String clientCode;

    private Double unit;

    private Double num;

    private Double taxRate;

    private Double chargeWithTax;

    private Double taxAmount;

    private Double amount;

    private Double chargedAmount;

    private Double contract;

    private Timestamp billBeginTime;

    private Timestamp billEndTime;

    private Integer bigAmount;

    private Integer ispaid;

    private String emid;

    private Timestamp setupTime;

    private Integer paid;

    private Integer setupPaid;

    private String note;

    public String getBillCode() {
        return billCode;
    }

    public void setBillCode(String billCode) {
        this.billCode = billCode;
    }

    public String getDepartmentCode() {
        return departmentCode;
    }

    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
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

    public String getBuildingCode() {
        return buildingCode;
    }

    public void setBuildingCode(String buildingCode) {
        this.buildingCode = buildingCode;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
    }

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    public String getBunkCode() {
        return bunkCode;
    }

    public void setBunkCode(String bunkCode) {
        this.bunkCode = bunkCode;
    }

    public String getContractno() {
        return contractno;
    }

    public void setContractno(String contractno) {
        this.contractno = contractno;
    }

    public String getClientCode() {
        return clientCode;
    }

    public void setClientCode(String clientCode) {
        this.clientCode = clientCode;
    }

    public Double getUnit() {
        return unit;
    }

    public void setUnit(Double unit) {
        this.unit = unit;
    }

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }

    public Double getTaxRate() {
        return taxRate;
    }

    public void setTaxRate(Double taxRate) {
        this.taxRate = taxRate;
    }

    public Double getChargeWithTax() {
        return chargeWithTax;
    }

    public void setChargeWithTax(Double chargeWithTax) {
        this.chargeWithTax = chargeWithTax;
    }

    public Double getTaxAmount() {
        return taxAmount;
    }

    public void setTaxAmount(Double taxAmount) {
        this.taxAmount = taxAmount;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getChargedAmount() {
        return chargedAmount;
    }

    public void setChargedAmount(Double chargedAmount) {
        this.chargedAmount = chargedAmount;
    }

    public Double getContract() {
        return contract;
    }

    public void setContract(Double contract) {
        this.contract = contract;
    }

    public Timestamp getBillBeginTime() {
        return billBeginTime;
    }

    public void setBillBeginTime(Timestamp billBeginTime) {
        this.billBeginTime = billBeginTime;
    }

    public Timestamp getBillEndTime() {
        return billEndTime;
    }

    public void setBillEndTime(Timestamp billEndTime) {
        this.billEndTime = billEndTime;
    }

    public Integer getBigAmount() {
        return bigAmount;
    }

    public void setBigAmount(Integer bigAmount) {
        this.bigAmount = bigAmount;
    }

    public Integer getIspaid() {
        return ispaid;
    }

    public void setIspaid(Integer ispaid) {
        this.ispaid = ispaid;
    }

    public String getEmid() {
        return emid;
    }

    public void setEmid(String emid) {
        this.emid = emid;
    }

    public Timestamp getSetupTime() {
        return setupTime;
    }

    public void setSetupTime(Timestamp setupTime) {
        this.setupTime = setupTime;
    }

    public Integer getPaid() {
        return paid;
    }

    public void setPaid(Integer paid) {
        this.paid = paid;
    }

    public Integer getSetupPaid() {
        return setupPaid;
    }

    public void setSetupPaid(Integer setupPaid) {
        this.setupPaid = setupPaid;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "租房账单  " +
                billCode + " " +
                departmentCode + " " +
                regionCode + " " +
                propertymcCode + " " +
                buildingCode + " " +
                floor + " " +
                suiteCode + " " +
                roomCode + " " +
                bunkCode + " " +
                contractno + " " +
                clientCode + " " +
                unit + " " +
                num + " " +
                taxRate + " " +
                chargeWithTax + " " +
                taxAmount + " " +
                amount + " " +
                chargedAmount + " " +
                contract + " " +
                billBeginTime + " " +
                billEndTime + " " +
                bigAmount + " " +
                ispaid + " " +
                emid + " " +
                setupTime + " " +
                paid + " " +
                setupPaid + " " +
                note + " " +
                "";
    }
}