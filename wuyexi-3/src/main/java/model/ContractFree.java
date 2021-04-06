package model;


import java.sql.Timestamp;

/*
 * 合同 免租
 * */
public class ContractFree {
    private String contractno;

    private String suiteCode;

    private String suiteName;

    private Timestamp freeBeginTime;

    private Timestamp freeEndTime;

    private Integer days;

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

    public Timestamp getFreeBeginTime() {
        return freeBeginTime;
    }

    public void setFreeBeginTime(Timestamp freeBeginTime) {
        this.freeBeginTime = freeBeginTime;
    }

    public Timestamp getFreeEndTime() {
        return freeEndTime;
    }

    public void setFreeEndTime(Timestamp freeEndTime) {
        this.freeEndTime = freeEndTime;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "合同免租  " +
                contractno + " " +
                suiteCode + " " +
                suiteName + " " +
                freeBeginTime + " " +
                freeEndTime + " " +
                days + " " +
                note + " " +
                "";
    }
}