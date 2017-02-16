package com.amwyanhoo.entity;

public class PfUser {
    private String userid;

    private Short iadmintype;

    private Short iadminstatus;

    private String username;

    private String cadmininfo;

    private String cadminsn;

    private String cadmincert;

    private String sex;

    private String password;

    private String caserialnumber;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Short getIadmintype() {
        return iadmintype;
    }

    public void setIadmintype(Short iadmintype) {
        this.iadmintype = iadmintype;
    }

    public Short getIadminstatus() {
        return iadminstatus;
    }

    public void setIadminstatus(Short iadminstatus) {
        this.iadminstatus = iadminstatus;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getCadmininfo() {
        return cadmininfo;
    }

    public void setCadmininfo(String cadmininfo) {
        this.cadmininfo = cadmininfo == null ? null : cadmininfo.trim();
    }

    public String getCadminsn() {
        return cadminsn;
    }

    public void setCadminsn(String cadminsn) {
        this.cadminsn = cadminsn == null ? null : cadminsn.trim();
    }

    public String getCadmincert() {
        return cadmincert;
    }

    public void setCadmincert(String cadmincert) {
        this.cadmincert = cadmincert == null ? null : cadmincert.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getCaserialnumber() {
        return caserialnumber;
    }

    public void setCaserialnumber(String caserialnumber) {
        this.caserialnumber = caserialnumber == null ? null : caserialnumber.trim();
    }
}