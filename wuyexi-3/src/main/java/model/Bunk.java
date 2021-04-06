package model;

/*
 * 床位实体类
 * */
public class Bunk {
    private String bunkCode;

    private String roomCode;

    private String roomName;

    private String bunkName;

    private Double availableArea;

    private Double rentArea;

    private Integer useStatus;

    private Integer activeStatus;

    private String note;

    public String getBunkCode() {
        return bunkCode;
    }

    public void setBunkCode(String bunkCode) {
        this.bunkCode = bunkCode;
    }

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getBunkName() {
        return bunkName;
    }

    public void setBunkName(String bunkName) {
        this.bunkName = bunkName;
    }

    public Double getAvailableArea() {
        return availableArea;
    }

    public void setAvailableArea(Double availableArea) {
        this.availableArea = availableArea;
    }

    public Double getRentArea() {
        return rentArea;
    }

    public void setRentArea(Double rentArea) {
        this.rentArea = rentArea;
    }

    public Integer getUseStatus() {
        return useStatus;
    }

    public void setUseStatus(Integer useStatus) {
        this.useStatus = useStatus;
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
        return "床位  " +
                bunkCode + " " +
                roomCode + " " +
                roomName + " " +
                bunkName + " " +
                availableArea + " " +
                rentArea + " " +
                useStatus + " " +
                activeStatus + " " +
                note + " " +
                "";
    }
}