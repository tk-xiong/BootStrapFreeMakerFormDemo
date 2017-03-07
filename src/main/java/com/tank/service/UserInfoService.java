package com.tank.service;

import com.tank.model.UserInfo;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/7.
 */

public interface UserInfoService {

    List<UserInfo> getAllUser();

    UserInfo getUserByEmail(String email, Short state);

    UserInfo getUserById(Long userId);

    void addUser(UserInfo user);

}
