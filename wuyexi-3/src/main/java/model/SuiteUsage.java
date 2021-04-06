package model;

import java.sql.Timestamp;

/*
* 套房用途
* */
public class SuiteUsage{
    private String suiteCode;

    private String purposeCode;

    private String purposeName;

    private Timestamp beginUseTime;

    private Timestamp endUseTime;

    private Integer nohStatus;

    private String note;

    public String getSuiteCode() {
        return suiteCode;
    }

    public void setSuiteCode(String suiteCode) {
        this.suiteCode = suiteCode;
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

    public Timestamp getBeginUseTime() {
        return beginUseTime;
    }

    public void setBeginUseTime(Timestamp beginUseTime) {
        this.beginUseTime = beginUseTime;
    }

    public Timestamp getEndUseTime() {
        return endUseTime;
    }

    public void setEndUseTime(Timestamp endUseTime) {
        this.endUseTime = endUseTime;
    }

    public Integer getNohStatus() {
        return nohStatus;
    }

    public void setNohStatus(Integer nohStatus) {
        this.nohStatus = nohStatus;
    }

    public String getNote() {
        return note;
    }

    @Override
    public String toString() {
        return "房间用途 " +
                suiteCode + " " +
                purposeCode + " " +
                purposeName + " " +
                beginUseTime + " " +
                endUseTime + " " +
                nohStatus + " " +
                note + " " +
                "";
    }

    public void setNote(String note) {
        this.note = note;
    }
}