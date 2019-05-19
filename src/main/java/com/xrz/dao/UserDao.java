package com.xrz.dao;

import com.xrz.po.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    //test 通过id查询用户
    User findUserById(Integer id);

    //通过用户名和密码查询用户
    User findUserByNameAndPassword(@Param("username") String username,
                        @Param("password") String password);

    //通过邮箱和密码查询用户
    User findUserByEmailAndPassword(@Param("email") String email,
                                    @Param("password") String password);

    User findUserByNameOrEmail(@Param("username") String username,
                                @Param("email") String email);

    int addUser(@Param("username") String username,
                 @Param("email") String email,
                 @Param("password") String password);

}
