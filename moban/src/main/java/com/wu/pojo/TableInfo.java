package com.wu.pojo;

public class TableInfo {

    private String zcmc;
    private String fwjg;
    private String bbrq;
    private String zcfl;

    public TableInfo() {
    }

    public TableInfo(String zcmc, String fwjg, String bbrq, String zcfl) {
        this.zcmc = zcmc;
        this.fwjg = fwjg;
        this.bbrq = bbrq;
        this.zcfl = zcfl;
    }

    public String getZcmc() {
        return zcmc;
    }

    public void setZcmc(String zcmc) {
        this.zcmc = zcmc;
    }

    public String getFwjg() {
        return fwjg;
    }

    public void setFwjg(String fwjg) {
        this.fwjg = fwjg;
    }

    public String getBbrq() {
        return bbrq;
    }

    public void setBbrq(String bbrq) {
        this.bbrq = bbrq;
    }

    public String getZcfl() {
        return zcfl;
    }

    public void setZcfl(String zcfl) {
        this.zcfl = zcfl;
    }
}
