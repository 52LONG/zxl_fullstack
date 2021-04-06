package model;


import java.sql.Timestamp;

/*
* 档案管理员的所有操作
* */
public class ArchvistFile {
    private String id;

    private String name;

    private String emid;

    private String emdepartment;

    private Integer type;

    private String information;

    private Timestamp time;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }


}