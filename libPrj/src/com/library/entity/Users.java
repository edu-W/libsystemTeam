package com.library.entity;

import java.util.Date;

public class Users {
    // 1. 属性定义（与数据库 sys_user 表字段对应）
    private String account;
    private String password;
    private String name;
    private String role;
//    private Date createTime;

    // 2. 无参构造函数（必须有）
    public Users() {
    }

    // 3. Getter 和 Setter 方法 
    // (在 Eclipse 中可以右键 -> Source -> Generate Getters and Setters 自动生成)
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
 // 增加账号状态字段
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

//    public Date getCreateTime() {
//        return createTime;
//    }
//
//    public void setCreateTime(Date createTime) {
//        this.createTime = createTime;
//    }
}