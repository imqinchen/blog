package com.qinchen.service.impl;

import com.qinchen.pojo.User;
import com.qinchen.mapper.UserMapper;
import com.qinchen.service.UserService;
import com.qinchen.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Transactional
    @Override
    public User login(String username, String password) {
        return userMapper.login(username, MD5Utils.code(password));  //根据用户名和密码查询数据库查到返回用户名  MD5Utils从数据库传入加密后的密码
    }
}
