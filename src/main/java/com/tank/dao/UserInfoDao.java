package com.tank.dao;

/**
 * Created by hzxiongtiankai on 2017/3/7.
 */

import com.tank.model.UserInfo;

import org.apache.ibatis.annotations.Param;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/5.
 */

@Repository
public interface UserInfoDao {

    UserInfo selectUserById(@Param("userId") Long userId);

    UserInfo selectUserByEmail(@Param("email") String email, @Param("state") Short state);

    List<UserInfo> selectAllUser();

    void addUser(UserInfo user);
}