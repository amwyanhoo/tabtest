package com.amwyanhoo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.amwyanhoo.dao.PfUserDeptMapper;
import com.amwyanhoo.entity.PfUserDept;

@Component
@Transactional
public class PfUserDeptServiceImpl implements PfUserDeptService{
	@Resource
	private PfUserDeptMapper pfUserDeptMapper;
	

	public int updateByPrimaryKeySelective(PfUserDept record) {
		// TODO Auto-generated method stub
		return pfUserDeptMapper.updateByPrimaryKeySelective(record);
	}


}
