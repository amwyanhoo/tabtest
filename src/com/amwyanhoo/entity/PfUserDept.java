package com.amwyanhoo.entity;

public class PfUserDept{
	private String userid;
	private String deptid;
	private int roleid;
	private String authflag;
    private int sortindex;
    
    
    public int getSortindex() {
        return sortindex;
    }

    public void setSortindex(int sortindex) {
        this.sortindex = sortindex;
    }

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserid() {
		return userid;
	}

	public void setAuthflag(String authflag) {
		this.authflag = authflag;
	}

	public String getAuthflag() {
		return authflag;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getDeptid() {
		return deptid;
	}
}