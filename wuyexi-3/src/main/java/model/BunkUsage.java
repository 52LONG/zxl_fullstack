package model;

/*
 * 铺位历史使用状态
 * */

import java.sql.Timestamp;

public class BunkUsage{
    private String bunkCode;

    private Integer useStatus;

    private Timestamp useBeginTime;

    private Timestamp useEndTime;

    private Integer nohStatus;

    private String note;

    public String getBunkCode() {
        return bunkCode;
    }

    public void setBunkCode(String bunkCode) {
        this.bunkCode = bunkCode;
    }

    public Integer getUseStatus() {
        return useStatus;
    }

    public void setUseStatus(Integer useStatus) {
        this.useStatus = useStatus;
    }

    public Timestamp getUseBeginTime() {
        return useBeginTime;
    }

    public void setUseBeginTime(Timestamp useBeginTime) {
        this.useBeginTime = useBeginTime;
    }

    public Timestamp getUseEndTime() {
        return useEndTime;
    }

    public void setUseEndTime(Timestamp useEndTime) {
        this.useEndTime = useEndTime;
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

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "床位用途  " +
                bunkCode + " " +
                useStatus + " " +
                useBeginTime + " " +
                useEndTime + " " +
                nohStatus + " " +
                note ;
    }
}