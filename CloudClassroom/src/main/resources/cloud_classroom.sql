/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : cloud_classroom

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 01/06/2020 11:13:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for certificate
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TEFL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师资格证存储图片',
  `diploma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历证书存储路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10013 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of certificate
-- ----------------------------
INSERT INTO `certificate` VALUES (10001, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10002, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10003, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10004, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10005, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10006, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10007, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10008, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10009, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10010, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\3ee4b997-38e0-4384-9943-22a541b47c77_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate` VALUES (10011, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\7f1d5101-c461-4629-90e5-115752667def_a4bbc4aee85d6af6405085c16d640033.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\e5eacfca-d1dd-4b79-9103-d481c4d5a9bf_2206e85b-e9a4-4f37-a972-78848c208519_u=3939215539,3409992453&fm=26&gp=0.jpg');
INSERT INTO `certificate` VALUES (10012, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\6b0ffcb8-a2cf-49c6-a939-ec16cd6e45cd_2206e85b-e9a4-4f37-a972-78848c208519_u=3939215539,3409992453&fm=26&gp=0.jpg', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\d1ab9f93-f894-459c-a568-d61fa29dce44_6bc9a5d4-ac73-4158-8f3a-9090093113f6_u=3391145244,3413804971&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for certificate_pcll
-- ----------------------------
DROP TABLE IF EXISTS `certificate_pcll`;
CREATE TABLE `certificate_pcll`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(65) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of certificate_pcll
-- ----------------------------
INSERT INTO `certificate_pcll` VALUES (1, 6, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (2, 6, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (3, 7, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (4, 7, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (5, 8, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (6, 9, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (7, 10, 100017, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (8, 11, 100017, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (9, 12, 100017, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (10, 13, 100017, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (11, 14, 100018, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (12, 14, 100018, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (13, 15, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (14, 16, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (15, 17, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (16, 18, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (17, 18, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (18, 19, 100019, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (19, 19, 100019, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (20, 20, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (21, 21, 100021, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (22, 21, 100021, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (23, 22, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (24, 22, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (25, 22, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (26, 22, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (27, 22, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4d52d075-e6b4-4234-9015-85244e202c52_c5d6fac99b5753e913db91b661bb4c7e.jpg');
INSERT INTO `certificate_pcll` VALUES (33, 25, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\17c2aff8-367f-449c-b3c9-b8e28a92b8be_7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `certificate_pcll` VALUES (34, 25, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\4286dadd-3697-47ba-87ce-426416e65f0b_7f34d459-e534-4723-99c2-2da59c3c179b_62359d7c0774034a2d7fd8e5051c0635.jpg');
INSERT INTO `certificate_pcll` VALUES (35, 25, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\f87bf425-a645-44f2-9571-f22b0b559e0e_66aca8ce-f0c4-4b3b-8520-a03b3bf9cf50_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `certificate_pcll` VALUES (36, 26, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\2b3d1ba1-48d0-4590-bfe2-a8bfbe0b8a31_7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `certificate_pcll` VALUES (37, 26, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\ca0f3322-f754-4385-8f89-2c24dbb852ec_2206e85b-e9a4-4f37-a972-78848c208519_u=3939215539,3409992453&fm=26&gp=0.jpg');
INSERT INTO `certificate_pcll` VALUES (38, 26, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\b63a2949-67b4-43e8-9f20-d0153f6ea05d_831dfb7b-d460-46ad-a50a-e2eadc2f77c8_ChMkJ13I1cCIbnHqAARB19ENR_0AAvKPgIQLmgABEHv923.jpg');
INSERT INTO `certificate_pcll` VALUES (39, 26, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\49f2c7c3-596d-4a36-ae45-47d42126057c_6bc9a5d4-ac73-4158-8f3a-9090093113f6_u=3391145244,3413804971&fm=26&gp=0.jpg');
INSERT INTO `certificate_pcll` VALUES (40, 27, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\92f7b7e4-b392-44e8-be85-8a20a31ed7ca_2206e85b-e9a4-4f37-a972-78848c208519_u=3939215539,3409992453&fm=26&gp=0.jpg');
INSERT INTO `certificate_pcll` VALUES (41, 27, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\98375fb7-f960-46b8-b42a-b73c287915d2_66aca8ce-f0c4-4b3b-8520-a03b3bf9cf50_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `certificate_pcll` VALUES (42, 27, 100015, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\95290bbc-0d63-49d5-bd1e-322f6f5d3980_7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cha_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `curr_id` int(11) NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1067 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (1001, '第一章', 7, 0, NULL);
INSERT INTO `chapter` VALUES (1002, '第一节', 7, 1001, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\d758db2d-2f48-45e0-8d9e-b0555187d10b_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES (1014, 'spring框架', 6, 0, NULL);
INSERT INTO `chapter` VALUES (1015, 'spring MVC框架', 6, 0, NULL);
INSERT INTO `chapter` VALUES (1016, 'MyBatis', 6, 0, NULL);
INSERT INTO `chapter` VALUES (1017, 'MVC设计模式', 6, 0, NULL);
INSERT INTO `chapter` VALUES (1018, '第一节', 6, 1014, NULL);
INSERT INTO `chapter` VALUES (1019, '第一节', 6, 1015, NULL);
INSERT INTO `chapter` VALUES (1020, '第一节', 6, 1016, NULL);
INSERT INTO `chapter` VALUES (1021, '第一节', 6, 1017, NULL);
INSERT INTO `chapter` VALUES (1022, '第二节', 6, 1014, NULL);
INSERT INTO `chapter` VALUES (1024, '第二节', 6, 1016, NULL);
INSERT INTO `chapter` VALUES (1025, '第二节', 6, 1017, NULL);
INSERT INTO `chapter` VALUES (1026, '第一章', 10, 0, NULL);
INSERT INTO `chapter` VALUES (1027, 'jquery历史', 10, 1026, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\b4585fe9-acbe-4703-8354-6daf86e8ab76_a00093bb-b6f6-4f6b-ad0f-c53f278c5344_少女时代.mov');
INSERT INTO `chapter` VALUES (1028, 'jquery基础入门', 10, 1026, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\e4c12dfa-d8a9-4196-97f3-9cbcf2b6846f_你的名字3.mov');
INSERT INTO `chapter` VALUES (1029, '第一章', 14, 0, NULL);
INSERT INTO `chapter` VALUES (1030, '第一节', 14, 1029, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\7eee14dc-c1ff-4585-b448-ae722deb2c2c_a00093bb-b6f6-4f6b-ad0f-c53f278c5344_少女时代.mov');
INSERT INTO `chapter` VALUES (1033, '第一章', 9, 0, NULL);
INSERT INTO `chapter` VALUES (1034, '第一节', 9, 1033, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\f8c1d659-7da5-47e0-af82-280f0972f571_你的名字3.mov');
INSERT INTO `chapter` VALUES (1035, '第一章', 16, 0, NULL);
INSERT INTO `chapter` VALUES (1036, '第一节', 16, 1035, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\1f604e32-7c26-4994-b1ce-21eaf9bacead_a00093bb-b6f6-4f6b-ad0f-c53f278c5344_少女时代.mov');
INSERT INTO `chapter` VALUES (1037, '第二节', 7, 1001, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\f6046b6b-0aa0-4fad-be43-ae5272f7e06c_你的名字3.mov');
INSERT INTO `chapter` VALUES (1038, '第一章', 8, 0, NULL);
INSERT INTO `chapter` VALUES (1039, '第一节', 8, 1038, NULL);
INSERT INTO `chapter` VALUES (1040, '第一章', 17, 0, NULL);
INSERT INTO `chapter` VALUES (1041, '第一章', 18, 0, NULL);
INSERT INTO `chapter` VALUES (1042, '第一节', 18, 1041, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\0f73f799-5bad-4faf-8131-d697abcd3543_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES (1043, '第一章', 19, 0, NULL);
INSERT INTO `chapter` VALUES (1044, '第一节', 19, 1043, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\639e53d7-45d7-4dee-af43-4835c4ce2fa1_a00093bb-b6f6-4f6b-ad0f-c53f278c5344_少女时代.mov');
INSERT INTO `chapter` VALUES (1045, '第一章', 21, 0, NULL);
INSERT INTO `chapter` VALUES (1046, '第一节', 21, 1045, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\ae21a688-ac19-41a7-9597-9a52e166ada9_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES (1047, '第一章', 12, 0, NULL);
INSERT INTO `chapter` VALUES (1048, '第一节', 12, 1047, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\f80fe0fb-fef9-460f-b381-9153e6ab8b99_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES (1049, '第一章', 22, 0, NULL);
INSERT INTO `chapter` VALUES (1050, '第一节', 22, 1049, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\03c37084-7c8a-4343-9f05-6039a60dfa45_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES (1065, '第一章', 25, 0, NULL);
INSERT INTO `chapter` VALUES (1066, '第一节', 25, 1065, 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\video\\826ad48e-4780-4a43-afd8-7a6e081345c3_5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `add_userid` int(11) NULL DEFAULT NULL,
  `add_date` datetime(0) NULL DEFAULT NULL,
  `spread` bit(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `super_id`(`field`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1052 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (1001, '课程类别', NULL, 100001, '2020-03-07 14:49:52', b'0001');
INSERT INTO `classify` VALUES (1028, 'JAVA', '1001', 100001, '2020-03-09 14:00:44', b'0001');
INSERT INTO `classify` VALUES (1030, 'Python', '1001', 100001, '2020-03-09 14:01:07', b'0001');
INSERT INTO `classify` VALUES (1031, 'Spring框架', '1028', 100001, '2020-03-09 14:02:00', b'0001');
INSERT INTO `classify` VALUES (1032, 'SSM', '1028', 100001, '2020-03-09 14:02:17', b'0001');
INSERT INTO `classify` VALUES (1033, 'Mybatis', '1028', 100001, '2020-03-09 14:03:12', b'0001');
INSERT INTO `classify` VALUES (1040, 'Spring MVC', '1028', 100001, '2020-03-09 14:28:00', b'0001');
INSERT INTO `classify` VALUES (1041, 'WEB开发', '1001', 100001, '2020-03-09 14:33:33', b'0001');
INSERT INTO `classify` VALUES (1042, 'CSS', '1041', 100001, '2020-03-09 14:34:28', b'0001');
INSERT INTO `classify` VALUES (1043, 'JS', '1041', 100001, '2020-03-09 14:34:33', b'0001');
INSERT INTO `classify` VALUES (1044, 'JQuery', '1041', 100001, '2020-03-09 14:35:33', b'0001');
INSERT INTO `classify` VALUES (1045, 'json', '1041', 100001, '2020-03-09 19:05:06', b'0001');
INSERT INTO `classify` VALUES (1046, 'SpringBoot', '1028', 100001, '2020-03-10 14:05:13', b'0001');
INSERT INTO `classify` VALUES (1047, '基础入门', '1030', 100001, '2020-03-13 13:52:14', b'0001');
INSERT INTO `classify` VALUES (1048, '进阶课程', '1030', 100001, '2020-03-22 16:02:21', b'0001');
INSERT INTO `classify` VALUES (1049, 'C/C++', '1001', 100001, '2020-05-29 00:02:28', b'0001');
INSERT INTO `classify` VALUES (1050, '排序算法', '1049', 100001, '2020-05-29 00:02:40', b'0001');

-- ----------------------------
-- Table structure for classify_record
-- ----------------------------
DROP TABLE IF EXISTS `classify_record`;
CREATE TABLE `classify_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_id` int(11) NULL DEFAULT NULL,
  `name_old` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name_new` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '增删改',
  `edit_userid` int(11) NULL DEFAULT NULL,
  `edit_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify_record
-- ----------------------------
INSERT INTO `classify_record` VALUES (75, 1041, NULL, 'WEB开发', '增加', 100001, '2020-03-09 14:33:33');
INSERT INTO `classify_record` VALUES (76, 1042, NULL, 'CSS', '增加', 100001, '2020-03-09 14:34:28');
INSERT INTO `classify_record` VALUES (77, 1043, NULL, 'JS', '增加', 100001, '2020-03-09 14:34:33');
INSERT INTO `classify_record` VALUES (78, 1044, NULL, 'JQuery', '增加', 100001, '2020-03-09 14:34:42');
INSERT INTO `classify_record` VALUES (79, 1042, 'CSS', 'CSS/JS', '编辑', 100001, '2020-03-09 14:35:02');
INSERT INTO `classify_record` VALUES (80, 1042, 'CSS/JS', 'CSS', '编辑', 100001, '2020-03-09 14:35:12');
INSERT INTO `classify_record` VALUES (81, 1044, NULL, 'JQuery', '删除', 100001, '2020-03-09 14:35:21');
INSERT INTO `classify_record` VALUES (82, 1044, NULL, 'JQuery', '增加', 100001, '2020-03-09 14:35:33');
INSERT INTO `classify_record` VALUES (83, 1041, 'WEB开发', 'WEB开发1', '编辑', 100001, '2020-03-09 14:51:58');
INSERT INTO `classify_record` VALUES (84, 1041, 'WEB开发1', 'WEB开发', '编辑', 100001, '2020-03-09 14:52:03');
INSERT INTO `classify_record` VALUES (85, 1030, 'python', 'Python', '编辑', 100001, '2020-03-09 18:00:20');
INSERT INTO `classify_record` VALUES (86, 1045, NULL, 'json', '增加', 100001, '2020-03-09 19:05:06');
INSERT INTO `classify_record` VALUES (88, 1046, NULL, 'SpringBoot', '增加', 100001, '2020-03-10 14:05:13');
INSERT INTO `classify_record` VALUES (89, 1047, NULL, '基础入门', '增加', 100001, '2020-03-13 13:52:15');
INSERT INTO `classify_record` VALUES (90, 1048, NULL, '进阶课程', '增加', 100001, '2020-03-22 16:02:21');
INSERT INTO `classify_record` VALUES (91, 1049, NULL, '大学必修课程', '增加', 100001, '2020-03-24 11:05:00');
INSERT INTO `classify_record` VALUES (92, 1050, NULL, '大学物理', '增加', 100001, '2020-03-24 11:05:10');
INSERT INTO `classify_record` VALUES (93, 1051, NULL, '大学英语', '增加', 100001, '2020-03-24 11:05:30');
INSERT INTO `classify_record` VALUES (94, 1052, NULL, '概率论', '增加', 100001, '2020-03-24 11:05:39');
INSERT INTO `classify_record` VALUES (95, 1049, NULL, '大学必修课程', '删除', 100001, '2020-03-27 17:09:52');
INSERT INTO `classify_record` VALUES (96, 1049, NULL, '基础算法', '增加', 100001, '2020-05-27 18:18:50');
INSERT INTO `classify_record` VALUES (97, 1049, NULL, '基础算法', '删除', 100001, '2020-05-27 19:48:58');
INSERT INTO `classify_record` VALUES (98, 1049, NULL, '测试', '增加', 100001, '2020-05-28 22:54:11');
INSERT INTO `classify_record` VALUES (99, 1050, NULL, '测试1', '增加', 100001, '2020-05-28 23:15:36');
INSERT INTO `classify_record` VALUES (100, 1050, NULL, '测试1', '删除', 100001, '2020-05-28 23:15:40');
INSERT INTO `classify_record` VALUES (101, 1049, NULL, '测试', '删除', 100001, '2020-05-28 23:16:04');
INSERT INTO `classify_record` VALUES (102, 1046, 'SpringBoot', 'SpringBoot1', '编辑', 100001, '2020-05-28 23:32:14');
INSERT INTO `classify_record` VALUES (103, 1046, 'SpringBoot1', 'SpringBoot', '编辑', 100001, '2020-05-28 23:32:18');
INSERT INTO `classify_record` VALUES (104, 1049, NULL, '测试', '增加', 100001, '2020-05-28 23:32:27');
INSERT INTO `classify_record` VALUES (105, 1049, NULL, '测试', '增加', 100001, '2020-05-28 23:39:29');
INSERT INTO `classify_record` VALUES (106, 1049, NULL, '测试', '增加', 100001, '2020-05-28 23:46:03');
INSERT INTO `classify_record` VALUES (107, 1049, '测试', '测试1', '编辑', 100001, '2020-05-28 23:48:58');
INSERT INTO `classify_record` VALUES (108, 1049, NULL, '测试1', '删除', 100001, '2020-05-28 23:49:03');
INSERT INTO `classify_record` VALUES (109, 1049, NULL, '啊啊啊', '增加', 100001, '2020-05-28 23:49:19');
INSERT INTO `classify_record` VALUES (110, 1049, NULL, '啊啊啊', '删除', 100001, '2020-05-28 23:49:34');
INSERT INTO `classify_record` VALUES (111, 1049, NULL, '啊啊啊', '增加', 100001, '2020-05-28 23:49:47');
INSERT INTO `classify_record` VALUES (112, 1049, NULL, '啊啊啊', '删除', 100001, '2020-05-28 23:50:27');
INSERT INTO `classify_record` VALUES (113, 1049, NULL, '哈哈哈', '增加', 100001, '2020-05-28 23:50:36');
INSERT INTO `classify_record` VALUES (114, 1049, '哈哈哈', '哈哈哈1', '编辑', 100001, '2020-05-28 23:50:38');
INSERT INTO `classify_record` VALUES (115, 1049, NULL, '哈哈哈1', '删除', 100001, '2020-05-28 23:50:43');
INSERT INTO `classify_record` VALUES (116, 1049, NULL, '排序算法', '增加', 100001, '2020-05-29 00:02:07');
INSERT INTO `classify_record` VALUES (117, 1029, NULL, 'C/C++', '删除', 100001, '2020-05-29 00:02:13');
INSERT INTO `classify_record` VALUES (118, 1049, NULL, 'C/C++', '增加', 100001, '2020-05-29 00:02:28');
INSERT INTO `classify_record` VALUES (119, 1050, NULL, '排序算法', '增加', 100001, '2020-05-29 00:02:40');
INSERT INTO `classify_record` VALUES (120, 1051, NULL, 'test', '增加', 100001, '2020-05-29 09:50:44');
INSERT INTO `classify_record` VALUES (121, 1051, 'test', 'test1', '编辑', 100001, '2020-05-29 09:50:48');
INSERT INTO `classify_record` VALUES (122, 1051, NULL, 'test1', '删除', 100001, '2020-05-29 09:50:50');

-- ----------------------------
-- Table structure for course_stu
-- ----------------------------
DROP TABLE IF EXISTS `course_stu`;
CREATE TABLE `course_stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `add_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `curr_id`(`curr_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `curr_id` FOREIGN KEY (`curr_id`) REFERENCES `curriculum` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 100050 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_stu
-- ----------------------------
INSERT INTO `course_stu` VALUES (100020, 8, 100019, '2020-04-06 14:00:20');
INSERT INTO `course_stu` VALUES (100022, 13, 100019, '2020-04-06 14:00:24');
INSERT INTO `course_stu` VALUES (100023, 14, 100019, '2020-04-06 14:00:27');
INSERT INTO `course_stu` VALUES (100025, 7, 100019, '2020-04-06 14:00:32');
INSERT INTO `course_stu` VALUES (100026, 9, 100019, '2020-04-06 14:00:34');
INSERT INTO `course_stu` VALUES (100027, 11, 100019, '2020-04-06 14:00:36');
INSERT INTO `course_stu` VALUES (100028, 12, 100019, '2020-04-06 14:00:38');
INSERT INTO `course_stu` VALUES (100030, 10, 100019, '2020-04-07 21:42:49');
INSERT INTO `course_stu` VALUES (100032, 10, 100015, '2020-04-10 12:46:52');
INSERT INTO `course_stu` VALUES (100033, 12, 100015, '2020-04-10 12:52:22');
INSERT INTO `course_stu` VALUES (100034, 19, 100015, '2020-04-12 21:58:47');
INSERT INTO `course_stu` VALUES (100035, 9, 100020, '2020-04-12 22:16:44');
INSERT INTO `course_stu` VALUES (100036, 7, 100020, '2020-04-12 22:16:58');
INSERT INTO `course_stu` VALUES (100037, 12, 100020, '2020-04-14 20:25:05');
INSERT INTO `course_stu` VALUES (100038, 21, 100015, '2020-05-07 14:28:58');
INSERT INTO `course_stu` VALUES (100039, 7, 100021, '2020-05-07 14:32:01');
INSERT INTO `course_stu` VALUES (100040, 21, 100019, '2020-05-16 19:41:18');
INSERT INTO `course_stu` VALUES (100041, 9, 100021, '2020-05-18 20:38:47');
INSERT INTO `course_stu` VALUES (100042, 16, 100021, '2020-05-18 20:39:06');
INSERT INTO `course_stu` VALUES (100043, 10, 100021, '2020-05-18 20:39:12');
INSERT INTO `course_stu` VALUES (100044, 7, 100017, '2020-05-24 13:21:50');
INSERT INTO `course_stu` VALUES (100045, 14, 100015, '2020-05-24 17:42:10');
INSERT INTO `course_stu` VALUES (100048, 12, 100025, '2020-05-28 23:21:21');
INSERT INTO `course_stu` VALUES (100049, 19, 100025, '2020-05-28 23:23:47');

-- ----------------------------
-- Table structure for curr_buy_record
-- ----------------------------
DROP TABLE IF EXISTS `curr_buy_record`;
CREATE TABLE `curr_buy_record`  (
  `id` int(65) NOT NULL,
  `curr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `teac_id` int(11) NOT NULL,
  `price` double(20, 2) NULL DEFAULT NULL,
  `pay_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curr_buy_record
-- ----------------------------
INSERT INTO `curr_buy_record` VALUES (1000000004, 7, 100019, 100015, 100.25, '2020-04-06 11:56:54');
INSERT INTO `curr_buy_record` VALUES (1000000006, 11, 100019, 100017, 200.00, '2020-04-06 11:57:07');
INSERT INTO `curr_buy_record` VALUES (1000000007, 6, 100019, 100015, 300.00, '2020-04-07 21:06:45');
INSERT INTO `curr_buy_record` VALUES (1000000008, 12, 100015, 100017, 10.00, '2020-04-10 12:52:22');
INSERT INTO `curr_buy_record` VALUES (1000000009, 9, 100020, 100015, 250.00, '2020-04-12 22:16:44');
INSERT INTO `curr_buy_record` VALUES (1000000010, 7, 100020, 100015, 100.25, '2020-04-12 22:16:58');
INSERT INTO `curr_buy_record` VALUES (1000000011, 12, 100020, 100017, 10.00, '2020-04-14 20:25:06');
INSERT INTO `curr_buy_record` VALUES (1000000012, 7, 100021, 100015, 100.25, '2020-05-07 14:32:01');
INSERT INTO `curr_buy_record` VALUES (1000000013, 9, 100021, 100015, 250.00, '2020-05-18 20:38:47');
INSERT INTO `curr_buy_record` VALUES (1000000014, 7, 100017, 100015, 100.25, '2020-05-24 13:21:50');
INSERT INTO `curr_buy_record` VALUES (1000000015, 12, 100025, 100017, 10.00, '2020-05-28 23:21:21');

-- ----------------------------
-- Table structure for curr_comment
-- ----------------------------
DROP TABLE IF EXISTS `curr_comment`;
CREATE TABLE `curr_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `context` varchar(16373) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `evaluate` int(11) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curr_comment
-- ----------------------------
INSERT INTO `curr_comment` VALUES (1, 12, 100015, '&lt;img src=&quot;http://localhost:8080/static/layui/images/face/47.gif&quot; alt=&quot;[心]&quot;&gt;', 5, '2020-04-14 17:04:09');
INSERT INTO `curr_comment` VALUES (2, 12, 100015, '&lt;p&gt;卧槽！这门课！&lt;/p&gt;&lt;p&gt;真的太der了！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/1.gif&quot; alt=&quot;[嘻嘻]&quot;&gt;&lt;/p&gt;', 4, '2020-04-14 20:17:34');
INSERT INTO `curr_comment` VALUES (4, 12, 100020, '&lt;p&gt;测试测试测试测试测试。测试测试测试&lt;img src=&quot;http://localhost:8080/static/layui/images/face/17.gif&quot; alt=&quot;[白眼]&quot;&gt;&lt;/p&gt;', 1, '2020-04-14 20:36:54');
INSERT INTO `curr_comment` VALUES (5, 12, 100020, '&lt;img src=&quot;http://localhost:8080/static/layui/images/face/46.gif&quot; alt=&quot;[互粉]&quot;&gt;', 3, '2020-04-14 20:39:03');
INSERT INTO `curr_comment` VALUES (6, 12, 100015, '老子无敌！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/36.gif&quot; alt=&quot;[酷]&quot;&gt;', 5, '2020-04-14 20:43:26');
INSERT INTO `curr_comment` VALUES (7, 12, 100015, '测试测试&lt;img src=&quot;http://localhost:8080/static/layui/images/face/41.gif&quot; alt=&quot;[悲伤]&quot;&gt;', 5, '2020-04-14 20:43:46');
INSERT INTO `curr_comment` VALUES (8, 12, 100015, '&lt;p&gt;测试！！！！！&lt;/p&gt;&lt;p&gt;测试！！！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/43.gif&quot; alt=&quot;[黑线]&quot;&gt;&lt;/p&gt;', 5, '2020-04-14 20:44:02');
INSERT INTO `curr_comment` VALUES (9, 12, 100020, '&lt;p&gt;测测测测测&lt;/p&gt;&lt;p&gt;测测&lt;/p&gt;', 2, '2020-04-14 21:04:47');
INSERT INTO `curr_comment` VALUES (10, 7, 100017, '我叼 ，这门课&lt;b&gt;简直无敌&lt;/b&gt;！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/38.gif&quot; alt=&quot;[哼]&quot;&gt;', 5, '2020-04-14 21:10:57');
INSERT INTO `curr_comment` VALUES (12, 12, 100015, '卧槽！这门课&lt;b&gt;简直无敌&lt;/b&gt;！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;', 5, '2020-04-14 21:56:29');
INSERT INTO `curr_comment` VALUES (13, 12, 100015, '&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span&gt;盼望着，盼望着，东风来了，春天的脚步近了。&lt;/span&gt;一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水长起来了，太阳的脸红起来了。小草偷偷地从土里钻出来，嫩嫩的，绿绿的。园子里，田野里，瞧去，一大片一大片满是的。坐着，躺着，打两个滚，踢几脚球，赛几趟跑，捉几回迷藏。风轻悄悄的，草绵软软的。&lt;/p&gt;', 5, '2020-04-14 21:57:42');
INSERT INTO `curr_comment` VALUES (14, 12, 100015, '扒皮做鞋!&lt;img src=&quot;http://localhost:8080/static/layui/images/face/26.gif&quot; alt=&quot;[怒]&quot;&gt;', 3, '2020-04-15 13:00:00');
INSERT INTO `curr_comment` VALUES (15, 12, 100015, '扒皮做鞋 ！！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/39.gif&quot; alt=&quot;[鼓掌]&quot;&gt;', 2, '2020-04-15 13:01:30');
INSERT INTO `curr_comment` VALUES (16, 12, 100015, '你个derder', 2, '2020-04-15 13:09:07');
INSERT INTO `curr_comment` VALUES (17, 12, 100015, 'hhhhh', 3, '2020-04-15 13:12:55');
INSERT INTO `curr_comment` VALUES (18, 12, 100015, '测试清空评价', 3, '2020-04-15 13:29:24');
INSERT INTO `curr_comment` VALUES (19, 19, 100015, '这门课，无敌！老师贼棒！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/63.gif&quot; alt=&quot;[给力]&quot;&gt;', 5, '2020-04-15 16:27:19');
INSERT INTO `curr_comment` VALUES (20, 19, 100015, '还可以！', 5, '2020-04-15 16:27:52');
INSERT INTO `curr_comment` VALUES (21, 7, 100017, '&lt;img src=&quot;http://localhost:8080/static/layui/images/face/28.gif&quot; alt=&quot;[馋嘴]&quot;&gt;', 5, '2020-05-24 13:22:04');
INSERT INTO `curr_comment` VALUES (22, 7, 100024, '好评&lt;img src=&quot;http://localhost:8080/static/layui/images/face/28.gif&quot; alt=&quot;[馋嘴]&quot;&gt;', 5, '2020-05-28 23:00:18');

-- ----------------------------
-- Table structure for curriculum
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum`  (
  `tea_relname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `tea_id` decimal(65, 0) NOT NULL,
  `c_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `classify_child` int(65) NULL DEFAULT NULL,
  `classify` int(65) NULL DEFAULT NULL COMMENT '类别',
  `charge` int(11) NULL DEFAULT NULL COMMENT '是否收费  1收费   2不收费',
  `price` double(22, 2) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL COMMENT '状态1可用  2待审核  3不可用',
  `popularity` decimal(65, 0) NULL DEFAULT NULL COMMENT '受欢迎程度',
  `add_date` datetime(0) NULL DEFAULT NULL,
  `c_describe` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cover_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `classify`(`classify`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES ('上官婉', 6, 100015, 'JAVA从入门到入殓', NULL, 1028, 2, 0.00, 6, 0, '2020-03-18 14:42:33', '想变强吗，先变秃吧！', NULL);
INSERT INTO `curriculum` VALUES ('上官婉', 7, 100015, 'SpringBoot基础入门教程', 1046, 1028, 1, 100.25, 4, 12556, '2020-03-18 15:58:51', 'springboot基础入门教程', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\03614738-6e68-4d6a-9205-068a6e09d84c_831dfb7b-d460-46ad-a50a-e2eadc2f77c8_ChMkJ13I1cCIbnHqAARB19ENR_0AAvKPgIQLmgABEHv923.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 8, 100015, '基于jsp的开发教学', NULL, 1028, 2, 0.00, 5, 0, '2020-03-18 19:52:46', '学习用jsp开发一些简单的页面和一些简单的功能', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\6cb13675-e274-4dab-9ac5-8f6ff5c9767f_66aca8ce-f0c4-4b3b-8520-a03b3bf9cf50_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 9, 100015, 'Pyhon编程大神精讲', 1047, 1030, 1, 250.00, 4, 2, '2020-03-18 20:51:06', 'Python是最简单的编程语言', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\316fa1ac-61d2-4ca7-9951-ba043b779a50_7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', 10, 100017, 'JQuery大神精讲，山东建筑大学博士学位教授专讲', 1044, 1041, 2, 0.00, 4, 10, '2020-03-22 15:53:24', '本课程专业授业解惑', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\2c9ad4fc-fe39-48a1-9e95-ec48c1864ca6_327278e8-7913-474f-ba9a-26777f9cdeb9_fb5b112c655e9200ea4222b4d519ff0e.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', 11, 100017, '【精品】WEB前端教学', NULL, 1041, 1, 200.00, 5, 1, '2020-03-22 18:27:00', '前端WEB开发，精讲', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\196f640a-822f-4518-975e-cdbc7b8eae72_327278e8-7913-474f-ba9a-26777f9cdeb9_fb5b112c655e9200ea4222b4d519ff0e.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', 12, 100017, '计算机二级Python零基础入门自学', 1047, 1030, 1, 10.00, 4, 4, '2020-03-22 18:28:42', '计算机二级Python零基础入门自学', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\d0c6c350-6296-42de-a7ad-039e62f609b8_92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', 13, 100017, '全新视角解读SptingBoot', 1046, 1028, 2, 0.00, 5, 0, '2020-03-22 18:29:53', '全新视角解读SptingBoot', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\c8073d40-2477-442d-b1ff-89ddea8b278c_66aca8ce-f0c4-4b3b-8520-a03b3bf9cf50_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `curriculum` VALUES ('测试', 14, 100018, 'java课程', NULL, 1028, 2, 0.00, 4, 1, '2020-03-24 11:02:05', '阿萨大大萨达', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\263cfde1-9086-48da-81b4-c9618535c329_92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 15, 100015, '大学物理课程精讲', 1046, 1028, 1, 1.00, 3, 0, '2020-03-24 15:09:11', '啊啊啊', NULL);
INSERT INTO `curriculum` VALUES ('上官婉', 16, 100015, '测试', 1031, 1028, 2, 0.00, 4, 1, '2020-03-27 16:34:36', '测试测试测试测试', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\dfa2d875-c43e-4cb4-9a9c-96eb80139bbc_327278e8-7913-474f-ba9a-26777f9cdeb9_fb5b112c655e9200ea4222b4d519ff0e.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 17, 100015, '测试测试', NULL, 1028, 2, 0.00, 5, 0, '2020-03-27 16:34:47', '测试测试', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\5975e7b4-34ca-4528-86b9-3f785ce676bb_92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 18, 100015, '论头发的茂密与否是否与实力挂钩', 1032, 1028, 2, 0.00, 4, 0, '2020-04-07 21:15:20', '论头发的茂密与否是否与实力挂钩。\n论头发的茂密与否是否与实力挂钩。\n论头发的茂密与否是否与实力挂钩。', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\d85ae7c8-0e33-45a4-bf62-b5fcbdc58905_92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', 19, 100019, 'java开发教程', 1031, 1028, 2, 0.00, 4, 8, '2020-04-12 21:55:59', '暗示法发顺丰', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\ea5c08b7-3914-43d2-893a-ae690cc856df_7f34d459-e534-4723-99c2-2da59c3c179b_62359d7c0774034a2d7fd8e5051c0635.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 20, 100015, '大学英语', 1031, 1028, 2, 0.00, 3, 0, '2020-04-19 19:26:02', '阿飞反反复复', NULL);
INSERT INTO `curriculum` VALUES ('啊啊啊', 21, 100021, 'javaweb教程', NULL, 1028, 2, 0.00, 4, 2, '2020-05-07 14:22:56', '啊撒发生发', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\1446983a-3f05-46f9-a2a9-9fc53cbc7c6b_b23e0779-92fa-4bef-a125-f9f729c705ff_ChMkJ13I0QiIWT5DAAP6gtPDDr0AAvKJwG1bF4AA_qa099.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 22, 100015, 'Finally Test', NULL, 1029, 1, 10.00, 4, 0, '2020-05-24 14:18:27', '最终测试', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\b3ab8235-9492-4be0-af5f-128c0281a9db_ca816783ea2b8bb0db13a291ee224dbc.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 25, 100015, 'JAVA高级教程', 1031, 1028, 1, 100.00, 4, 0, '2020-05-28 23:18:10', '高级教程\n', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\5e349303-62e9-4c93-916a-6c63f033e3f6_a4bbc4aee85d6af6405085c16d640033.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', 26, 100015, 'JAVA超级教程', 1046, 1028, 2, 0.00, 2, 0, '2020-05-28 23:57:06', '大学教授 高级讲师\n无敌。无敌', NULL);
INSERT INTO `curriculum` VALUES ('上官婉', 27, 100015, 'JAVA教程', 1040, 1028, 1, 30.00, 1, 0, '2020-05-29 09:55:19', '阿斯弗', NULL);

-- ----------------------------
-- Table structure for earning_record
-- ----------------------------
DROP TABLE IF EXISTS `earning_record`;
CREATE TABLE `earning_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `money` double(12, 2) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10096 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of earning_record
-- ----------------------------
INSERT INTO `earning_record` VALUES (10009, 100015, 200.00, '2020-04-09 00:00:00');
INSERT INTO `earning_record` VALUES (10010, 100017, 200.00, '2020-04-09 00:00:00');
INSERT INTO `earning_record` VALUES (10029, 100015, 155.00, '2020-04-10 00:00:00');
INSERT INTO `earning_record` VALUES (10030, 100017, 20.00, '2020-04-10 00:00:00');
INSERT INTO `earning_record` VALUES (10031, 100015, 0.00, '2020-04-11 00:00:00');
INSERT INTO `earning_record` VALUES (10032, 100017, 20.00, '2020-04-11 00:00:00');
INSERT INTO `earning_record` VALUES (10033, 100015, 350.25, '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES (10034, 100017, 20.00, '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES (10035, 100019, 0.00, '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES (10036, 100015, 350.25, '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES (10037, 100017, 20.00, '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES (10038, 100019, 0.00, '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES (10039, 100015, 0.00, '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES (10040, 100017, 10.00, '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES (10041, 100019, 0.00, '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES (10042, 100015, 0.00, '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES (10043, 100017, 0.00, '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES (10044, 100019, 0.00, '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES (10045, 100015, 0.00, '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES (10046, 100017, 0.00, '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES (10047, 100019, 0.00, '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES (10051, 100015, 0.00, '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES (10052, 100017, 0.00, '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES (10053, 100019, 0.00, '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES (10054, 100015, 0.00, '2020-04-22 00:00:00');
INSERT INTO `earning_record` VALUES (10055, 100017, 0.00, '2020-04-22 00:00:00');
INSERT INTO `earning_record` VALUES (10056, 100019, 0.00, '2020-04-22 00:00:00');
INSERT INTO `earning_record` VALUES (10057, 100015, 0.00, '2020-05-18 00:00:00');
INSERT INTO `earning_record` VALUES (10058, 100017, 0.00, '2020-05-18 00:00:00');
INSERT INTO `earning_record` VALUES (10059, 100019, 0.00, '2020-05-18 00:00:00');
INSERT INTO `earning_record` VALUES (10060, 100021, 0.00, '2020-05-18 00:00:00');
INSERT INTO `earning_record` VALUES (10064, 100015, 0.00, '2020-05-19 00:00:00');
INSERT INTO `earning_record` VALUES (10065, 100017, 0.00, '2020-05-19 00:00:00');
INSERT INTO `earning_record` VALUES (10066, 100019, 0.00, '2020-05-19 00:00:00');
INSERT INTO `earning_record` VALUES (10067, 100021, 0.00, '2020-05-19 00:00:00');
INSERT INTO `earning_record` VALUES (10068, 100015, 0.00, '2020-05-24 00:00:00');
INSERT INTO `earning_record` VALUES (10069, 100017, 0.00, '2020-05-24 00:00:00');
INSERT INTO `earning_record` VALUES (10070, 100019, 0.00, '2020-05-24 00:00:00');
INSERT INTO `earning_record` VALUES (10071, 100021, 0.00, '2020-05-24 00:00:00');
INSERT INTO `earning_record` VALUES (10075, 100015, 100.25, '2020-05-27 00:00:00');
INSERT INTO `earning_record` VALUES (10076, 100017, 0.00, '2020-05-27 00:00:00');
INSERT INTO `earning_record` VALUES (10077, 100019, 0.00, '2020-05-27 00:00:00');
INSERT INTO `earning_record` VALUES (10078, 100021, 0.00, '2020-05-27 00:00:00');
INSERT INTO `earning_record` VALUES (10082, 100015, 100.25, '2020-05-28 00:00:00');
INSERT INTO `earning_record` VALUES (10083, 100017, 0.00, '2020-05-28 00:00:00');
INSERT INTO `earning_record` VALUES (10084, 100019, 0.00, '2020-05-28 00:00:00');
INSERT INTO `earning_record` VALUES (10085, 100021, 0.00, '2020-05-28 00:00:00');
INSERT INTO `earning_record` VALUES (10089, 100015, 100.25, '2020-05-29 00:00:00');
INSERT INTO `earning_record` VALUES (10090, 100017, 10.00, '2020-05-29 00:00:00');
INSERT INTO `earning_record` VALUES (10091, 100019, 0.00, '2020-05-29 00:00:00');
INSERT INTO `earning_record` VALUES (10092, 100021, 0.00, '2020-05-29 00:00:00');
INSERT INTO `earning_record` VALUES (10093, 100025, 0.00, '2020-05-29 00:00:00');

-- ----------------------------
-- Table structure for earnings
-- ----------------------------
DROP TABLE IF EXISTS `earnings`;
CREATE TABLE `earnings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `earnings_today` double(22, 2) NULL DEFAULT NULL COMMENT '今日收益',
  `total_revenue` double(22, 2) NULL DEFAULT NULL COMMENT '总收入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100009 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of earnings
-- ----------------------------
INSERT INTO `earnings` VALUES (100001, 100015, 0.00, 13122.25);
INSERT INTO `earnings` VALUES (100002, 100017, 0.00, 240.00);
INSERT INTO `earnings` VALUES (100003, 100019, 0.00, 0.00);
INSERT INTO `earnings` VALUES (100004, 100021, 0.00, 0.00);
INSERT INTO `earnings` VALUES (100007, 100025, 0.00, 0.00);
INSERT INTO `earnings` VALUES (100008, 100026, 0.00, 0.00);

-- ----------------------------
-- Table structure for homepage_carousel
-- ----------------------------
DROP TABLE IF EXISTS `homepage_carousel`;
CREATE TABLE `homepage_carousel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10025 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homepage_carousel
-- ----------------------------
INSERT INTO `homepage_carousel` VALUES (10015, '/resources/curr_cover/2c9ad4fc-fe39-48a1-9e95-ec48c1864ca6_327278e8-7913-474f-ba9a-26777f9cdeb9_fb5b112c655e9200ea4222b4d519ff0e.jpg', 'JQuery大神精讲，山东建筑大学博士学位教授专讲', '本课程专业授业解惑', '/page/home_enrollCurr?curr_id=10');
INSERT INTO `homepage_carousel` VALUES (10017, '/resources/curr_cover/d0c6c350-6296-42de-a7ad-039e62f609b8_92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg', '计算机二级Python零基础入门自学', '计算机二级Python零基础入门自学', '/page/home_enrollCurr?curr_id=12');
INSERT INTO `homepage_carousel` VALUES (10018, '/resources/curr_cover/316fa1ac-61d2-4ca7-9951-ba043b779a50_7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg', 'Pyhon编程大神精讲', 'Python是最简单的编程语言', '/page/home_enrollCurr?curr_id=9');
INSERT INTO `homepage_carousel` VALUES (10019, '/resources/curr_cover/ea5c08b7-3914-43d2-893a-ae690cc856df_7f34d459-e534-4723-99c2-2da59c3c179b_62359d7c0774034a2d7fd8e5051c0635.jpg', 'java开发教程', '暗示法发顺丰', '/page/home_enrollCurr?curr_id=19');
INSERT INTO `homepage_carousel` VALUES (10024, '/resources/curr_cover/b3ab8235-9492-4be0-af5f-128c0281a9db_ca816783ea2b8bb0db13a291ee224dbc.jpg', 'Finally Test', '最终测试', '/page/home_enrollCurr?curr_id=22');

-- ----------------------------
-- Table structure for learn_time_record
-- ----------------------------
DROP TABLE IF EXISTS `learn_time_record`;
CREATE TABLE `learn_time_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `learn_time` double(255, 5) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of learn_time_record
-- ----------------------------
INSERT INTO `learn_time_record` VALUES (8, 100015, 0.00000, '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES (9, 100017, 0.00000, '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES (10, 100018, 0.00000, '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES (11, 100019, 0.00000, '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES (12, 100020, 3.00000, '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES (15, 100015, 0.00000, '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES (16, 100017, 0.00000, '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES (17, 100018, 0.00000, '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES (18, 100019, 0.00000, '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES (19, 100020, 2.13310, '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES (20, 100015, 0.00000, '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES (21, 100017, 0.00000, '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES (22, 100018, 0.00000, '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES (23, 100019, 0.00000, '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES (24, 100020, 0.00000, '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES (25, 100015, 0.00000, '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES (26, 100017, 0.00000, '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES (27, 100018, 0.00000, '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES (28, 100019, 0.00000, '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES (29, 100020, 0.00000, '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES (30, 100015, 0.00000, '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES (31, 100017, 0.00000, '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES (32, 100018, 0.00000, '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES (33, 100019, 0.00000, '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES (34, 100020, 1.96889, '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES (35, 100015, 0.01361, '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (36, 100017, 0.00000, '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (37, 100018, 0.00000, '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (38, 100019, 0.00000, '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (39, 100020, 0.05639, '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (40, 100015, 0.00000, '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES (41, 100017, 0.00000, '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES (42, 100018, 0.00000, '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES (43, 100019, 0.00000, '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES (44, 100020, 0.00000, '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES (45, 100015, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (46, 100017, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (47, 100018, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (48, 100019, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (49, 100020, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (50, 100021, 0.00000, '2020-05-18 00:00:00');
INSERT INTO `learn_time_record` VALUES (52, 100015, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (53, 100017, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (54, 100018, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (55, 100019, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (56, 100020, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (57, 100021, 0.00000, '2020-05-19 00:00:00');
INSERT INTO `learn_time_record` VALUES (58, 100015, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (59, 100017, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (60, 100018, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (61, 100019, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (62, 100020, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (63, 100021, 0.00000, '2020-05-24 00:00:00');
INSERT INTO `learn_time_record` VALUES (65, 100015, 0.03556, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (66, 100017, 0.00000, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (67, 100018, 0.00000, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (68, 100019, 0.00000, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (69, 100020, 0.00000, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (70, 100021, 0.00000, '2020-05-27 00:00:00');
INSERT INTO `learn_time_record` VALUES (72, 100015, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (73, 100017, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (74, 100018, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (75, 100019, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (76, 100020, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (77, 100021, 0.00000, '2020-05-28 00:00:00');
INSERT INTO `learn_time_record` VALUES (79, 100015, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (80, 100017, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (81, 100018, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (82, 100019, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (83, 100020, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (84, 100021, 0.00000, '2020-05-29 00:00:00');
INSERT INTO `learn_time_record` VALUES (85, 100025, 0.00000, '2020-05-29 00:00:00');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `title` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `send_date` datetime(0) NULL DEFAULT NULL,
  `send_user` int(11) NULL DEFAULT NULL,
  `all_send` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 100016, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-14 21:52:16发送的的教师资格申请未通过审核,感谢您对本平台的支持', 1, '2020-03-15 15:50:27', 100001, NULL);
INSERT INTO `notice` VALUES (2, 100016, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-15 15:53:26', 100001, NULL);
INSERT INTO `notice` VALUES (3, 100016, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-15 15:55:44', 100001, NULL);
INSERT INTO `notice` VALUES (4, 100016, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-15 16:10:31', 100001, NULL);
INSERT INTO `notice` VALUES (7, 100014, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100014,您于2020-03-16 16:07:04发送的的教师资格申请未通过审核,感谢您对本平台的支持', 1, '2020-03-16 16:08:47', 100001, NULL);
INSERT INTO `notice` VALUES (8, 100014, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100014,您于2020-03-16 16:09:32发送的的教师资格申请未通过审核,感谢您对本平台的支持', 1, '2020-03-17 22:27:53', 100001, NULL);
INSERT INTO `notice` VALUES (13, 100017, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 15:51:21发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-22 15:51:46', 100001, NULL);
INSERT INTO `notice` VALUES (14, 100017, '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 15:53:24发送的的开设课程申请已通过审核,感谢您对本平台的支持', 1, '2020-03-22 15:53:44', 100001, NULL);
INSERT INTO `notice` VALUES (15, 100017, '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:27:00发送的的开设课程申请已通过审核,感谢您对本平台的支持', 1, '2020-03-22 18:30:11', 100001, NULL);
INSERT INTO `notice` VALUES (16, 100017, '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:28:42发送的的开设课程申请已通过审核,感谢您对本平台的支持', 1, '2020-03-22 18:30:18', 100001, NULL);
INSERT INTO `notice` VALUES (17, 100017, '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:29:53发送的的开设课程申请已通过审核,感谢您对本平台的支持', 1, '2020-03-22 18:30:24', 100001, NULL);
INSERT INTO `notice` VALUES (18, 100018, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 11:00:43发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-24 11:01:16', 100001, NULL);
INSERT INTO `notice` VALUES (19, 100018, '关于开设课程申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 11:02:05发送的的开设课程申请已通过审核,感谢您对本平台的支持', 1, '2020-03-24 11:02:46', 100001, NULL);
INSERT INTO `notice` VALUES (20, 100018, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', 1, '2020-03-24 15:33:43', 100001, NULL);
INSERT INTO `notice` VALUES (29, 100020, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-04-10 19:40:52', 100001, NULL);
INSERT INTO `notice` VALUES (30, 100015, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持尊敬的用户，用户ID为：100018<br>您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-04-10 19:41:20', 100018, NULL);
INSERT INTO `notice` VALUES (31, 100015, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-04-10 19:56:53', 100001, NULL);
INSERT INTO `notice` VALUES (32, 100019, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100019,您于2020-04-12 21:51:28发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-04-12 21:52:59', 100001, NULL);
INSERT INTO `notice` VALUES (33, 100019, '关于课程《java开发教程》开设申请的通知', '尊敬的用户，用户ID为：100019,您于2020-04-12 21:55:59发送的名为《java开发教程》课程开设的申请已通过审核,感谢您对本平台的支持', 2, '2020-04-12 21:56:26', 100001, NULL);
INSERT INTO `notice` VALUES (40, 100001, '企业级应用案例实训第四周', '哈哈哈哈 啊撒发生发啊杀 \n啊发  啊哈哈哈和和啊', 2, '2020-04-16 17:42:06', 100015, NULL);
INSERT INTO `notice` VALUES (41, 100001, '管理员在家吗', '我找你去玩 啊  \n      上网吧去吗！！！\n打游戏啊！！！', 2, '2020-04-16 18:07:44', 100015, NULL);
INSERT INTO `notice` VALUES (44, 100017, '企业级应用案例实训第四周', 'asfasfasfasfas', 1, '2020-04-16 18:13:22', 100015, NULL);
INSERT INTO `notice` VALUES (45, 100017, '企业级应用案例实训第一周', 'asfasfasf', 1, '2020-04-16 18:13:52', 100015, NULL);
INSERT INTO `notice` VALUES (46, 100001, '好的', '收到收到收到收到收到', 2, '2020-04-16 18:59:21', 100015, NULL);
INSERT INTO `notice` VALUES (47, 100015, '企业级应用案例实训第一周', 'asfasfa', 2, '2020-04-16 19:02:12', 100001, NULL);
INSERT INTO `notice` VALUES (48, 100020, 'asfasf', 'asfasfasf as fas sa', 2, '2020-04-16 19:03:45', 100001, NULL);
INSERT INTO `notice` VALUES (49, 100015, 'asfas', 'asfasfasf', 2, '2020-04-16 19:05:09', 100001, NULL);
INSERT INTO `notice` VALUES (50, 100001, '企业级应用案例实训第一周', 'asfasfasfasafs', 2, '2020-04-16 19:07:29', 100015, NULL);
INSERT INTO `notice` VALUES (51, 100001, '企业级应用案例实训第一周', '发沙发啊撒发生发仨发送发送', 2, '2020-04-16 19:28:59', 100015, NULL);
INSERT INTO `notice` VALUES (54, 100015, '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《JAVA从入门到入殓》的课程已被管理员解除停封状态，请在“我开设的课程”模块对课程进行管理', 2, '2020-04-17 18:46:51', 100001, 2);
INSERT INTO `notice` VALUES (55, 100015, '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《JAVA从入门到入殓》的课程已被管理员停封，如有疑问请及时联系管理员', 2, '2020-04-17 18:46:54', 100001, 2);
INSERT INTO `notice` VALUES (56, 100020, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100020,您于2020-04-19 19:25:29发送的的教师资格申请未通过审核,感谢您对本平台的支持', 1, '2020-04-19 19:30:33', NULL, 2);
INSERT INTO `notice` VALUES (57, 100021, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100021,您于2020-05-07 14:20:57发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-05-07 14:21:25', 100001, 2);
INSERT INTO `notice` VALUES (58, 100021, '关于课程《javaweb教程》开设申请的通知', '尊敬的用户，用户ID为：100021,您于2020-05-07 14:22:56发送的名为《javaweb教程》课程开设的申请已通过审核,感谢您对本平台的支持', 2, '2020-05-07 14:23:27', 100001, 2);
INSERT INTO `notice` VALUES (59, 100015, '关于课程《大学英语》开设申请的通知', '尊敬的用户，用户ID为：100015,您于2020-04-19 19:26:02发送的名为《大学英语》课程开设的申请未通过审核,感谢您对本平台的支持', 2, '2020-05-24 14:18:45', 100001, 2);
INSERT INTO `notice` VALUES (60, 100015, '关于课程《Finally Test》开设申请的通知', '尊敬的用户，用户ID为：100015,您于2020-05-24 14:18:27发送的名为《Finally Test》课程开设的申请已通过审核,感谢您对本平台的支持', 2, '2020-05-24 14:18:52', 100001, 2);
INSERT INTO `notice` VALUES (61, 100023, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100023,您于2020-05-27 18:17:38发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-05-27 18:18:16', 100001, 2);
INSERT INTO `notice` VALUES (62, 100023, '关于课程《C语言基础语法》开设申请的通知', '尊敬的用户，用户ID为：100023,您于2020-05-27 18:20:13发送的名为《C语言基础语法》课程开设的申请已通过审核,感谢您对本平台的支持', 2, '2020-05-27 18:20:51', 100001, 2);
INSERT INTO `notice` VALUES (63, 100015, '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《SpringBoot基础入门教程》的课程已被管理员停封，如有疑问请及时联系管理员', 2, '2020-05-27 19:47:26', 100001, 2);
INSERT INTO `notice` VALUES (64, 100015, '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《SpringBoot基础入门教程》的课程已被管理员解除停封状态，请在“我开设的课程”模块对课程进行管理', 2, '2020-05-27 19:48:17', 100001, 2);
INSERT INTO `notice` VALUES (67, 100015, 'gsg', 'sdgs', 2, '2020-05-28 23:15:03', 100001, NULL);
INSERT INTO `notice` VALUES (68, 100015, 'sdgsd', 'sdgsdgs', 2, '2020-05-28 23:15:10', 100001, NULL);
INSERT INTO `notice` VALUES (69, 100015, '关于课程《JAVA高级教程》开设申请的通知', '尊敬的用户，用户ID为：100015,您于2020-05-28 23:18:10发送的名为《JAVA高级教程》课程开设的申请已通过审核,感谢您对本平台的支持', 2, '2020-05-28 23:18:30', 100001, 2);
INSERT INTO `notice` VALUES (70, 100025, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100025,您于2020-05-28 23:22:54发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-05-28 23:23:12', 100001, 2);
INSERT INTO `notice` VALUES (71, 100015, 'asdas', 'asdas', 2, '2020-05-29 09:50:19', 100001, NULL);
INSERT INTO `notice` VALUES (72, 100018, 'asda', 'asdas', 1, '2020-05-29 09:50:25', 100001, NULL);
INSERT INTO `notice` VALUES (73, 100015, '关于课程《JAVA教程》开设申请的通知', '尊敬的用户，用户ID为：100015,您于2020-05-29 09:55:19发送的名为《JAVA教程》课程开设的申请已通过审核,感谢您对本平台的支持', 1, '2020-05-29 09:57:51', 100001, 2);
INSERT INTO `notice` VALUES (74, 100026, '关于教师资格申请的通知', '尊敬的用户，用户ID为：100026,您于2020-05-29 09:57:38发送的的教师资格申请已通过审核,感谢您对本平台的支持', 2, '2020-05-29 09:58:00', 100001, 2);

-- ----------------------------
-- Table structure for popularity
-- ----------------------------
DROP TABLE IF EXISTS `popularity`;
CREATE TABLE `popularity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `curr_id` int(11) NULL DEFAULT NULL,
  `popularity` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of popularity
-- ----------------------------
INSERT INTO `popularity` VALUES (1, 100015, NULL, 0);
INSERT INTO `popularity` VALUES (3, 100017, NULL, 0);
INSERT INTO `popularity` VALUES (5, NULL, 6, 0);
INSERT INTO `popularity` VALUES (6, NULL, 7, 0);
INSERT INTO `popularity` VALUES (7, NULL, 8, 0);
INSERT INTO `popularity` VALUES (8, NULL, 9, 0);
INSERT INTO `popularity` VALUES (9, NULL, 10, 0);
INSERT INTO `popularity` VALUES (10, NULL, 11, 0);
INSERT INTO `popularity` VALUES (11, NULL, 12, 0);
INSERT INTO `popularity` VALUES (12, NULL, 13, 0);
INSERT INTO `popularity` VALUES (13, NULL, 14, 0);
INSERT INTO `popularity` VALUES (14, NULL, 16, 0);
INSERT INTO `popularity` VALUES (15, NULL, 17, 0);
INSERT INTO `popularity` VALUES (16, NULL, 18, 0);
INSERT INTO `popularity` VALUES (17, 100019, NULL, 0);
INSERT INTO `popularity` VALUES (18, NULL, 19, 0);
INSERT INTO `popularity` VALUES (19, 100021, NULL, 0);
INSERT INTO `popularity` VALUES (20, NULL, 21, 0);
INSERT INTO `popularity` VALUES (21, NULL, 22, 0);
INSERT INTO `popularity` VALUES (26, NULL, 25, 0);
INSERT INTO `popularity` VALUES (27, 100025, NULL, 0);
INSERT INTO `popularity` VALUES (28, NULL, 27, 0);
INSERT INTO `popularity` VALUES (29, 100026, NULL, 0);

-- ----------------------------
-- Table structure for popularity_record
-- ----------------------------
DROP TABLE IF EXISTS `popularity_record`;
CREATE TABLE `popularity_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `curr_id` int(11) NULL DEFAULT NULL,
  `popularity` decimal(10, 0) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 325 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of popularity_record
-- ----------------------------
INSERT INTO `popularity_record` VALUES (5, NULL, 6, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (6, NULL, 7, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (7, NULL, 8, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (8, NULL, 9, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (9, NULL, 10, 8, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (10, NULL, 11, 1, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (11, NULL, 12, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (12, NULL, 13, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (13, NULL, 14, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (14, NULL, 16, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (15, NULL, 17, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (16, NULL, 18, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (20, 100015, NULL, 0, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (21, 100017, NULL, 9, '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES (22, NULL, 6, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (23, NULL, 7, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (24, NULL, 8, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (25, NULL, 9, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (26, NULL, 10, 1, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (27, NULL, 11, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (28, NULL, 12, 2, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (29, NULL, 13, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (30, NULL, 14, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (31, NULL, 16, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (32, NULL, 17, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (33, NULL, 18, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (37, 100015, NULL, 0, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (38, 100017, NULL, 3, '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES (39, NULL, 6, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (40, NULL, 7, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (41, NULL, 8, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (42, NULL, 9, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (43, NULL, 10, 1, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (44, NULL, 11, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (45, NULL, 12, 2, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (46, NULL, 13, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (47, NULL, 14, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (48, NULL, 16, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (49, NULL, 17, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (50, NULL, 18, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (54, 100015, NULL, 0, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (55, 100017, NULL, 3, '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES (56, NULL, 6, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (57, NULL, 7, 1, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (58, NULL, 8, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (59, NULL, 9, 1, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (60, NULL, 10, 1, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (61, NULL, 11, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (62, NULL, 12, 2, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (63, NULL, 13, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (64, NULL, 14, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (65, NULL, 16, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (66, NULL, 17, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (67, NULL, 18, 0, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (68, NULL, 19, 1, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (71, 100015, NULL, 2, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (72, 100017, NULL, 3, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (73, 100019, NULL, 1, '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES (74, NULL, 6, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (75, NULL, 7, 1, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (76, NULL, 8, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (77, NULL, 9, 1, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (78, NULL, 10, 1, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (79, NULL, 11, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (80, NULL, 12, 2, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (81, NULL, 13, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (82, NULL, 14, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (83, NULL, 16, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (84, NULL, 17, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (85, NULL, 18, 0, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (86, NULL, 19, 1, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (89, 100015, NULL, 2, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (90, 100017, NULL, 3, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (91, 100019, NULL, 1, '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES (92, NULL, 6, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (93, NULL, 7, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (94, NULL, 8, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (95, NULL, 9, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (96, NULL, 10, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (97, NULL, 11, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (98, NULL, 12, 1, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (99, NULL, 13, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (100, NULL, 14, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (101, NULL, 16, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (102, NULL, 17, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (103, NULL, 18, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (104, NULL, 19, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (107, 100015, NULL, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (108, 100017, NULL, 1, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (109, 100019, NULL, 0, '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES (110, 100015, NULL, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (111, 100017, NULL, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (112, 100019, NULL, 2, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (113, NULL, 6, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (114, NULL, 7, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (115, NULL, 8, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (116, NULL, 9, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (117, NULL, 10, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (118, NULL, 11, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (119, NULL, 12, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (120, NULL, 13, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (121, NULL, 14, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (122, NULL, 16, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (123, NULL, 17, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (124, NULL, 18, 0, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (125, NULL, 19, 2, '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES (126, NULL, 6, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (127, NULL, 7, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (128, NULL, 8, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (129, NULL, 9, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (130, NULL, 10, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (131, NULL, 11, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (132, NULL, 12, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (133, NULL, 13, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (134, NULL, 14, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (135, NULL, 16, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (136, NULL, 17, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (137, NULL, 18, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (138, NULL, 19, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (141, 100015, NULL, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (142, 100017, NULL, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (143, 100019, NULL, 0, '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES (144, 100015, NULL, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (145, 100017, NULL, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (146, 100019, NULL, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (147, NULL, 6, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (148, NULL, 7, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (149, NULL, 8, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (150, NULL, 9, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (151, NULL, 10, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (152, NULL, 11, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (153, NULL, 12, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (154, NULL, 13, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (155, NULL, 14, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (156, NULL, 16, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (157, NULL, 17, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (158, NULL, 18, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (159, NULL, 19, 0, '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES (160, NULL, 6, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (161, NULL, 7, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (162, NULL, 8, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (163, NULL, 9, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (164, NULL, 10, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (165, NULL, 11, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (166, NULL, 12, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (167, NULL, 13, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (168, NULL, 14, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (169, NULL, 16, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (170, NULL, 17, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (171, NULL, 18, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (172, NULL, 19, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (175, 100015, NULL, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (176, 100017, NULL, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (177, 100019, NULL, 0, '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES (178, NULL, 6, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (179, NULL, 7, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (180, NULL, 8, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (181, NULL, 9, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (182, NULL, 10, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (183, NULL, 11, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (184, NULL, 12, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (185, NULL, 13, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (186, NULL, 14, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (187, NULL, 16, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (188, NULL, 17, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (189, NULL, 18, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (190, NULL, 19, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (191, NULL, 21, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (193, 100015, NULL, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (194, 100017, NULL, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (195, 100019, NULL, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (196, 100021, NULL, 0, '2020-05-18 00:00:00');
INSERT INTO `popularity_record` VALUES (200, 100015, NULL, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (201, 100017, NULL, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (202, 100019, NULL, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (203, 100021, NULL, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (207, NULL, 6, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (208, NULL, 7, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (209, NULL, 8, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (210, NULL, 9, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (211, NULL, 10, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (212, NULL, 11, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (213, NULL, 12, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (214, NULL, 13, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (215, NULL, 14, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (216, NULL, 16, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (217, NULL, 17, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (218, NULL, 18, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (219, NULL, 19, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (220, NULL, 21, 0, '2020-05-19 00:00:00');
INSERT INTO `popularity_record` VALUES (221, 100015, NULL, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (222, 100017, NULL, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (223, 100019, NULL, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (224, 100021, NULL, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (228, NULL, 6, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (229, NULL, 7, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (230, NULL, 8, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (231, NULL, 9, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (232, NULL, 10, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (233, NULL, 11, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (234, NULL, 12, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (235, NULL, 13, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (236, NULL, 14, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (237, NULL, 16, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (238, NULL, 17, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (239, NULL, 18, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (240, NULL, 19, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (241, NULL, 21, 0, '2020-05-24 00:00:00');
INSERT INTO `popularity_record` VALUES (243, 100015, NULL, 2, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (244, 100017, NULL, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (245, 100019, NULL, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (246, 100021, NULL, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (250, NULL, 6, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (251, NULL, 7, 2, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (252, NULL, 8, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (253, NULL, 9, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (254, NULL, 10, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (255, NULL, 11, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (256, NULL, 12, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (257, NULL, 13, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (258, NULL, 14, 1, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (259, NULL, 16, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (260, NULL, 17, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (261, NULL, 18, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (262, NULL, 19, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (263, NULL, 21, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (264, NULL, 22, 0, '2020-05-27 00:00:00');
INSERT INTO `popularity_record` VALUES (265, NULL, 6, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (266, NULL, 7, 1, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (267, NULL, 8, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (268, NULL, 9, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (269, NULL, 10, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (270, NULL, 11, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (271, NULL, 12, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (272, NULL, 13, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (273, NULL, 14, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (274, NULL, 16, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (275, NULL, 17, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (276, NULL, 18, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (277, NULL, 19, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (278, NULL, 21, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (279, NULL, 22, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (280, 100015, NULL, 1, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (281, 100017, NULL, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (282, 100019, NULL, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (283, 100021, NULL, 0, '2020-05-28 00:00:00');
INSERT INTO `popularity_record` VALUES (287, NULL, 6, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (288, NULL, 7, 2, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (289, NULL, 8, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (290, NULL, 9, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (291, NULL, 10, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (292, NULL, 11, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (293, NULL, 12, 1, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (294, NULL, 13, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (295, NULL, 14, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (296, NULL, 16, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (297, NULL, 17, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (298, NULL, 18, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (299, NULL, 19, 1, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (300, NULL, 21, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (301, NULL, 22, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (302, NULL, 25, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (318, 100015, NULL, 2, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (319, 100017, NULL, 1, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (320, 100019, NULL, 1, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (321, 100021, NULL, 0, '2020-05-29 00:00:00');
INSERT INTO `popularity_record` VALUES (322, 100025, NULL, 0, '2020-05-29 00:00:00');

-- ----------------------------
-- Table structure for tea_application
-- ----------------------------
DROP TABLE IF EXISTS `tea_application`;
CREATE TABLE `tea_application`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `relname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` decimal(60, 0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `certificate` int(11) NULL DEFAULT NULL,
  `idcard_no` decimal(60, 0) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL COMMENT '审核状态  1待审核  2通过  3不通过',
  `apply_date` datetime(0) NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TEACHING` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tea_application
-- ----------------------------
INSERT INTO `tea_application` VALUES (14, 100015, '上官婉', '10086@qq.com', 13561246582, '广寒宫', 10001, 371427199911111111, 3, '2020-03-15 16:53:15', '高等数学', '山东交通学院任教十余年');
INSERT INTO `tea_application` VALUES (15, 100015, '上官婉', '10086@qq.com', 13561246582, '广寒宫', 10002, 111111199911111111, 2, '2020-03-16 14:07:18', '大学英语', '山东交通学院任教十余年');
INSERT INTO `tea_application` VALUES (16, 100014, '阿松大', '1111@qq.com', 13555555555, '阿房宫', 10003, 111111199911111111, 3, '2020-03-16 16:07:04', '大学物理', '啊沙发沙发撒');
INSERT INTO `tea_application` VALUES (17, 100014, '阿松大', '1111@qq.com', 13555555555, '阿房宫', 10004, 111111199911111111, 3, '2020-03-16 16:09:32', '大学物理', '啊实打实的');
INSERT INTO `tea_application` VALUES (18, 100017, '啊啊啊', '2222@qq.com', 13111111111, '按时发生', 10005, 111111199811111111, 2, '2020-03-22 15:51:21', '土木工程', '山东建筑从大学任教十余年');
INSERT INTO `tea_application` VALUES (19, 100018, '测试', '222@qq.com', 13111111111, '阿萨法发是否', 10006, 111111199811111111, 2, '2020-03-24 11:00:43', '大学物理', '帆帆帆帆');
INSERT INTO `tea_application` VALUES (20, 100018, '测试', '222@qq.com', 13111111111, '阿萨法发是否', 10007, 111111199811111111, 2, '2020-03-24 15:12:35', '大学物理', '阿萨法');
INSERT INTO `tea_application` VALUES (21, 100019, '啊啊啊', '22@qq.com', 13111111111, 'asdas', 10008, 371111199811111111, 2, '2020-04-12 21:51:28', '大学物理', '啊沙发沙发沙发沙发上');
INSERT INTO `tea_application` VALUES (22, 100020, '带多数', '228@qq.com', 13512121212, '啊士大夫', 10009, 371411199911111111, 3, '2020-04-19 19:25:29', '大学教程', '发发发发发发');
INSERT INTO `tea_application` VALUES (23, 100021, '啊啊啊', '75@qq.com', 13111111111, 'asd暗室逢灯', 10010, 311111199811111111, 2, '2020-05-07 14:20:57', '阿萨法', '啊沙发沙发沙发撒');
INSERT INTO `tea_application` VALUES (26, 100025, '齐友帅', '111@qq.com', 13111111111, 'asfa', 10011, 331131199911111111, 2, '2020-05-28 23:22:54', '齐友帅', '啊沙发沙发');
INSERT INTO `tea_application` VALUES (27, 100026, 'asda', '2222@qq.com', 13511111111, 'asfa', 10012, 111111199911111111, 2, '2020-05-29 09:57:38', 'asfasf', 'asfasf');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` decimal(65, 0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `add_date` datetime(0) NULL DEFAULT NULL,
  `money` double(255, 2) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '职位（ 1管理员 2 教师 3学生）',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态 1可用  2待审核   3不可用',
  `certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证书存放  路径',
  `popularity` decimal(65, 0) NULL DEFAULT NULL COMMENT '受欢迎程度  评分标准',
  `relname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `purikura` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像存放路径',
  `learn_time` double(255, 5) NULL DEFAULT NULL,
  `learn_time_all` double(255, 5) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100027 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (100001, 'admin', '111111', '阿七', 3, '山东聊城', 15866648217, '759771971@qq.com', '2020-03-01 17:18:16', NULL, 1, 1, NULL, 0, '齐友帅', '啊啊啊啊', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\cb8bb18c-eb09-4c47-8ca7-dea91b950b39_ddd3ab59d109b3dea0394e6ac4bf6c81810a4c48.jpg', 0.00000, 0.00000);
INSERT INTO `user` VALUES (100015, 'student', '111111', '学生党赛高', 2, '广寒宫', 13561246582, '10086@qq.com', '2020-03-10 15:20:11', 21211.86, 2, 1, '10002', 25, '上官婉', '我是个好学生', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\591b7e0d-5cb0-407e-b9f0-f33c5214858d_6ca54936-ca4e-4d92-8ec4-bbb392710d2b_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 0.00000, 0.07389);
INSERT INTO `user` VALUES (100017, 'jinzusong', '111111', '靳祖松', 3, '按时发生', 13111111111, '2222@qq.com', '2020-03-15 20:13:56', 879.50, 2, 1, '10005', 15, '啊啊啊', '啊啊啊', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\20375fdd-7638-4f41-9fbb-cba5d3ad3cc1_5d595246b02b451090dbaca651333f5e!400x400.jpeg', 0.00000, 0.00000);
INSERT INTO `user` VALUES (100018, 'ceshi', '111111', '', 3, '阿萨法发是否', 13111111111, '222@qq.com', '2020-03-24 10:58:44', 0.00, 2, 1, '', 1, '测试', '', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\9822d638-58c9-424c-a496-57664e97106c_78aeef2b3c244a44a43dbc8e7eb568d5!400x400.jpeg', 0.00000, 0.00000);
INSERT INTO `user` VALUES (100019, 'xuesheng', '111111', 'asd', 3, 'asdas', 13111111111, '22@qq.com', '2020-04-06 11:55:35', 99438.75, 2, 1, '10008', 8, '啊啊啊', '', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\a2d30fa5-bba0-48c3-84a0-8e076c27228e_45ec5db1-29a1-4018-8b1a-77cfee20e3ca_QQ图片20200309180500.jpg', 0.00000, 0.00000);
INSERT INTO `user` VALUES (100020, 'test1', '111111', '', 3, '啊士大夫', 13512121212, '228@qq.com', '2020-04-12 22:15:42', 999638.75, 3, 1, NULL, 0, '带多数', '', NULL, 0.00000, 4.15838);
INSERT INTO `user` VALUES (100021, 'xuesheng1', '111111', '', 3, 'asd暗室逢灯', 13111111111, '75@qq.com', '2020-05-07 14:13:45', 120861.75, 2, 1, '10010', 2, '啊啊啊', '', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\089938f3-66c8-4980-b9e3-9e1d68dfcdf5_ddd3ab59d109b3dea0394e6ac4bf6c81810a4c48.jpg', 0.00000, 0.09555);
INSERT INTO `user` VALUES (100025, 'ceshi1', '111111', '', 3, 'asfa', 13111111111, '111@qq.com', '2020-05-28 23:19:58', 66602.00, 2, 1, '10011', 0, '齐友帅', '', 'D:\\work\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\9daa6fcb-ee20-4416-b885-afaaec03c83b_20151108215853_iLzZB.jpeg', 0.00000, 0.00000);
INSERT INTO `user` VALUES (100026, 'test2', '111111', '', 3, 'asfa', 13511111111, '2222@qq.com', '2020-05-29 09:56:35', 0.00, 2, 1, '10012', 0, 'asda', '', NULL, 0.00000, 0.00000);

-- ----------------------------
-- Table structure for web_visits
-- ----------------------------
DROP TABLE IF EXISTS `web_visits`;
CREATE TABLE `web_visits`  (
  `visits_today` int(255) NOT NULL,
  `visits_all` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`visits_today`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_visits
-- ----------------------------
INSERT INTO `web_visits` VALUES (1, 365);

-- ----------------------------
-- Table structure for web_visits_record
-- ----------------------------
DROP TABLE IF EXISTS `web_visits_record`;
CREATE TABLE `web_visits_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visits` int(255) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_visits_record
-- ----------------------------
INSERT INTO `web_visits_record` VALUES (1, 0, '2020-04-14 00:00:00');
INSERT INTO `web_visits_record` VALUES (2, 7, '2020-04-15 00:00:00');
INSERT INTO `web_visits_record` VALUES (3, 80, '2020-04-16 00:00:00');
INSERT INTO `web_visits_record` VALUES (4, 134, '2020-04-19 00:00:00');
INSERT INTO `web_visits_record` VALUES (5, 3, '2020-04-22 00:00:00');
INSERT INTO `web_visits_record` VALUES (6, 0, '2020-05-18 00:00:00');
INSERT INTO `web_visits_record` VALUES (7, 0, '2020-05-24 00:00:00');
INSERT INTO `web_visits_record` VALUES (8, 5, '2020-05-27 00:00:00');
INSERT INTO `web_visits_record` VALUES (9, 0, '2020-05-28 00:00:00');
INSERT INTO `web_visits_record` VALUES (10, 9, '2020-05-29 00:00:00');

-- ----------------------------
-- Event structure for curr_popularity_insert
-- ----------------------------
DROP EVENT IF EXISTS `curr_popularity_insert`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `curr_popularity_insert`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-09 23:59:55'
DO insert into popularity_record (curr_id,popularity,date) SELECT curr_id,popularity,CURDATE() from popularity where curr_id is not null
;
;;
delimiter ;

-- ----------------------------
-- Event structure for insert_earning_record
-- ----------------------------
DROP EVENT IF EXISTS `insert_earning_record`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `insert_earning_record`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-09 23:59:55'
COMMENT '每天 23：59：55 记录今日收益'
DO insert into earning_record (user_id,money,date) SELECT user_id,earnings_today money,CURDATE() from earnings
;
;;
delimiter ;

-- ----------------------------
-- Event structure for insert_learnTimeRecord
-- ----------------------------
DROP EVENT IF EXISTS `insert_learnTimeRecord`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `insert_learnTimeRecord`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-13 23:59:55'
DO insert into learn_time_record (user_id,learn_time,date) select id,learn_time,CURDATE() from user where state = 1 and type <> 1
;
;;
delimiter ;

-- ----------------------------
-- Event structure for insert_web_visitsRecord
-- ----------------------------
DROP EVENT IF EXISTS `insert_web_visitsRecord`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `insert_web_visitsRecord`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-15 23:59:55'
DO insert into web_visits_record (visits,date) select visits_today,CURDATE() from web_visits
;
;;
delimiter ;

-- ----------------------------
-- Event structure for updateWebVisits
-- ----------------------------
DROP EVENT IF EXISTS `updateWebVisits`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `updateWebVisits`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-16 00:00:00'
DO update web_visits set visits_today = 0
;
;;
delimiter ;

-- ----------------------------
-- Event structure for update_enrnings
-- ----------------------------
DROP EVENT IF EXISTS `update_enrnings`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `update_enrnings`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-08 00:00:00'
DO update earnings set earnings_today = 0
;
;;
delimiter ;

-- ----------------------------
-- Event structure for update_learnTime
-- ----------------------------
DROP EVENT IF EXISTS `update_learnTime`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `update_learnTime`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-14 00:00:00'
DO update user set learn_time = 0
;
;;
delimiter ;

-- ----------------------------
-- Event structure for update_popularity
-- ----------------------------
DROP EVENT IF EXISTS `update_popularity`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `update_popularity`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-10 00:00:00'
DO update popularity set popularity = 0
;
;;
delimiter ;

-- ----------------------------
-- Event structure for user_popularity_insert
-- ----------------------------
DROP EVENT IF EXISTS `user_popularity_insert`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` EVENT `user_popularity_insert`
ON SCHEDULE
EVERY '1' DAY STARTS '2020-04-09 23:59:55'
DO insert into popularity_record (user_id,popularity,date) SELECT user_id,popularity,CURDATE() from popularity  where user_id is not null
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
