package model;

/*
 用途编码
**/
public class Purpose {
    private String purposeCode;

    private String purposeName;

    public String getPurposeCode() {
        return purposeCode;
    }

    public void setPurposeCode(String purposeCode) {
        this.purposeCode = purposeCode;
    }

    public String getPurposeName() {
        return purposeName;
    }

    public void setPurposeName(String purposeName) {
        this.purposeName = purposeName;
    }

    @Override
    public String toString() {
        return "用途类型 " +
                purposeCode + " " +
                purposeName + " " +
                "";
    }
}
