package com.amwyanhoo.entity;

public class PfRole {
    private int roleid;

    private String name;

    private String description;

    private String deptid;

    private String remark;

    private String assignremark;

    private int sortindex;

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid == null ? null : deptid.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getAssignremark() {
        return assignremark;
    }

    public void setAssignremark(String assignremark) {
        this.assignremark = assignremark == null ? null : assignremark.trim();
    }

    public int getSortindex() {
        return sortindex;
    }

    public void setSortindex(int sortindex) {
        this.sortindex = sortindex;
    }
}