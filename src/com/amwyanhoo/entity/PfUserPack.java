package com.amwyanhoo.entity;


//包装类，用以接收前台的请求参数

public class PfUserPack{
	private PfUser pfuser;
	
	private PfUserCopy pfusercopy;

	public void setPfuser(PfUser pfuser) {
		this.pfuser = pfuser;
	}

	public PfUser getPfuser() {
		return pfuser;
	}

	public void setPfusercopy(PfUserCopy pfusercopy) {
		this.pfusercopy = pfusercopy;
	}

	public PfUserCopy getPfusercopy() {
		return pfusercopy;
	}
}
