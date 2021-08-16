/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : tenement

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/01/2021 11:19:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a8d027cd88774d948d4358ebc1c62083', 'admin', '25d55ad283aa400af464c76d713c07ad');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `build_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '楼宇编号',
  `build_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '楼宇号',
  `build_layer_count` int(11) NOT NULL COMMENT '楼层数',
  `build_room_count` int(11) NOT NULL COMMENT '楼层房屋数',
  `build_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '建成时间',
  PRIMARY KEY (`build_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('ff760a7624f04e1b8c0330fe8fed2af5', '1', 6, 2, '2020-01-27');

-- ----------------------------
-- Table structure for complain
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain`  (
  `complain_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '投诉编号',
  `complain_title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '投诉标题',
  `complain_content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '投诉内容',
  `complain_date` datetime NOT NULL COMMENT '投诉时间',
  `complain_adminer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被投诉人',
  `complain_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '被投诉人编号',
  `complain_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '投诉状态',
  `complain_comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`complain_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES ('33073767a5034b2ebc844afb1a8298e9', '环境不干净', '环境不干净', '2020-02-06 18:51:02', '航三', '37dc61a74ba6411a99ba4e164cc54daf', '已处理', '');
INSERT INTO `complain` VALUES ('97219384836b4d3094881fc53722745a', '环境不干净', '环境不干净', '2020-02-05 11:34:03', 'admin', '3940ca5783f04400b0fd2831e37a39d9', '已处理', '');
INSERT INTO `complain` VALUES ('b666101e796d4556bb6b6e7f6796b2c1', '大大', '是否是', '2020-02-06 18:51:11', '航三', '37dc61a74ba6411a99ba4e164cc54daf', '已处理', '');
INSERT INTO `complain` VALUES ('c2c5c18fd3e64c15ba15b5d25eb212a8', '佛挡杀佛', '多个地方法规', '2020-02-06 18:51:16', '航三', '37dc61a74ba6411a99ba4e164cc54daf', '处理中', '');

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost`  (
  `cost_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费用编号',
  `cost_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '费用类型',
  `cost_start` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开始时间',
  `cost_end` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结束时间',
  `cost_sum` decimal(10, 2) NOT NULL COMMENT '费用总计',
  `cost_owner` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业主姓名',
  `cost_owner_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业主编号',
  `cost_operator` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作员姓名',
  `cost_operator_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作员编号',
  `cost_status` int(1) NOT NULL COMMENT '缴费状态',
  PRIMARY KEY (`cost_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('0a4074ad31c348c9932c63d69b55f4b0', '0', '2020-01-28', '2020-02-14', 1500.00, 'ds', '370305199601193111', 'admin', '3940ca5783f04400b0fd2831e37a39d9', 0);
INSERT INTO `cost` VALUES ('2846ef3e095545288b46eefe0b1b41e0', '0', '2019-12-09', '2020-02-27', 1500.00, 'qwe', '370305199601193115', 'admin', '3940ca5783f04400b0fd2831e37a39d9', 1);
INSERT INTO `cost` VALUES ('4a8e507a18a74c6680adf60ca523b17b', '1', '2020-02-03', '2020-02-20', 1500.00, 'ds', '370305199601193111', 'admin', '3940ca5783f04400b0fd2831e37a39d9', 0);

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `house_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '房产编号',
  `house_no` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '房号',
  `house_unit` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单元号',
  `house_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '房产类型',
  `house_area` decimal(10, 2) NOT NULL COMMENT '房屋面积',
  `house_building` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '楼栋号',
  `house_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生效时间',
  `house_owner` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业主',
  `house_owner_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业主编号',
  PRIMARY KEY (`house_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('3940ca5783f04400b0fd2831e37a39d9', '102', '1', '0', 120.00, '1', '-1', '-1', '-1');
INSERT INTO `house` VALUES ('8b066aa99c5643dd81c90968b3033039', '101', '1', '0', 102.00, '1', '-1', '-1', '-1');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `emp_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物业管理人员编号',
  `emp_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `emp_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码（加密后）',
  `emp_gender` int(1) NOT NULL COMMENT '性别',
  `emp_borth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出生日期',
  `emp_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系方式',
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('37dc61a74ba6411a99ba4e164cc54daf', '航三', '25d55ad283aa400af464c76d713c07ad', 0, '2020-01-26', '12511114444');
INSERT INTO `manager` VALUES ('e04af8ac80564c2d86ed45b4e2a99cea', '李四', 'e10adc3949ba59abbe56e057f20f883e', 0, '1986-02-05', '13545874578');
INSERT INTO `manager` VALUES ('e9f7c469cfaa456aa040d1e4e276c297', '张三', 'e10adc3949ba59abbe56e057f20f883e', 0, '2020-01-26', '12511114444');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告编号',
  `notice_content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告内容',
  `notice_date` datetime NOT NULL COMMENT '发布时间',
  `notice_creater` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布人',
  `notice_creater_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布人ID',
  PRIMARY KEY (`notice_id`) USING BTREE,
  INDEX `notice_date`(`notice_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('3327310b6f9e4243add0ea19e2b35be0', '欢迎使用物业管理系统!', '2020-02-04 20:35:18', 'admin1', '3940ca5783f04400b0fd2831e37a39d9');

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner`  (
  `owner_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业主编号',
  `owner_no` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业主身份证号',
  `owner_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `owner_gender` int(1) NOT NULL COMMENT '性别',
  `owner_borth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '出生日期',
  `owner_workstation` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工作单位',
  `owner_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系方式',
  PRIMARY KEY (`owner_id`) USING BTREE,
  INDEX `owner_no`(`owner_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of owner
-- ----------------------------
INSERT INTO `owner` VALUES ('3d028030ade1473d8b02348638155f93', '370305199601193115', 'qwe', 0, '1996-01-19', '家里', '17612223775');
INSERT INTO `owner` VALUES ('8bdbceecca2f4b058c31a3f1b0ebe001', '370305199601193113', 'ds', 1, '1996-01-19', '家里', '17645879568');
INSERT INTO `owner` VALUES ('988373479ebf49cea5a8a3e8781140c8', '370305199601193111', 'ds', 0, '1996-01-19', '家里', '17612223775');

-- ----------------------------
-- Table structure for parking
-- ----------------------------
DROP TABLE IF EXISTS `parking`;
CREATE TABLE `parking`  (
  `park_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '车位编号',
  `park_no` int(11) NOT NULL COMMENT '车位号',
  `park_car_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '车牌照',
  `park_owner` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业主编号',
  `park_operator` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '车位状态',
  `park_comment` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`park_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of parking
-- ----------------------------
INSERT INTO `parking` VALUES ('2e83c81ddc4f478a9f8d6b4dd8471705', 1, '京AA0001', '370305199601193115', '37dc61a74ba6411a99ba4e164cc54daf', '');
INSERT INTO `parking` VALUES ('348cc381167049599627bac79a7a9757', 4, '京AA0004', '370305199601193111', '37dc61a74ba6411a99ba4e164cc54daf', '');
INSERT INTO `parking` VALUES ('487e86b869e444328de706709412d68e', 3, '京AA0003', '370305199601193113', '37dc61a74ba6411a99ba4e164cc54daf', '');
INSERT INTO `parking` VALUES ('a3e7899f9d7e45278c5061c49dbf65ff', 2, '京AA0002', '370305199601193115', '37dc61a74ba6411a99ba4e164cc54daf', '');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `repair_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报修编号',
  `repair_house` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '房号信息',
  `repair_content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报修内容',
  `repair_date` datetime NOT NULL COMMENT '报修时间',
  `repair_operator` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物业管理员',
  `repair_operator_no` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物业管理员编号',
  `repair_status` int(1) NOT NULL COMMENT '物业完成状态',
  `repair_owner_status` int(1) NOT NULL COMMENT '业主确认状态',
  `repair_comment` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`repair_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('3937051ef5994fd594a1f16cf9bcbba5', '1-1-101', '水管', '2020-02-05 09:18:56', 'admin1', '3940ca5783f04400b0fd2831e37a39d9', 1, 1, '');

-- ----------------------------
-- Table structure for vilage
-- ----------------------------
DROP TABLE IF EXISTS `vilage`;
CREATE TABLE `vilage`  (
  `vilage_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区编号',
  `vilage_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `vilage_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '建成日期',
  `vilage_area` decimal(10, 2) NOT NULL COMMENT '占地面积',
  `vilage_location` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地理位置',
  `vilage_principal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '负责人',
  `vilage_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`vilage_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vilage
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
