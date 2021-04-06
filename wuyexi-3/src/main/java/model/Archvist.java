package model;

/*
* 档案管理员
* */

public class Archvist {
    private String id;

    private String name;

    private String password;

    private String emid;

    private String emdartment;

    public Archvist() {
    }

    public Archvist(String id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
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

    public String getEmdartment() {
        return emdartment;
    }

    public void setEmdartment(String emdartment) {
        this.emdartment = emdartment;
    }

    @Override
    public String toString() {
        return "Archvist{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}