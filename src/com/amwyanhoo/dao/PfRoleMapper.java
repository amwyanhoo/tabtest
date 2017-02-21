package com.amwyanhoo.dao;

import com.amwyanhoo.entity.PfRole;

public interface PfRoleMapper {
    int deleteByPrimaryKey(Short roleid);

    int insert(PfRole record);

    int insertSelective(PfRole record);

    PfRole selectByPrimaryKey(Short roleid);

    int updateByPrimaryKeySelective(PfRole record);

    int updateByPrimaryKey(PfRole record);
}