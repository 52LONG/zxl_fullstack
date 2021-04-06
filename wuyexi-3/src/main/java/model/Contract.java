package model;


import java.sql.Timestamp;

/*
 * 合同表头实体
 * */
public class Contract {
    private String contractno;

    private String departmentCode;

    private String company;

    private String client;

    private Double contractArea;

    private Integer purposeCode;

    private Double contractAmount;

    private Double contractChangeTax;

    private Double contractMoney;

    private Double contractChanged;

    private Timestamp contractBeginTime;

    private Timestamp contractEndTime;

    private Timestamp contractSignTime;

    private Integer contractStatus;

    private Timestamp incumbency;

    private Timestamp endContract;

    private String endReason;

    private String endClient;

    public String getContractno() {
        return contractno;
    }

    public void setContractno(String contractno) {
        this.contractno = contractno;
    }

    public String getDepartmentCode() {
        return departmentCode;
    }

    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public Double getContractArea() {
        return contractArea;
    }

    public void setContractArea(Double contractArea) {
        this.contractArea = contractArea;
    }

    public Integer getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(Integer purposeCode) {
        this.purposeCode = purposeCode;
    }

    public Double getContractAmount() {
        return contractAmount;
    }

    public void setContractAmount(Double contractAmount) {
        this.contractAmount = contractAmount;
    }

    public Double getContractChangeTax() {
        return contractChangeTax;
    }

    public void setContractChangeTax(Double contractChangeTax) {
        this.contractChangeTax = contractChangeTax;
    }

    public Double getContractMoney() {
        return contractMoney;
    }

    public void setContractMoney(Double contractMoney) {
        this.contractMoney = contractMoney;
    }

    public Double getContractChanged() {
        return contractChanged;
    }

    public void setContractChanged(Double contractChanged) {
        this.contractChanged = contractChanged;
    }

    public Timestamp getContractBeginTime() {
        return contractBeginTime;
    }

    public void setContractBeginTime(Timestamp contractBeginTime) {
        this.contractBeginTime = contractBeginTime;
    }

    public Timestamp getContractEndTime() {
        return contractEndTime;
    }

    public void setContractEndTime(Timestamp contractEndTime) {
        this.contractEndTime = contractEndTime;
    }

    public Timestamp getContractSignTime() {
        return contractSignTime;
    }

    public void setContractSignTime(Timestamp contractSignTime) {
        this.contractSignTime = contractSignTime;
    }

    public Integer getContractStatus() {
        return contractStatus;
    }

    public void setContractStatus(Integer contractStatus) {
        this.contractStatus = contractStatus;
    }

    public Timestamp getIncumbency() {
        return incumbency;
    }

    public void setIncumbency(Timestamp incumbency) {
        this.incumbency = incumbency;
    }

    public Timestamp getEndContract() {
        return endContract;
    }

    public void setEndContract(Timestamp endContract) {
        this.endContract = endContract;
    }

    public String getEndReason() {
        return endReason;
    }

    public void setEndReason(String endReason) {
        this.endReason = endReason;
    }

    public String getEndClient() {
        return endClient;
    }

    public void setEndClient(String endClient) {
        this.endClient = endClient;
    }

    @Override
    public String toString() {
        return "合同  " +
                contractno + " " +
                departmentCode + " " +
                company + " " +
                client + " " +
                contractArea + " " +
                purposeCode + " " +
                contractAmount + " " +
                contractChangeTax + " " +
                contractMoney + " " +
                contractChanged + " " +
                contractBeginTime + " " +
                contractEndTime + " " +
                contractSignTime + " " +
                contractStatus + " " +
                incumbency + " " +
                endContract + " " +
                endReason + " " +
                endClient + " " +
                "";
    }
}