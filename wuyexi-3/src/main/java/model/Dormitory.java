package model;


import java.sql.Timestamp;

/**
 * 租房申请表
 * */

public class Dormitory {
    private String dormitoryCode;

    private Timestamp dormitoryTime;

    private String emname;

    private String emid;

    private String gender;

    private String emdepartment;

    private Integer dormitoryStatus;

    private String phone;

    private String workphone;

    private String educationBackground;

    private Integer incumbency;

    private String idCard;

    private String bankCard;

    private String address;

    private String oldAddress;

    private Integer marriage;

    private Integer changeBunk;

    private Integer zzsz;

    private Integer szhk;

    private Integer zzz;

    private Integer jsx;

    private String reason;

    private String note;

    private String itemCode;

    private String buildingCode;

    private String floor;

    private String suiteCode;

    private String roomCode;

    private String bunkCode;

    private String bunkName;

    public String getDormitoryCode() {
        return dormitoryCode;
    }

    public void setDormitoryCode(String dormitoryCode) {
        this.dormitoryCode = dormitoryCode;
    }

    public Timestamp getDormitoryTime() {
        return dormitoryTime;
    }

    public void setDormitoryTime(Timestamp dormitoryTime) {
        this.dormitoryTime = dormitoryTime;
    }

    public String getEmname() {
        return emname;
    }

    public void setEmname(String emname) {
        this.emname = emname;
    }

    public String getEmid() {
        return emid;
    }

    public void setEmid(String emid) {
        this.emid = emid;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmdepartment() {
        return emdepartment;
    }

    public void setEmdepartment(String emdepartment) {
        this.emdepartment = emdepartment;
    }

    public Integer getDormitoryStatus() {
        return dormitoryStatus;
    }

    public void setDormitoryStatus(Integer dormitoryStatus) {
        this.dormitoryStatus = dormitoryStatus;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getWorkphone() {
        return workphone;
    }

    public void setWorkphone(String workphone) {
        this.workphone = workphone;
    }

    public String getEducationBackground() {
        return educationBackground;
    }

    public void setEducationBackground(String educationBackground) {
        this.educationBackground = educationBackground;
    }

    public Integer getIncumbency() {
        return incumbency;
    }

    public void setIncumbency(Integer incumbency) {
        this.incumbency = incumbency;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getBankCard() {
        return bankCard;
    }

    public void setBankCard(String bankCard) {
        this.bankCard = bankCard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getOldAddress() {
        return oldAddress;
    }

    public void setOldAddress(String oldAddress) {
        this.oldAddress = oldAddress;
    }

    public Integer getMarriage() {
        return marriage;
    }

    public void setMarriage(Integer marriage) {
        this.marriage = marriage;
    }

    public Integer getChangeBunk() {
        return changeBunk;
    }

    public void setChangeBunk(Integer changeBunk) {
        this.changeBunk = changeBunk;
    }

    public Integer getZzsz() {
        return zzsz;
    }

    public void setZzsz(Integer zzsz) {
        this.zzsz = zzsz;
    }

    public Integer getSzhk() {
        return szhk;
    }

    public void setSzhk(Integer szhk) {
        this.szhk = szhk;
    }

    public Integer getZzz() {
        return zzz;
    }

    public void setZzz(Integer zzz) {
        this.zzz = zzz;
    }

    public Integer getJsx() {
        return jsx;
    }

    public void setJsx(Integer jsx) {
        this.jsx = jsx;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
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

    public String getBunkName() {
        return bunkName;
    }

    public void setBunkName(String bunkName) {
        this.bunkName = bunkName;
    }

    @Override
    public String toString() {
        return "租房申请表  " +
                dormitoryCode + " " +
                dormitoryTime + " " +
                emname + " " +
                emid + " " +
                gender + " " +
                emdepartment + " " +
                dormitoryStatus + " " +
                phone + " " +
                workphone + " " +
                educationBackground + " " +
                incumbency + " " +
                idCard + " " +
                bankCard + " " +
                address + " " +
                oldAddress + " " +
                marriage + " " +
                changeBunk + " " +
                zzsz + " " +
                szhk + " " +
                zzz + " " +
                jsx + " " +
                reason + " " +
                note + " " +
                itemCode + " " +
                buildingCode + " " +
                floor + " " +
                suiteCode + " " +
                roomCode + " " +
                bunkCode + " " +
                bunkName;
    }
}