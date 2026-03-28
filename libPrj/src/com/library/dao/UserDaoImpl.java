package com.library.dao;

import com.library.entity.Users;
import com.library.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

// 使用 implements 关键字实现刚才的接口
public class UserDaoImpl implements UsersDao {

    @Override
    public Users getUserByAccountAndPassword(String account, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Users user = null;

        try {
            // 1. 获取连接
            conn = DBUtil.getConnection();
            
            // 2. 编写 SQL 语句 (? 是占位符，防止 SQL 注入攻击)
            String sql = "SELECT * FROM Users WHERE account = ? AND password = ?";
            
            // 3. 预编译 SQL
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account);
            pstmt.setString(2, password);
            
            // 4. 执行查询
            rs = pstmt.executeQuery();
            
            // 5. 处理结果集
            if (rs.next()) {
                // 如果查到了，就把数据库里的数据塞进我们的 Java 对象里
                user = new Users();
                user.setAccount(rs.getString("account"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                user.setStatus(rs.getString("status"));
//                user.setCreateTime(rs.getTimestamp("create_time"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 6. 释放资源
            DBUtil.close(conn, pstmt, rs);
        }
        
        return user; // 如果没查到，这里返回的就是 null
    }
    @Override
    public List<Users> getAllStudents() {
        List<Users> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBUtil.getConnection();
            // SQL：只查学生，并且按照学号排个序，方便管理员看
            // ⚠️ 记得把 Users 换成你真实的表名！
            String sql = "SELECT * FROM users WHERE role = 'student' ORDER BY account ASC";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                Users user = new Users();
                user.setAccount(rs.getString("account"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                user.setStatus(rs.getString("status")); 
                // 密码千万别查出来传给前端，保护隐私！
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
        return list;
    }

    @Override
    public boolean unfreezeUser(String account) {
        boolean isSuccess = false;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBUtil.getConnection();
            // SQL：一键解封！把状态改回 normal
            // ⚠️ 同样核对一下 Users 表名
            String sql = "UPDATE Users SET status = 'normal' WHERE account = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, account);
            
            if (pstmt.executeUpdate() > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, null);
        }
        return isSuccess;
    }

    @Override
    public Users getUserByAccount(String account) {
        // 这个方法暂时留空，以后有需要（比如判断账号是否已存在）再写
        return null; 
    }
}
//测试代码：直接运行这个 main 方法
//public static void main(String[] args) {
//    UsersDao dao = new UserDaoImpl();
//    
//    // 尝试用我们在 MySQL 里插入的测试账号查询
//    Users user = dao.getUserByAccountAndPassword("2024001", "111111");
//    
//    if (user != null) {
//        System.out.println("数据库连接成功！查到的用户是：" + user.getName() + "，身份是：" + user.getRole());
//    } else {
//        System.out.println("查询失败，账号密码错误或数据库连接有问题！");
//    }
//}
//}