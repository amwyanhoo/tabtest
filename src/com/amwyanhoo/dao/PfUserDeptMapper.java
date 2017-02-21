package com.amwyanhoo.dao;

import com.amwyanhoo.entity.PfUserDept;

public interface PfUserDeptMapper {
    int deleteByPrimaryKey(PfUserDept record);

    int insertSelective(PfUserDept record);

    int updateByPrimaryKeySelective(PfUserDept record);

}