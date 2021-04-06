package model;

import java.sql.Timestamp;

/**
 *
 * 使用该项目的 部门
 */

public class ItemUsepartment  {
    private String itemCode;

    private String departmentCode;

    private String departmentName;

    private Timestamp beginUseTime;

    private Timestamp endUseTime;

    private String note;

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

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

    public Timestamp getBeginUseTime() {
        return beginUseTime;
    }

    public void setBeginUseTime(Timestamp beginUseTime) {
        this.beginUseTime = beginUseTime;
    }

    public Timestamp getEndUseTime() {
        return endUseTime;
    }

    public void setEndUseTime(Timestamp endUseTime) {
        this.endUseTime = endUseTime;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "部门使用的小区 " +
                itemCode + " " +
                departmentCode + " " +
                departmentName + " " +
                beginUseTime + " " +
                endUseTime + " " +
                note + " " +
                "";
    }
}