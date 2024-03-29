package model;
/*
* 供应商实体
* */
public class Supplier {
    private String supplierCode;

    private String supplierName;

    public String getSupplierCode() {
        return supplierCode;
    }

    public void setSupplierCode(String supplierCode) {
        this.supplierCode = supplierCode;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    @Override
    public String toString() {
        return "开发商 " +
                supplierCode + " " +
                supplierName + " " +
                "";
    }
}