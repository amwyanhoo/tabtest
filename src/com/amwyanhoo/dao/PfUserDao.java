package com.amwyanhoo.dao;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;
import java.util.*;

public interface PfUserDao {
	public List<PfUserCopy> findPfUserList(PfUserPack pfuserpack);
	public List<PfUserCopy> findPfUserListwithrole(PfUserPack pfuserpack);
}
