package com.amwyanhoo.entity;


//接收返回类型，当实体类改变时无需改变该类与sql代码
public class PfUserCopy extends PfUser{
//	private PfRole pfRole;
//	private PfUserDept pfUserDept;
//	private String name;
	private int roleid;

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public int getRoleid() {
		return roleid;
	}
	
}
