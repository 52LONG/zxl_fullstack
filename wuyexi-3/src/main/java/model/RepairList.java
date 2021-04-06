package model;


import java.sql.Timestamp;

public class RepairList {
    private String id;

    private String name;

    private String emid;

    private String emdepartment;

    private String itemcode;

    private String itemname;

    private String question;

    private Integer status;

    private Timestamp time;

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

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

    public String getItemcode() {
        return itemcode;
    }

    public void setItemcode(String itemcode) {
        this.itemcode = itemcode;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "报修  " +
                id + " " +
                name + " " +
                emid + " " +
                emdepartment + " " +
                itemcode + " " +
                itemname + " " +
                question + " " +
                status + " " +
                "";
    }
}