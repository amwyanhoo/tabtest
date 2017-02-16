package com.amwyanhoo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.amwyanhoo.dao.PfUserDao;
import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;

@Component
@Transactional
public class PfUserServiceImpl implements PfUserService{
	@Resource
	private PfUserDao pfUserDao;
	
	public PfUserCopy findPfUserList(PfUserPack pfuserpack) {
		return pfUserDao.findPfUserList(pfuserpack);
	}

}
