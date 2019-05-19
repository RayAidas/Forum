package com.xrz.service;

import com.xrz.po.User;

public interface UserService {
    User findUserById(Integer id);

    User findUserByNameAndPassword(String username,String password);

    User findUserByEmailAndPassword(String email, String password);

    User findUserByNameOrEmail(String username, String email);

    int addUser(String username,String email,String password);
}
