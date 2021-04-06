package model;

import java.sql.Timestamp;

/*
* 员工 实体
* */

public class Employee {
    private String id;

    private String name;

    private String gender;

    private String password;

    private String emid;

    private String emdepartment;

    private String phone;

    private String workphone;

    private String educationBackground;

    private Integer incumbency;

    private String idCard;

    private String bankCard;

    private String address;

    private Integer marriage;

    private String ClientCode;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmid() {
        return emid;
    }

    public void setEmid(String emid) {
        this.emid = emid;
    }

    public String getEmdepartment() {
        return emdepartment;
    }

    public void setEmdepartment(String emdepartment) {
        this.emdepartment = emdepartment;
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

    public Integer getMarriage() {
        return marriage;
    }

    public void setMarriage(Integer marriage) {
        this.marriage = marriage;
    }

    public String getClientCode() {
        return ClientCode;
    }

    public void setClientCode(String clientCode) {
        ClientCode = clientCode;
    }

    @Override
    public String toString() {
        return "用户 " +
                id + " " +
                name + " " +
                gender + " " +
                emid + " " +
                emdepartment + " " +
                phone + " " +
                workphone + " " +
                educationBackground + " " +
                incumbency + " " +
                idCard + " " +
                bankCard + " " +
                address + " " +
                marriage + " " +
                ClientCode + " " +
                "";
    }
}