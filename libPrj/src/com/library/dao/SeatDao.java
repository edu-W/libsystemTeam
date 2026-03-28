package com.library.dao;

import com.library.entity.lib_seat;
import java.util.List;
import java.util.Map;

public interface SeatDao {
    /**
     * 根据楼层和区域获取该区域下所有的座位列表（用于前端地图渲染）
     * @param floor 楼层，例如 "1F"
     * @param area 区域，例如 "A区"
     * @return 座位列表
     */
    List<lib_seat> getSeatsByFloorAndArea(String floor, String area);

    /**
     * 根据座位ID查询单个座位详情
     * @param seatId 座位编号，例如 "1F-A-001"
     */
    lib_seat getSeatById(String seatId);

    /**
     * 更新座位的状态和绑定用户（例如：预约、落座、暂离、释放座位）
     * @param seatId 座位编号
     * @param status 新状态
     * @param userAccount 绑定的学号（释放座位时可以传 null）
     * @return 更新成功返回 true，失败返回 false
     */
    boolean updateSeatStatus(String seatId, String targetStatus, String account, boolean isFirstCheckIn);
    
    /**
     * 根据学号查询该学生当前预约或使用的座位
     */
    lib_seat getSeatByUserAccount(String userAccount);
    
    /**
     * 获取所有被占用或已预约的座位（供管理员后台使用）
     */
    List<lib_seat> getOccupiedSeats();
    /**
     * 获取地图渲染所需的所有座位状态
     */
    List<lib_seat> getAllSeats(); // ⚠️ 注：如果你的实体类叫 LibSeat，这里就把 Seat 换成 LibSeat
    /**
     * 获取学生的历史记录（复用 Map，极简设计）
     * @param account 学号
     * @param type 类型 (book: 预约记录, finish: 使用记录, violation: 违规记录)
     */
    List<Map<String, String>> getUserHistory(String account, String type);
    int getUsedSecondsByAccount(String account);
}