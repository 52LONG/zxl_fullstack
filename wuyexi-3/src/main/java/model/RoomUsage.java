package model;


import java.sql.Timestamp;

public class RoomUsage {
    private String roomCode;

    private String purposeCode;

    private String purposeName;

    private Timestamp purposeBeginTime;

    private Timestamp purposeEndTime;

    private Integer nohStatus;

    private String note;

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
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

    public Timestamp getPurposeBeginTime() {
        return purposeBeginTime;
    }

    public void setPurposeBeginTime(Timestamp purposeBeginTime) {
        this.purposeBeginTime = purposeBeginTime;
    }

    public Timestamp getPurposeEndTime() {
        return purposeEndTime;
    }

    public void setPurposeEndTime(Timestamp purposeEndTime) {
        this.purposeEndTime = purposeEndTime;
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
        return  "房间用途 "+
                roomCode + " " +
                purposeCode + " " +
                purposeName + " " +
                purposeBeginTime + " " +
                purposeEndTime + " " +
                nohStatus + " " +
                note;
    }
}