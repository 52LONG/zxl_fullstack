package model;

/*
* 部门管理员
* */
public class Departmenter {
    private String id;

    private String name;

    private String password;

    private String emid;

    private String emdepartment;

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

    public String getEmdepartment() {
        return emdepartment;
    }

    public void setEmdepartment(String emdepartment) {
        this.emdepartment = emdepartment;
    }

    @Override
    public String toString() {
        return "Departmenter{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}