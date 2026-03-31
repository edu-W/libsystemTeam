package com.library.entity;
import java.sql.Timestamp;

public class lib_seat {
    private String seatId;       
    private String floor;        
    private String area;         
    private String status;       
    private String userAccount;  
    private Timestamp bookTime;
    private Timestamp leaveTime;
    private String userName;

    private String updateTime;     

    // 2. 无参构造函数（框架在反射创建对象时往往需要用到）
    public  lib_seat () {
    }

    // 3. Getter 和 Setter 方法
    public String getSeatId() {
        return seatId;
    }

    public void setSeatId(String seatId) {
        this.seatId = seatId;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }
    public Timestamp getBookTime() {
        return bookTime;
    }

    public void setBookTime(Timestamp bookTime) {
        this.bookTime = bookTime;
    }
   
    public Timestamp getLeaveTime() {
        return leaveTime;
    }

    public void setLeaveTime(Timestamp leaveTime) {
        this.leaveTime = leaveTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    @Override
    public String toString() {
        return "lib_seat{" +
                "seatId='" + seatId + '\'' +
                ", floor='" + floor + '\'' +
                ", area='" + area + '\'' +
                ", status='" + status + '\'' +
                ", userAccount='" + userAccount + '\'' +
                ", bookTime=" + bookTime +
                '}';
    }
}
