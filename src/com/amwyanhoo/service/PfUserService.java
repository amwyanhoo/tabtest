package com.amwyanhoo.service;

import java.util.List;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;

public interface PfUserService {
	public List<PfUserCopy>  findPfUserList(PfUserPack pfuserpack);
	public List<PfUserCopy>  findPfUserListwithrole(PfUserPack pfuserpack);
}
