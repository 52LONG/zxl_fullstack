package model;
/**
 * 部门 实体
 * */
public class Department  {
    private String departmentCode;

    private String departmentName;

    public String getDepartmentCode() {
        return departmentCode;
    }

    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    @Override
    public String toString() {
        return "部门 " +
                departmentCode + " " +
                departmentName + " " +
                "";
    }
}