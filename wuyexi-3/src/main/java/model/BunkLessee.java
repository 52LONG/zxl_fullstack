package model;

import java.sql.Timestamp;

/**
 * 铺位租户
 * */
public class BunkLessee{
    private String bunkCode;

    private String client;

    private Timestamp useBeginTime;

    private Timestamp useEndTime;

    private String note;

    public String getBunkCode() {
        return bunkCode;
    }

    public void setBunkCode(String bunkCode) {
        this.bunkCode = bunkCode;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "床位使用历史  " +
                bunkCode + " " +
                client + " " +
                useBeginTime + " " +
                useEndTime + " " +
                note ;
    }
}