package com.library.entity;
import java.sql.Timestamp;

public class lib_seat {
	// 1. ���Զ��壨�����ݿ� lib_seat ���ֶζ�Ӧ��
    private String seatId;       // ��Ӧ seat_id���� A-203
    private String floor;        // ��Ӧ floor���� 1F
    private String area;         // ��Ӧ area���� A��
    private String status;       // ��Ӧ status���� free, booked, used ��
    private String userAccount;  // ��Ӧ user_account����ǰռ��/ԤԼ�˵�ѧ��
    private Timestamp bookTime;
    private Timestamp leaveTime;
    private String userName;

    //private Date updateTime;     // ��Ӧ update_time��״̬������ʱ��

    // 2. �޲ι��캯��������ڷ��䴴������ʱ������Ҫ�õ���
    public  lib_seat () {
    }

    // 3. Getter �� Setter ����
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
//    public Date getUpdateTime() {
//        return updateTime;
//    }
//
//    public void setUpdateTime(Date updateTime) {
//        this.updateTime = updateTime;
//    }
    
    // ��ѡ����д toString() �����������ڿ���̨��ӡ��������ʱ�鿴��λ����
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
