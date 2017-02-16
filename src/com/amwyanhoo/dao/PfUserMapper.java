package com.amwyanhoo.dao;

import com.amwyanhoo.entity.PfUser;

public interface PfUserMapper {
    int deleteByPrimaryKey(String userid);

    int insert(PfUser record);

    int insertSelective(PfUser record);

    PfUser selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(PfUser record);

    int updateByPrimaryKey(PfUser record);
}