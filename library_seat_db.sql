/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80037
Source Host           : localhost:3306
Source Database       : library_seat_db

Target Server Type    : MYSQL
Target Server Version : 80037
File Encoding         : 65001

Date: 2026-03-31 15:29:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lib_seat
-- ----------------------------
DROP TABLE IF EXISTS `lib_seat`;
CREATE TABLE `lib_seat` (
  `seat_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `floor` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `area` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'available',
  `user_account` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `check_in_time` datetime DEFAULT NULL,
  `book_time` datetime DEFAULT NULL COMMENT '预约时间',
  `leave_time` datetime DEFAULT NULL COMMENT '暂离/离开时间',
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lib_seat
-- ----------------------------
INSERT INTO `lib_seat` VALUES ('1-A-001', '1', 'A', 'used', '2024214277', '2026-03-31 08:15:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-A-002', '1', 'A', 'used', '2024214279', '2026-03-31 08:32:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-A-003', '1', 'A', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-A-004', '1', 'A', 'used', '2024214280', '2026-03-31 09:04:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-A-005', '1', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-A-006', '1', 'A', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-A-007', '1', 'A', 'used', '2024214281', '2026-03-31 09:50:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-A-008', '1', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-A-009', '1', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-A-010', '1', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-001', '1', 'B', 'used', '2024214288', '2026-03-31 09:17:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-B-002', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-003', '1', 'B', 'used', '2024214289', '2026-03-31 09:38:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-B-004', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-005', '1', 'B', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-006', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-007', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-008', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-009', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-B-010', '1', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-001', '1', 'C', 'used', '2024214291', '2026-03-31 09:45:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-C-002', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-003', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-004', '1', 'C', 'used', '2024214292', '2026-03-31 10:10:00', null, null);
INSERT INTO `lib_seat` VALUES ('1-C-005', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-006', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-007', '1', 'C', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-008', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-009', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('1-C-010', '1', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-001', '2', 'A', 'used', '2024214294', '2026-03-31 08:02:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-A-002', '2', 'A', 'used', '2024214295', '2026-03-31 08:21:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-A-003', '2', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-004', '2', 'A', 'used', '2024214296', '2026-03-31 08:44:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-A-005', '2', 'A', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-006', '2', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-007', '2', 'A', 'used', '2024214297', '2026-03-31 09:03:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-A-008', '2', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-009', '2', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-A-010', '2', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-001', '2', 'B', 'used', '2024214300', '2026-03-31 09:23:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-B-002', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-003', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-004', '2', 'B', 'used', '2024214301', '2026-03-31 09:41:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-B-005', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-006', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-007', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-008', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-009', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-B-010', '2', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-001', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-002', '2', 'C', 'used', '2024214302', '2026-03-31 10:05:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-C-003', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-004', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-005', '2', 'C', 'used', '2024214303', '2026-03-31 10:20:00', null, null);
INSERT INTO `lib_seat` VALUES ('2-C-006', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-007', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-008', '2', 'C', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-009', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('2-C-010', '2', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-001', '3', 'A', 'used', '2024214306', '2026-03-31 08:11:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-A-002', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-003', '3', 'A', 'used', '2024214307', '2026-03-31 08:33:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-A-004', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-005', '3', 'A', 'used', '2024214308', '2026-03-31 09:07:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-A-006', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-007', '3', 'A', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-008', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-009', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-A-010', '3', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-001', '3', 'B', 'used', '2024214310', '2026-03-31 09:12:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-B-002', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-003', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-004', '3', 'B', 'used', '2024214311', '2026-03-31 09:28:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-B-005', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-006', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-007', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-008', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-009', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-B-010', '3', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-001', '3', 'C', 'used', '2024214312', '2026-03-31 09:37:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-C-002', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-003', '3', 'C', 'used', '2024214313', '2026-03-31 10:08:00', null, null);
INSERT INTO `lib_seat` VALUES ('3-C-004', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-005', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-006', '3', 'C', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-007', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-008', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-009', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('3-C-010', '3', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-001', '4', 'A', 'available', null, null, null, '2026-03-31 14:03:25');
INSERT INTO `lib_seat` VALUES ('4-A-002', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-003', '4', 'A', 'used', '2024214317', '2026-03-31 08:26:00', null, null);
INSERT INTO `lib_seat` VALUES ('4-A-004', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-005', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-006', '4', 'A', 'free', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-007', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-008', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-009', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-A-010', '4', 'A', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-001', '4', 'B', 'used', '2024214319', '2026-03-31 08:47:00', null, null);
INSERT INTO `lib_seat` VALUES ('4-B-002', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-003', '4', 'B', 'used', '2024214320', '2026-03-31 09:06:00', null, null);
INSERT INTO `lib_seat` VALUES ('4-B-004', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-005', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-006', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-007', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-008', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-009', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-B-010', '4', 'B', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-001', '4', 'C', 'used', '2024214323', '2026-03-31 09:22:00', null, null);
INSERT INTO `lib_seat` VALUES ('4-C-002', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-003', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-004', '4', 'C', 'used', '2024214327', '2026-03-31 09:48:00', null, null);
INSERT INTO `lib_seat` VALUES ('4-C-005', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-006', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-007', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-008', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-009', '4', 'C', 'available', null, null, null, null);
INSERT INTO `lib_seat` VALUES ('4-C-010', '4', 'C', 'available', null, null, null, null);

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reported_account` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `reported_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `report_type` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `seat_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `report_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for seat_record
-- ----------------------------
DROP TABLE IF EXISTS `seat_record`;
CREATE TABLE `seat_record` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `seat_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `action_type` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of seat_record
-- ----------------------------
INSERT INTO `seat_record` VALUES ('1', '2024000001', '1-A-008', 'book', '2026-03-30 09:24:07');
INSERT INTO `seat_record` VALUES ('2', '2024214316', '1-A-001', 'book', '2026-03-31 11:16:18');
INSERT INTO `seat_record` VALUES ('3', '2024214316', '1-A-001', 'finish', '2026-03-31 11:18:02');
INSERT INTO `seat_record` VALUES ('4', '2024214316', '2-A-004', 'book', '2026-03-31 11:22:11');
INSERT INTO `seat_record` VALUES ('5', '2024214316', '2-A-004', 'finish', '2026-03-31 11:23:12');
INSERT INTO `seat_record` VALUES ('6', '2024214316', '1-A-001', 'book', '2026-03-31 11:25:54');
INSERT INTO `seat_record` VALUES ('7', '2024214316', '1-A-001', 'finish', '2026-03-31 11:25:58');
INSERT INTO `seat_record` VALUES ('8', '2024214316', '1-A-007', 'book', '2026-03-31 11:27:32');
INSERT INTO `seat_record` VALUES ('9', '2024214316', '1-A-007', 'finish', '2026-03-31 11:27:48');
INSERT INTO `seat_record` VALUES ('10', '2024214282', '1-A-003', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('11', '2024214290', '1-B-005', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('12', '2024214299', '2-A-005', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('13', '2024214305', '2-C-008', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('14', '2024214315', '3-C-006', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('15', '2024214318', '4-A-006', 'violation', '2026-03-31 13:26:03');
INSERT INTO `seat_record` VALUES ('16', '2024214283', '1-A-006', 'violation', '2026-03-31 13:26:04');
INSERT INTO `seat_record` VALUES ('17', '2024214293', '1-C-007', 'violation', '2026-03-31 13:26:04');
INSERT INTO `seat_record` VALUES ('18', '2024214309', '3-A-007', 'violation', '2026-03-31 13:26:04');
INSERT INTO `seat_record` VALUES ('19', '2024214316', '4-A-001', 'finish', '2026-03-31 14:03:25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `account` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'normal',
  `credit` int NOT NULL DEFAULT '100' COMMENT '信誉分',
  `freeze_end_time` datetime DEFAULT NULL COMMENT '冻结截止时间',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2023214414', '123456', '彭子恒', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024210001', '123456', '管理员', 'admin', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024211056', '123456', '漆诚鹏', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024211437', '123456', '燕佳鑫', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024212886', '123456', '李波溶', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214001', '123456', '捷风', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214277', '123456', '栗子锰', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214279', '123456', '杜佳昀', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214280', '123456', '阳思宇', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214281', '123456', '宋玲艳', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214282', '123456', '郝济怡', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214283', '123456', '张兴琪', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214288', '123456', '王子豪', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214289', '123456', '刘德邦', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214290', '123456', '杨斯浩', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214291', '123456', '郑良军', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214292', '123456', '陈英豪', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214293', '123456', '孙毅傲', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214294', '123456', '乔楚涵', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214295', '123456', '周伟康', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214296', '123456', '易弘涛', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214297', '123456', '曹然军', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214299', '123456', '王成兴', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214300', '123456', '任城鑫', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214301', '123456', '王茂锦', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214302', '123456', '钟昊楠', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214303', '123456', '李世鑫', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214305', '123456', '黄磊', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214306', '123456', '吴锐', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214307', '123456', '雷俊棋', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214308', '123456', '管宇', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214309', '123456', '韩文金', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214310', '123456', '顾嘉旺', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214311', '123456', '曹天浩', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214312', '123456', '姜博仁', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214313', '123456', '薛雨桐', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214315', '123456', '古依林', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214316', '123456', '刘芷涵', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214317', '123456', '贺静姿', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214318', '123456', '付雨航', 'student', 'normal', '95', NULL);
INSERT INTO `users` VALUES ('2024214319', '123456', '王明珠', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214320', '123456', '周歆雨', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214323', '123456', '王鹏丞', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214327', '123456', '李冠良', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214328', '123456', '张昌烁', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214329', '123456', '卢慨轩', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214330', '123456', '关升恒', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214331', '123456', '张博文', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214332', '123456', '邓皓文', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214333', '123456', '吴佳豪', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214334', '123456', '王文泰', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214335', '123456', '张瑞', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214336', '123456', '王胜', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214337', '123456', '刘朝杰', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214338', '123456', '唐科', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214339', '123456', '袁博', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214340', '123456', '贺云龙', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214341', '123456', '徐文博', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214342', '123456', '王莫会', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214343', '123456', '戴棋润', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214344', '123456', '张霄', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214345', '123456', '李金鑫', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214346', '123456', '付子昂', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214347', '123456', '田靖奇', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214348', '123456', '徐印', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214349', '123456', '吴承曦', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024214847', '123456', '黄佳超', 'student', 'normal', '100', NULL);
INSERT INTO `users` VALUES ('2024215096', '123456', '刘玮', 'student', 'normal', '100', NULL);
