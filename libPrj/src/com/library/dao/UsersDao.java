package com.library.dao;

import java.util.List;

import com.library.entity.Users;

public interface UsersDao {
    /**
     * 根据账号和密码查询用户（用于登录校验）
     * @param account 账号
     * @param password 密码
     * @return 如果找到匹配的用户则返回 User 对象，否则返回 null
     */
    Users getUserByAccountAndPassword(String account, String password);
    
    /**
     * 根据账号查询用户信息
     */
    Users getUserByAccount(String account);
    /**
     * 获取所有学生用户列表（供管理员后台展示）
     */
    List<Users> getAllStudents();

    /**
     * 解封被冻结的用户账号
     */
    boolean unfreezeUser(String account);
}