package com.amwyanhoo.entity;


//接收前台参数包装类，一切参数均由该类接收。

public class PfUserPack{
	private PfUser pfuser;
	private PfUserDept pfUserDept;
	private PfRole pfRole;

	public void setPfuser(PfUser pfuser) {
		this.pfuser = pfuser;
	}

	public PfUser getPfuser() {
		return pfuser;
	}

	public void setPfUserDept(PfUserDept pfUserDept) {
		this.pfUserDept = pfUserDept;
	}

	public PfUserDept getPfUserDept() {
		return pfUserDept;
	}

	public void setPfRole(PfRole pfRole) {
		this.pfRole = pfRole;
	}

	public PfRole getPfRole() {
		return pfRole;
	}
}
