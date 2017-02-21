package com.amwyanhoo.service;

import java.util.List;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserDept;
import com.amwyanhoo.entity.PfUserPack;

public interface PfUserDeptService {
//	public void  findPfUserList(PfUserPack pfuserpack);
	
	
	public int updateByPrimaryKeySelective(PfUserDept record);
}
