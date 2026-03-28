package com.library.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.library.dao.SeatDao;
import com.library.dao.SeatDaoImpl;
import com.library.entity.lib_seat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

// 处理预约座位的接口
@WebServlet("/api/bookSeat")
public class BookSeatServlet extends HttpServlet {

    private SeatDao seatDao = new SeatDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");

        Map<String, Object> resultMap = new HashMap<>();

        try {
            BufferedReader reader = request.getReader();
            JsonObject jsonObject = JsonParser.parseReader(reader).getAsJsonObject();
            
            String seatId = jsonObject.get("seatId").getAsString();
            String userAccount = jsonObject.get("userAccount").getAsString();

            // =========================================================
            // 🌟 核心业务锁：检查该用户是否已经有座位了！
            // =========================================================
            lib_seat existingSeat = seatDao.getSeatByUserAccount(userAccount);
            
            if (existingSeat != null && !existingSeat.getSeatId().isEmpty()) {
                // 如果查到了记录，说明他名下已经有座位了，无情拒绝！
                resultMap.put("code", 403);
                resultMap.put("message", "预约失败！您当前已拥有座位 [" + existingSeat.getSeatId() + "]，请先释放后再预约新座位。");
            } else {
                // 没有座位，允许预约！将状态改为 booked (已预约)
                boolean success = seatDao.updateSeatStatus(seatId, "booked", userAccount,false);
                if (success) {
                    resultMap.put("code", 200);
                    resultMap.put("message", "预约成功");
                } else {
                    resultMap.put("code", 500);
                    resultMap.put("message", "预约失败，可能是座位刚被别人抢占了");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.put("code", 500);
            resultMap.put("message", "服务器解析异常");
        }

        PrintWriter out = response.getWriter();
        out.print(new Gson().toJson(resultMap));
        out.flush();
    }
}