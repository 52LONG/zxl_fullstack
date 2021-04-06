package model;

/*
* 客户实体
* */
public class Client{
    private String clientCode;

    private String clientName;

    public String getClientCode() {
        return clientCode;
    }

    public void setClientCode(String clientCode) {
        this.clientCode = clientCode;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    @Override
    public String toString() {
        return "客户类型 " +
                clientCode + " " +
                clientName + " " +
                "";
    }
}