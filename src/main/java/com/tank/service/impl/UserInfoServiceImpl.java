package com.tank.service.impl;

import com.tank.model.UserInfo;

import com.tank.dao.UserInfoDao;

import com.tank.service.UserInfoService;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/7.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserInfoServiceImpl implements UserInfoService {

    @Resource
    private UserInfoDao userInfoDao;

    public UserInfo getUserById(Long userId) {
        return userInfoDao.selectUserById(userId);
    }

    public UserInfo getUserByEmail(String email, Short state) {
        return userInfoDao.selectUserByEmail(email, state);
    }

    public List<UserInfo> getAllUser() {
        return userInfoDao.selectAllUser();
    }

    public void addUser(UserInfo user)
    {
        userInfoDao.addUser(user);
    }
}