package com.amwyanhoo.dao;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;

public interface PfUserDao {
	public PfUserCopy findPfUserList(PfUserPack pfuserpack);
}
