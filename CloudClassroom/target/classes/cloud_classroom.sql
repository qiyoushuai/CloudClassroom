/*
Navicat MySQL Data Transfer

Source Server         : mySql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cloud_classroom

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-15 19:41:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for certificate
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TEFL` varchar(255) DEFAULT NULL COMMENT '教师资格证存储图片',
  `diploma` varchar(255) DEFAULT NULL COMMENT '学历证书存储路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of certificate
-- ----------------------------
INSERT INTO `certificate` VALUES ('10001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\959fe34a-3bf1-4657-bf99-2212745581d4_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\bea27863-678f-413a-b2ab-87bdb7b14a24_QQ截图20200301160518.png');
INSERT INTO `certificate` VALUES ('10002', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\7268138c-9d12-4035-bed8-3fc01e6b5814_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\a5979467-7577-4b43-8a36-7bfff3c4b20d_QQ截图20200301160518.png');
INSERT INTO `certificate` VALUES ('10003', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\30442c59-d5ac-462a-969e-7ccea46c6e67_1b59e75ca2f0142bc24e7cb619fdff9c[1].jpg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\f12d1d4c-ac9a-425c-84a7-f44a3c921bb9_03f21802feac128a5b821b926cba17bb[1].jpg');
INSERT INTO `certificate` VALUES ('10004', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\e8740f99-3dcd-4818-80e5-9eced6d90531_5 米老鼠-01-01.png', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\7c76c748-224d-4396-8f48-40c755059250_圣诞老人.png');
INSERT INTO `certificate` VALUES ('10005', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\f209ded7-435f-4266-a16f-a516097f5efa_ChMkJ13I0QiIWT5DAAP6gtPDDr0AAvKJwG1bF4AA_qa099.jpg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\229e4900-4f45-4e65-b0fc-eba871da9207_u=3391145244,3413804971&fm=26&gp=0.jpg');
INSERT INTO `certificate` VALUES ('10006', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\545f8c03-ad1b-40f3-a874-ce595c2f2c05_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\714fb686-cf4f-40a0-b386-11ca547119f5_QQ图片20200309180500.jpg');
INSERT INTO `certificate` VALUES ('10007', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\d0390872-eeab-4bd4-81a6-349a6bc93a6c_热度.png', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\fe7b9cc1-8441-436c-b1cf-d8d9022241c3_课程.png');
INSERT INTO `certificate` VALUES ('10008', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\82fae45b-c827-41e3-85e5-af4e9757157f_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\555501b4-f5d5-49b2-a5f9-3799c14842d2_QQ图片20200309180500.jpg');
INSERT INTO `certificate` VALUES ('10009', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\6acdc10c-9663-42a1-a262-9b683cd089b8_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\41808bc7-41a5-43b1-8800-1bce3f18f1ce_QQ图片20200309180500.jpg');
INSERT INTO `certificate` VALUES ('10010', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\TEFL\\e4ef5e72-6ae5-4b49-a3f4-e1489eeb7e52_QQ图片20200309180500.jpg', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\diploma\\d9dde217-03af-491c-8a4b-6f6a3d925f39_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');

-- ----------------------------
-- Table structure for certificate_pcll
-- ----------------------------
DROP TABLE IF EXISTS `certificate_pcll`;
CREATE TABLE `certificate_pcll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(65) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of certificate_pcll
-- ----------------------------
INSERT INTO `certificate_pcll` VALUES ('1', '6', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\2771905e-b4d7-42bc-b316-130642df21ce_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');
INSERT INTO `certificate_pcll` VALUES ('2', '6', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\1a3829e0-f6d5-4ebd-967f-ffdb279b500a_QQ图片20200309180500.jpg');
INSERT INTO `certificate_pcll` VALUES ('3', '7', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\9e7b8398-8385-4891-b1ea-58e818f62ea5_QQ截图20200301160518.png');
INSERT INTO `certificate_pcll` VALUES ('4', '7', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\cf62c78c-cbe8-4050-a1b8-09e33acd2a7c_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');
INSERT INTO `certificate_pcll` VALUES ('5', '8', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\637a1266-bde2-4273-baea-4a6d6be5d8d8_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');
INSERT INTO `certificate_pcll` VALUES ('6', '9', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\ebe52b8e-7318-490f-accb-b72a7261c04f_QQ图片20200309180500.jpg');
INSERT INTO `certificate_pcll` VALUES ('7', '10', '100017', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\31f8596a-dae6-4a05-96e8-815d72ae0f30_ChMkJ13I1cCIbnHqAARB19ENR_0AAvKPgIQLmgABEHv923.jpg');
INSERT INTO `certificate_pcll` VALUES ('8', '11', '100017', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\55336ffd-21d0-4be3-9928-983bb5d72c9e_fb5b112c655e9200ea4222b4d519ff0e.jpg');
INSERT INTO `certificate_pcll` VALUES ('9', '12', '100017', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\1a9f0e5c-adaf-4ce5-9ae1-e1d9602f7aaa_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `certificate_pcll` VALUES ('10', '13', '100017', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\312d4f9d-e884-4a9a-98cc-a8b9a19e9e80_62359d7c0774034a2d7fd8e5051c0635.jpg');
INSERT INTO `certificate_pcll` VALUES ('11', '14', '100018', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\78578413-e9c6-46d3-b372-67f174417c54_QQ截图20200301160518.png');
INSERT INTO `certificate_pcll` VALUES ('12', '14', '100018', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\55db166d-c526-4484-bdcf-5e95a447b81c_QQ图片20200309180500.jpg');
INSERT INTO `certificate_pcll` VALUES ('13', '15', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\8424ec15-67e2-4acf-abd1-20d7a1560a49_认证-成功.png');
INSERT INTO `certificate_pcll` VALUES ('14', '16', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\47462078-4d58-44e1-ab8d-6d00aa6e57d8_课程.png');
INSERT INTO `certificate_pcll` VALUES ('15', '17', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\75a955a7-a937-48fd-a95d-eab7080396cf_删除.png');
INSERT INTO `certificate_pcll` VALUES ('16', '18', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\403f0483-9273-4091-a98f-b673352523d1_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `certificate_pcll` VALUES ('17', '18', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\03475444-338d-4616-844c-0934f586bc9c_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `certificate_pcll` VALUES ('18', '19', '100019', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\24460dd7-baa7-4ea8-b2de-ecbf77ae9f4e_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `certificate_pcll` VALUES ('19', '19', '100019', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\b38edea8-1c58-4e71-a15e-efb763c0df08_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `certificate_pcll` VALUES ('20', '20', '100015', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\9b63cb86-c49a-400f-9b21-b264762a78a8_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');
INSERT INTO `certificate_pcll` VALUES ('21', '21', '100021', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\16b25691-b25b-4c8a-b5b2-a7db6f3594aa_342803aae2e74ca38853d129c9c8f074!400x400.jpeg');
INSERT INTO `certificate_pcll` VALUES ('22', '21', '100021', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\certificate\\PCLL\\af21f308-9b5e-421d-86dc-ad89babe99b0_QQ图片20200309180500.jpg');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cha_name` varchar(255) DEFAULT NULL,
  `curr_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('1001', '第一章', '7', '0', null);
INSERT INTO `chapter` VALUES ('1002', '第一节', '7', '1001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\你的名字3.mov');
INSERT INTO `chapter` VALUES ('1003', '第二节', '7', '1001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\5b566d7a-dab0-4ffb-8b3e-760fa54d5725_LOLCG.mp4');
INSERT INTO `chapter` VALUES ('1012', '第二章', '7', '0', null);
INSERT INTO `chapter` VALUES ('1013', '第一节', '7', '1012', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\cf9bb45c-4b00-4309-b85a-3383c37842c2_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1014', 'spring框架', '6', '0', null);
INSERT INTO `chapter` VALUES ('1015', 'spring MVC框架', '6', '0', null);
INSERT INTO `chapter` VALUES ('1016', 'MyBatis', '6', '0', null);
INSERT INTO `chapter` VALUES ('1017', 'MVC设计模式', '6', '0', null);
INSERT INTO `chapter` VALUES ('1018', '第一节', '6', '1014', null);
INSERT INTO `chapter` VALUES ('1019', '第一节', '6', '1015', null);
INSERT INTO `chapter` VALUES ('1020', '第一节', '6', '1016', null);
INSERT INTO `chapter` VALUES ('1021', '第一节', '6', '1017', null);
INSERT INTO `chapter` VALUES ('1022', '第二节', '6', '1014', null);
INSERT INTO `chapter` VALUES ('1024', '第二节', '6', '1016', null);
INSERT INTO `chapter` VALUES ('1025', '第二节', '6', '1017', null);
INSERT INTO `chapter` VALUES ('1026', '第一章', '10', '0', null);
INSERT INTO `chapter` VALUES ('1027', 'jquery历史', '10', '1026', null);
INSERT INTO `chapter` VALUES ('1028', 'jquery基础入门', '10', '1026', null);
INSERT INTO `chapter` VALUES ('1029', '第一章', '14', '0', null);
INSERT INTO `chapter` VALUES ('1030', '第一节', '14', '1029', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\f67bc9eb-f985-4a0d-bfac-f475ff1d2853_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1031', '第三节', '7', '1001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\a00093bb-b6f6-4f6b-ad0f-c53f278c5344_少女时代.mov');
INSERT INTO `chapter` VALUES ('1032', '第四节', '7', '1001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\6e2dc6cc-41ac-43b5-b4e7-9bbd1b2bfb12_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1033', '第一章', '9', '0', null);
INSERT INTO `chapter` VALUES ('1034', '第一节', '9', '1033', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\e57e5396-cb2b-4786-b665-4ebbb93680b9_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1035', '第一章', '16', '0', null);
INSERT INTO `chapter` VALUES ('1036', '第一节', '16', '1035', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\48cfa56d-6b32-4f65-a299-63ca93b3f35f_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1037', '第五节', '7', '1001', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\f5085f2d-ec97-417f-81ab-f6e5486e0dd4_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1038', '第一章', '8', '0', null);
INSERT INTO `chapter` VALUES ('1039', '第一节', '8', '1038', null);
INSERT INTO `chapter` VALUES ('1040', '第一章', '17', '0', null);
INSERT INTO `chapter` VALUES ('1041', '第一章', '18', '0', null);
INSERT INTO `chapter` VALUES ('1042', '第一节', '18', '1041', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\33767273-e53e-44a7-a219-6de93894046a_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1043', '第一章', '19', '0', null);
INSERT INTO `chapter` VALUES ('1044', '第一节', '19', '1043', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\3b42bee4-2f80-4159-82e1-634aec71cc96_TheoryOfRain.mp4');
INSERT INTO `chapter` VALUES ('1045', '第一章', '21', '0', null);
INSERT INTO `chapter` VALUES ('1046', '第一节', '21', '1045', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\video\\5de99c1d-bc9d-4eef-a526-11d4d13a269c_Legends+Never+Die+(ft.+Against+The+Current)+-+Worlds+2017+-+League+of+Legends.avi');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `field` varchar(11) DEFAULT NULL,
  `add_userid` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `spread` bit(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `super_id` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1001', '课程类别', null, '100001', '2020-03-07 14:49:52', '');
INSERT INTO `classify` VALUES ('1028', 'JAVA', '1001', '100001', '2020-03-09 14:00:44', '');
INSERT INTO `classify` VALUES ('1029', 'C/C++', '1001', '100001', '2020-03-09 14:00:57', '');
INSERT INTO `classify` VALUES ('1030', 'Python', '1001', '100001', '2020-03-09 14:01:07', '');
INSERT INTO `classify` VALUES ('1031', 'Spring框架', '1028', '100001', '2020-03-09 14:02:00', '');
INSERT INTO `classify` VALUES ('1032', 'SSM', '1028', '100001', '2020-03-09 14:02:17', '');
INSERT INTO `classify` VALUES ('1033', 'Mybatis', '1028', '100001', '2020-03-09 14:03:12', '');
INSERT INTO `classify` VALUES ('1040', 'Spring MVC', '1028', '100001', '2020-03-09 14:28:00', '');
INSERT INTO `classify` VALUES ('1041', 'WEB开发', '1001', '100001', '2020-03-09 14:33:33', '');
INSERT INTO `classify` VALUES ('1042', 'CSS', '1041', '100001', '2020-03-09 14:34:28', '');
INSERT INTO `classify` VALUES ('1043', 'JS', '1041', '100001', '2020-03-09 14:34:33', '');
INSERT INTO `classify` VALUES ('1044', 'JQuery', '1041', '100001', '2020-03-09 14:35:33', '');
INSERT INTO `classify` VALUES ('1045', 'json', '1041', '100001', '2020-03-09 19:05:06', '');
INSERT INTO `classify` VALUES ('1046', 'SpringBoot', '1028', '100001', '2020-03-10 14:05:13', '');
INSERT INTO `classify` VALUES ('1047', '基础入门', '1030', '100001', '2020-03-13 13:52:14', '');
INSERT INTO `classify` VALUES ('1048', '进阶课程', '1030', '100001', '2020-03-22 16:02:21', '');

-- ----------------------------
-- Table structure for classify_record
-- ----------------------------
DROP TABLE IF EXISTS `classify_record`;
CREATE TABLE `classify_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_id` int(11) DEFAULT NULL,
  `name_old` varchar(255) DEFAULT NULL,
  `name_new` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '增删改',
  `edit_userid` int(11) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of classify_record
-- ----------------------------
INSERT INTO `classify_record` VALUES ('75', '1041', null, 'WEB开发', '增加', '100001', '2020-03-09 14:33:33');
INSERT INTO `classify_record` VALUES ('76', '1042', null, 'CSS', '增加', '100001', '2020-03-09 14:34:28');
INSERT INTO `classify_record` VALUES ('77', '1043', null, 'JS', '增加', '100001', '2020-03-09 14:34:33');
INSERT INTO `classify_record` VALUES ('78', '1044', null, 'JQuery', '增加', '100001', '2020-03-09 14:34:42');
INSERT INTO `classify_record` VALUES ('79', '1042', 'CSS', 'CSS/JS', '编辑', '100001', '2020-03-09 14:35:02');
INSERT INTO `classify_record` VALUES ('80', '1042', 'CSS/JS', 'CSS', '编辑', '100001', '2020-03-09 14:35:12');
INSERT INTO `classify_record` VALUES ('81', '1044', null, 'JQuery', '删除', '100001', '2020-03-09 14:35:21');
INSERT INTO `classify_record` VALUES ('82', '1044', null, 'JQuery', '增加', '100001', '2020-03-09 14:35:33');
INSERT INTO `classify_record` VALUES ('83', '1041', 'WEB开发', 'WEB开发1', '编辑', '100001', '2020-03-09 14:51:58');
INSERT INTO `classify_record` VALUES ('84', '1041', 'WEB开发1', 'WEB开发', '编辑', '100001', '2020-03-09 14:52:03');
INSERT INTO `classify_record` VALUES ('85', '1030', 'python', 'Python', '编辑', '100001', '2020-03-09 18:00:20');
INSERT INTO `classify_record` VALUES ('86', '1045', null, 'json', '增加', '100001', '2020-03-09 19:05:06');
INSERT INTO `classify_record` VALUES ('88', '1046', null, 'SpringBoot', '增加', '100001', '2020-03-10 14:05:13');
INSERT INTO `classify_record` VALUES ('89', '1047', null, '基础入门', '增加', '100001', '2020-03-13 13:52:15');
INSERT INTO `classify_record` VALUES ('90', '1048', null, '进阶课程', '增加', '100001', '2020-03-22 16:02:21');
INSERT INTO `classify_record` VALUES ('91', '1049', null, '大学必修课程', '增加', '100001', '2020-03-24 11:05:00');
INSERT INTO `classify_record` VALUES ('92', '1050', null, '大学物理', '增加', '100001', '2020-03-24 11:05:10');
INSERT INTO `classify_record` VALUES ('93', '1051', null, '大学英语', '增加', '100001', '2020-03-24 11:05:30');
INSERT INTO `classify_record` VALUES ('94', '1052', null, '概率论', '增加', '100001', '2020-03-24 11:05:39');
INSERT INTO `classify_record` VALUES ('95', '1049', null, '大学必修课程', '删除', '100001', '2020-03-27 17:09:52');

-- ----------------------------
-- Table structure for course_stu
-- ----------------------------
DROP TABLE IF EXISTS `course_stu`;
CREATE TABLE `course_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `add_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curr_id` (`curr_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `curr_id` FOREIGN KEY (`curr_id`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100040 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course_stu
-- ----------------------------
INSERT INTO `course_stu` VALUES ('100020', '8', '100019', '2020-04-06 14:00:20');
INSERT INTO `course_stu` VALUES ('100022', '13', '100019', '2020-04-06 14:00:24');
INSERT INTO `course_stu` VALUES ('100023', '14', '100019', '2020-04-06 14:00:27');
INSERT INTO `course_stu` VALUES ('100025', '7', '100019', '2020-04-06 14:00:32');
INSERT INTO `course_stu` VALUES ('100026', '9', '100019', '2020-04-06 14:00:34');
INSERT INTO `course_stu` VALUES ('100027', '11', '100019', '2020-04-06 14:00:36');
INSERT INTO `course_stu` VALUES ('100028', '12', '100019', '2020-04-06 14:00:38');
INSERT INTO `course_stu` VALUES ('100030', '10', '100019', '2020-04-07 21:42:49');
INSERT INTO `course_stu` VALUES ('100032', '10', '100015', '2020-04-10 12:46:52');
INSERT INTO `course_stu` VALUES ('100033', '12', '100015', '2020-04-10 12:52:22');
INSERT INTO `course_stu` VALUES ('100034', '19', '100015', '2020-04-12 21:58:47');
INSERT INTO `course_stu` VALUES ('100035', '9', '100020', '2020-04-12 22:16:44');
INSERT INTO `course_stu` VALUES ('100036', '7', '100020', '2020-04-12 22:16:58');
INSERT INTO `course_stu` VALUES ('100037', '12', '100020', '2020-04-14 20:25:05');
INSERT INTO `course_stu` VALUES ('100038', '21', '100015', '2020-05-07 14:28:58');
INSERT INTO `course_stu` VALUES ('100039', '7', '100021', '2020-05-07 14:32:01');

-- ----------------------------
-- Table structure for curriculum
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum` (
  `tea_relname` varchar(255) DEFAULT NULL,
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `tea_id` decimal(65,0) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `classify_child` int(65) DEFAULT NULL,
  `classify` int(65) DEFAULT NULL COMMENT '类别',
  `charge` int(11) DEFAULT NULL COMMENT '是否收费  1收费   2不收费',
  `price` double(22,2) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '状态1可用  2待审核  3不可用',
  `popularity` decimal(65,0) DEFAULT NULL COMMENT '受欢迎程度',
  `add_date` datetime DEFAULT NULL,
  `c_describe` varchar(2000) DEFAULT NULL,
  `cover_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classify` (`classify`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES ('上官婉', '6', '100015', 'JAVA从入门到入殓', null, '1028', '2', '0.00', '6', '0', '2020-03-18 14:42:33', '想变强吗，先变秃吧！', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\b23e0779-92fa-4bef-a125-f9f729c705ff_ChMkJ13I0QiIWT5DAAP6gtPDDr0AAvKJwG1bF4AA_qa099.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '7', '100015', 'SpringBoot基础入门教程', '1046', '1028', '1', '100.25', '4', '12547', '2020-03-18 15:58:51', 'springboot基础入门教程', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\75834b51-f3cb-40b5-8626-34e1e215a765_ChMkJ13I1cCIbnHqAARB19ENR_0AAvKPgIQLmgABEHv923.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '8', '100015', '基于jsp的开发教学', null, '1028', '2', '0.00', '5', '0', '2020-03-18 19:52:46', '学习用jsp开发一些简单的页面和一些简单的功能', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\6bc9a5d4-ac73-4158-8f3a-9090093113f6_u=3391145244,3413804971&fm=26&gp=0.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '9', '100015', 'Pyhon编程大神精讲', '1047', '1030', '1', '250.00', '4', '1', '2020-03-18 20:51:06', 'Python是最简单的编程语言', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\2206e85b-e9a4-4f37-a972-78848c208519_u=3939215539,3409992453&fm=26&gp=0.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', '10', '100017', 'JQuery大神精讲，山东建筑大学博士学位教授专讲', '1044', '1041', '2', '0.00', '4', '9', '2020-03-22 15:53:24', '本课程专业授业解惑', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\dedf5dea-0418-4170-99fa-72a619276e26_u=3939215539,3409992453&fm=26&gp=0.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', '11', '100017', '【精品】WEB前端教学', null, '1041', '1', '200.00', '4', '1', '2020-03-22 18:27:00', '前端WEB开发，精讲', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\66aca8ce-f0c4-4b3b-8520-a03b3bf9cf50_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', '12', '100017', '计算机二级Python零基础入门自学', '1047', '1030', '1', '10.00', '4', '3', '2020-03-22 18:28:42', '计算机二级Python零基础入门自学', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', '13', '100017', '全新视角解读SptingBoot', '1046', '1028', '2', '0.00', '4', '0', '2020-03-22 18:29:53', '全新视角解读SptingBoot', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg');
INSERT INTO `curriculum` VALUES ('测试', '14', '100018', 'java课程', null, '1028', '2', '0.00', '4', '0', '2020-03-24 11:02:05', '阿萨大大萨达', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\93438745-8bfe-4fc2-bb4d-0c26412ebea9_fb5b112c655e9200ea4222b4d519ff0e.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '15', '100015', '大学物理课程精讲', '1046', '1028', '1', '1.00', '3', '0', '2020-03-24 15:09:11', '啊啊啊', null);
INSERT INTO `curriculum` VALUES ('上官婉', '16', '100015', '测试', '1031', '1028', '2', '0.00', '4', '0', '2020-03-27 16:34:36', '测试测试测试测试', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\70018fac-3eab-40da-bcbb-6061bcb86f8c_62359d7c0774034a2d7fd8e5051c0635.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '17', '100015', '测试测试', null, '1028', '2', '0.00', '5', '0', '2020-03-27 16:34:47', '测试测试', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\ea3ee994-e7b2-479f-992c-cddd9790d7ce_2f172cd45ffea5db19d52607f69f1d24.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '18', '100015', '论头发的茂密与否是否与实力挂钩', '1032', '1028', '2', '0.00', '4', '0', '2020-04-07 21:15:20', '论头发的茂密与否是否与实力挂钩。\n论头发的茂密与否是否与实力挂钩。\n论头发的茂密与否是否与实力挂钩。', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\55b0a524-6bbd-4281-a0e3-3f0523a7f79e_4a042417d7cfcf4e72ad619af5587f67.jpg');
INSERT INTO `curriculum` VALUES ('啊啊啊', '19', '100019', 'java开发教程', '1031', '1028', '2', '0.00', '4', '7', '2020-04-12 21:55:59', '暗示法发顺丰', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\7f34d459-e534-4723-99c2-2da59c3c179b_62359d7c0774034a2d7fd8e5051c0635.jpg');
INSERT INTO `curriculum` VALUES ('上官婉', '20', '100015', '大学英语', '1031', '1028', '2', '0.00', '2', '0', '2020-04-19 19:26:02', '阿飞反反复复', null);
INSERT INTO `curriculum` VALUES ('啊啊啊', '21', '100021', 'javaweb教程', null, '1028', '2', '0.00', '4', '1', '2020-05-07 14:22:56', '啊撒发生发', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\curr_cover\\d5058135-1b37-426c-a649-f52b86c86964_62359d7c0774034a2d7fd8e5051c0635.jpg');

-- ----------------------------
-- Table structure for curr_buy_record
-- ----------------------------
DROP TABLE IF EXISTS `curr_buy_record`;
CREATE TABLE `curr_buy_record` (
  `id` int(65) NOT NULL,
  `curr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `teac_id` int(11) NOT NULL,
  `price` double(20,2) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of curr_buy_record
-- ----------------------------
INSERT INTO `curr_buy_record` VALUES ('1000000004', '7', '100019', '100015', '100.25', '2020-04-06 11:56:54');
INSERT INTO `curr_buy_record` VALUES ('1000000006', '11', '100019', '100017', '200.00', '2020-04-06 11:57:07');
INSERT INTO `curr_buy_record` VALUES ('1000000007', '6', '100019', '100015', '300.00', '2020-04-07 21:06:45');
INSERT INTO `curr_buy_record` VALUES ('1000000008', '12', '100015', '100017', '10.00', '2020-04-10 12:52:22');
INSERT INTO `curr_buy_record` VALUES ('1000000009', '9', '100020', '100015', '250.00', '2020-04-12 22:16:44');
INSERT INTO `curr_buy_record` VALUES ('1000000010', '7', '100020', '100015', '100.25', '2020-04-12 22:16:58');
INSERT INTO `curr_buy_record` VALUES ('1000000011', '12', '100020', '100017', '10.00', '2020-04-14 20:25:06');
INSERT INTO `curr_buy_record` VALUES ('1000000012', '7', '100021', '100015', '100.25', '2020-05-07 14:32:01');

-- ----------------------------
-- Table structure for curr_comment
-- ----------------------------
DROP TABLE IF EXISTS `curr_comment`;
CREATE TABLE `curr_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `context` varchar(16373) DEFAULT NULL,
  `evaluate` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of curr_comment
-- ----------------------------
INSERT INTO `curr_comment` VALUES ('1', '12', '100015', '&lt;img src=&quot;http://localhost:8080/static/layui/images/face/47.gif&quot; alt=&quot;[心]&quot;&gt;', '5', '2020-04-14 17:04:09');
INSERT INTO `curr_comment` VALUES ('2', '12', '100015', '&lt;p&gt;卧槽！这门课！&lt;/p&gt;&lt;p&gt;真的太der了！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/1.gif&quot; alt=&quot;[嘻嘻]&quot;&gt;&lt;/p&gt;', '4', '2020-04-14 20:17:34');
INSERT INTO `curr_comment` VALUES ('4', '12', '100020', '&lt;p&gt;测试测试测试测试测试。测试测试测试&lt;img src=&quot;http://localhost:8080/static/layui/images/face/17.gif&quot; alt=&quot;[白眼]&quot;&gt;&lt;/p&gt;', '1', '2020-04-14 20:36:54');
INSERT INTO `curr_comment` VALUES ('5', '12', '100020', '&lt;img src=&quot;http://localhost:8080/static/layui/images/face/46.gif&quot; alt=&quot;[互粉]&quot;&gt;', '3', '2020-04-14 20:39:03');
INSERT INTO `curr_comment` VALUES ('6', '12', '100015', '老子无敌！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/36.gif&quot; alt=&quot;[酷]&quot;&gt;', '5', '2020-04-14 20:43:26');
INSERT INTO `curr_comment` VALUES ('7', '12', '100015', '测试测试&lt;img src=&quot;http://localhost:8080/static/layui/images/face/41.gif&quot; alt=&quot;[悲伤]&quot;&gt;', '5', '2020-04-14 20:43:46');
INSERT INTO `curr_comment` VALUES ('8', '12', '100015', '&lt;p&gt;测试！！！！！&lt;/p&gt;&lt;p&gt;测试！！！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/43.gif&quot; alt=&quot;[黑线]&quot;&gt;&lt;/p&gt;', '5', '2020-04-14 20:44:02');
INSERT INTO `curr_comment` VALUES ('9', '12', '100020', '&lt;p&gt;测测测测测&lt;/p&gt;&lt;p&gt;测测&lt;/p&gt;', '2', '2020-04-14 21:04:47');
INSERT INTO `curr_comment` VALUES ('10', '7', '100017', '我叼 ，这门课&lt;b&gt;简直无敌&lt;/b&gt;！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/38.gif&quot; alt=&quot;[哼]&quot;&gt;', '5', '2020-04-14 21:10:57');
INSERT INTO `curr_comment` VALUES ('12', '12', '100015', '卧槽！这门课&lt;b&gt;简直无敌&lt;/b&gt;！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;&lt;img src=&quot;http://localhost:8080/static/layui/images/face/56.gif&quot; alt=&quot;[赞]&quot;&gt;', '5', '2020-04-14 21:56:29');
INSERT INTO `curr_comment` VALUES ('13', '12', '100015', '&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span&gt;盼望着，盼望着，东风来了，春天的脚步近了。&lt;/span&gt;一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水长起来了，太阳的脸红起来了。小草偷偷地从土里钻出来，嫩嫩的，绿绿的。园子里，田野里，瞧去，一大片一大片满是的。坐着，躺着，打两个滚，踢几脚球，赛几趟跑，捉几回迷藏。风轻悄悄的，草绵软软的。&lt;/p&gt;', '5', '2020-04-14 21:57:42');
INSERT INTO `curr_comment` VALUES ('14', '12', '100015', '扒皮做鞋!&lt;img src=&quot;http://localhost:8080/static/layui/images/face/26.gif&quot; alt=&quot;[怒]&quot;&gt;', '3', '2020-04-15 13:00:00');
INSERT INTO `curr_comment` VALUES ('15', '12', '100015', '扒皮做鞋 ！！！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/39.gif&quot; alt=&quot;[鼓掌]&quot;&gt;', '2', '2020-04-15 13:01:30');
INSERT INTO `curr_comment` VALUES ('16', '12', '100015', '你个derder', '2', '2020-04-15 13:09:07');
INSERT INTO `curr_comment` VALUES ('17', '12', '100015', 'hhhhh', '3', '2020-04-15 13:12:55');
INSERT INTO `curr_comment` VALUES ('18', '12', '100015', '测试清空评价', '3', '2020-04-15 13:29:24');
INSERT INTO `curr_comment` VALUES ('19', '19', '100015', '这门课，无敌！老师贼棒！&lt;img src=&quot;http://localhost:8080/static/layui/images/face/63.gif&quot; alt=&quot;[给力]&quot;&gt;', '5', '2020-04-15 16:27:19');
INSERT INTO `curr_comment` VALUES ('20', '19', '100015', '还可以！', '5', '2020-04-15 16:27:52');

-- ----------------------------
-- Table structure for earnings
-- ----------------------------
DROP TABLE IF EXISTS `earnings`;
CREATE TABLE `earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `earnings_today` double(22,2) DEFAULT NULL COMMENT '今日收益',
  `total_revenue` double(22,2) DEFAULT NULL COMMENT '总收入',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100005 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of earnings
-- ----------------------------
INSERT INTO `earnings` VALUES ('100001', '100015', '100.25', '12571.50');
INSERT INTO `earnings` VALUES ('100002', '100017', '0.00', '230.00');
INSERT INTO `earnings` VALUES ('100003', '100019', '0.00', '0.00');
INSERT INTO `earnings` VALUES ('100004', '100021', '0.00', '0.00');

-- ----------------------------
-- Table structure for earning_record
-- ----------------------------
DROP TABLE IF EXISTS `earning_record`;
CREATE TABLE `earning_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `money` double(12,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10057 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of earning_record
-- ----------------------------
INSERT INTO `earning_record` VALUES ('10009', '100015', '200.00', '2020-04-09 00:00:00');
INSERT INTO `earning_record` VALUES ('10010', '100017', '200.00', '2020-04-09 00:00:00');
INSERT INTO `earning_record` VALUES ('10029', '100015', '155.00', '2020-04-10 00:00:00');
INSERT INTO `earning_record` VALUES ('10030', '100017', '20.00', '2020-04-10 00:00:00');
INSERT INTO `earning_record` VALUES ('10031', '100015', '0.00', '2020-04-11 00:00:00');
INSERT INTO `earning_record` VALUES ('10032', '100017', '20.00', '2020-04-11 00:00:00');
INSERT INTO `earning_record` VALUES ('10033', '100015', '350.25', '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES ('10034', '100017', '20.00', '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES ('10035', '100019', '0.00', '2020-04-12 00:00:00');
INSERT INTO `earning_record` VALUES ('10036', '100015', '350.25', '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES ('10037', '100017', '20.00', '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES ('10038', '100019', '0.00', '2020-04-13 00:00:00');
INSERT INTO `earning_record` VALUES ('10039', '100015', '0.00', '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES ('10040', '100017', '10.00', '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES ('10041', '100019', '0.00', '2020-04-14 00:00:00');
INSERT INTO `earning_record` VALUES ('10042', '100015', '0.00', '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES ('10043', '100017', '0.00', '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES ('10044', '100019', '0.00', '2020-04-15 00:00:00');
INSERT INTO `earning_record` VALUES ('10045', '100015', '0.00', '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES ('10046', '100017', '0.00', '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES ('10047', '100019', '0.00', '2020-04-16 00:00:00');
INSERT INTO `earning_record` VALUES ('10051', '100015', '0.00', '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES ('10052', '100017', '0.00', '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES ('10053', '100019', '0.00', '2020-04-19 00:00:00');
INSERT INTO `earning_record` VALUES ('10054', '100015', '0.00', '2020-04-22 00:00:00');
INSERT INTO `earning_record` VALUES ('10055', '100017', '0.00', '2020-04-22 00:00:00');
INSERT INTO `earning_record` VALUES ('10056', '100019', '0.00', '2020-04-22 00:00:00');

-- ----------------------------
-- Table structure for homepage_carousel
-- ----------------------------
DROP TABLE IF EXISTS `homepage_carousel`;
CREATE TABLE `homepage_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `message` varchar(9999) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of homepage_carousel
-- ----------------------------
INSERT INTO `homepage_carousel` VALUES ('10005', '/resources/curr_cover/7f34d459-e534-4723-99c2-2da59c3c179b_62359d7c0774034a2d7fd8e5051c0635.jpg', 'java开发教程', '暗示法发顺丰', '/page/home_enrollCurr?curr_id=19');
INSERT INTO `homepage_carousel` VALUES ('10010', '/resources/curr_cover/7df3b472-759e-4067-996a-e9f79395f7ac_4a042417d7cfcf4e72ad619af5587f67.jpg', '计算机二级Python零基础入门自学', '计算机二级Python零基础入门自学', '/page/home_enrollCurr?curr_id=12');
INSERT INTO `homepage_carousel` VALUES ('10012', '/resources/curr_cover/93438745-8bfe-4fc2-bb4d-0c26412ebea9_fb5b112c655e9200ea4222b4d519ff0e.jpg', 'java课程', '阿萨大大萨达', '/page/home_enrollCurr?curr_id=14');
INSERT INTO `homepage_carousel` VALUES ('10013', '/resources/curr_cover/92001994-5fa1-4ca7-847a-03425e962e55_47ca1ce920c743a5de13daa8c7c9c1c6.jpg', '全新视角解读SptingBoot', '全新视角解读SptingBoot', '/page/home_enrollCurr?curr_id=13');

-- ----------------------------
-- Table structure for learn_time_record
-- ----------------------------
DROP TABLE IF EXISTS `learn_time_record`;
CREATE TABLE `learn_time_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `learn_time` double(255,5) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of learn_time_record
-- ----------------------------
INSERT INTO `learn_time_record` VALUES ('8', '100015', '0.00000', '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES ('9', '100017', '0.00000', '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES ('10', '100018', '0.00000', '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES ('11', '100019', '0.00000', '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES ('12', '100020', '3.00000', '2020-04-12 00:00:00');
INSERT INTO `learn_time_record` VALUES ('15', '100015', '0.00000', '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES ('16', '100017', '0.00000', '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES ('17', '100018', '0.00000', '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES ('18', '100019', '0.00000', '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES ('19', '100020', '2.13310', '2020-04-13 00:00:00');
INSERT INTO `learn_time_record` VALUES ('20', '100015', '0.00000', '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES ('21', '100017', '0.00000', '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES ('22', '100018', '0.00000', '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES ('23', '100019', '0.00000', '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES ('24', '100020', '0.00000', '2020-04-14 00:00:00');
INSERT INTO `learn_time_record` VALUES ('25', '100015', '0.00000', '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES ('26', '100017', '0.00000', '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES ('27', '100018', '0.00000', '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES ('28', '100019', '0.00000', '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES ('29', '100020', '0.00000', '2020-04-15 00:00:00');
INSERT INTO `learn_time_record` VALUES ('30', '100015', '0.00000', '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES ('31', '100017', '0.00000', '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES ('32', '100018', '0.00000', '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES ('33', '100019', '0.00000', '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES ('34', '100020', '1.96889', '2020-04-16 00:00:00');
INSERT INTO `learn_time_record` VALUES ('35', '100015', '0.01361', '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES ('36', '100017', '0.00000', '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES ('37', '100018', '0.00000', '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES ('38', '100019', '0.00000', '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES ('39', '100020', '0.05639', '2020-04-19 00:00:00');
INSERT INTO `learn_time_record` VALUES ('40', '100015', '0.00000', '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES ('41', '100017', '0.00000', '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES ('42', '100018', '0.00000', '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES ('43', '100019', '0.00000', '2020-04-22 00:00:00');
INSERT INTO `learn_time_record` VALUES ('44', '100020', '0.00000', '2020-04-22 00:00:00');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `message` varchar(9999) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `send_user` int(11) DEFAULT NULL,
  `all_send` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '100016', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-14 21:52:16发送的的教师资格申请未通过审核,感谢您对本平台的支持', '1', '2020-03-15 15:50:27', '100001', null);
INSERT INTO `notice` VALUES ('2', '100016', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-15 15:53:26', '100001', null);
INSERT INTO `notice` VALUES ('3', '100016', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-15 15:55:44', '100001', null);
INSERT INTO `notice` VALUES ('4', '100016', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100016,您于2020-03-15 15:52:55发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-15 16:10:31', '100001', null);
INSERT INTO `notice` VALUES ('7', '100014', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100014,您于2020-03-16 16:07:04发送的的教师资格申请未通过审核,感谢您对本平台的支持', '1', '2020-03-16 16:08:47', '100001', null);
INSERT INTO `notice` VALUES ('8', '100014', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100014,您于2020-03-16 16:09:32发送的的教师资格申请未通过审核,感谢您对本平台的支持', '1', '2020-03-17 22:27:53', '100001', null);
INSERT INTO `notice` VALUES ('13', '100017', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 15:51:21发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-22 15:51:46', '100001', null);
INSERT INTO `notice` VALUES ('14', '100017', '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 15:53:24发送的的开设课程申请已通过审核,感谢您对本平台的支持', '1', '2020-03-22 15:53:44', '100001', null);
INSERT INTO `notice` VALUES ('15', '100017', '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:27:00发送的的开设课程申请已通过审核,感谢您对本平台的支持', '1', '2020-03-22 18:30:11', '100001', null);
INSERT INTO `notice` VALUES ('16', '100017', '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:28:42发送的的开设课程申请已通过审核,感谢您对本平台的支持', '1', '2020-03-22 18:30:18', '100001', null);
INSERT INTO `notice` VALUES ('17', '100017', '关于开设课程申请的通知', '尊敬的用户，用户ID为：100017,您于2020-03-22 18:29:53发送的的开设课程申请已通过审核,感谢您对本平台的支持', '1', '2020-03-22 18:30:24', '100001', null);
INSERT INTO `notice` VALUES ('18', '100018', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 11:00:43发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-24 11:01:16', '100001', null);
INSERT INTO `notice` VALUES ('19', '100018', '关于开设课程申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 11:02:05发送的的开设课程申请已通过审核,感谢您对本平台的支持', '1', '2020-03-24 11:02:46', '100001', null);
INSERT INTO `notice` VALUES ('20', '100018', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-03-24 15:33:43', '100001', null);
INSERT INTO `notice` VALUES ('29', '100020', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', '2', '2020-04-10 19:40:52', '100001', null);
INSERT INTO `notice` VALUES ('30', '100015', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持尊敬的用户，用户ID为：100018<br>您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', '2', '2020-04-10 19:41:20', '100018', null);
INSERT INTO `notice` VALUES ('31', '100015', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持尊敬的用户，用户ID为：100018,您于2020-03-24 15:12:35发送的的教师资格申请已通过审核,感谢您对本平台的支持', '2', '2020-04-10 19:56:53', '100001', null);
INSERT INTO `notice` VALUES ('32', '100019', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100019,您于2020-04-12 21:51:28发送的的教师资格申请已通过审核,感谢您对本平台的支持', '2', '2020-04-12 21:52:59', '100001', null);
INSERT INTO `notice` VALUES ('33', '100019', '关于课程《java开发教程》开设申请的通知', '尊敬的用户，用户ID为：100019,您于2020-04-12 21:55:59发送的名为《java开发教程》课程开设的申请已通过审核,感谢您对本平台的支持', '2', '2020-04-12 21:56:26', '100001', null);
INSERT INTO `notice` VALUES ('40', '100001', '企业级应用案例实训第四周', '哈哈哈哈 啊撒发生发啊杀 \n啊发  啊哈哈哈和和啊', '2', '2020-04-16 17:42:06', '100015', null);
INSERT INTO `notice` VALUES ('41', '100001', '管理员在家吗', '我找你去玩 啊  \n      上网吧去吗！！！\n打游戏啊！！！', '2', '2020-04-16 18:07:44', '100015', null);
INSERT INTO `notice` VALUES ('44', '100017', '企业级应用案例实训第四周', 'asfasfasfasfas', '1', '2020-04-16 18:13:22', '100015', null);
INSERT INTO `notice` VALUES ('45', '100017', '企业级应用案例实训第一周', 'asfasfasf', '1', '2020-04-16 18:13:52', '100015', null);
INSERT INTO `notice` VALUES ('46', '100001', '好的', '收到收到收到收到收到', '2', '2020-04-16 18:59:21', '100015', null);
INSERT INTO `notice` VALUES ('47', '100015', '企业级应用案例实训第一周', 'asfasfa', '2', '2020-04-16 19:02:12', '100001', null);
INSERT INTO `notice` VALUES ('48', '100020', 'asfasf', 'asfasfasf as fas sa', '2', '2020-04-16 19:03:45', '100001', null);
INSERT INTO `notice` VALUES ('49', '100015', 'asfas', 'asfasfasf', '2', '2020-04-16 19:05:09', '100001', null);
INSERT INTO `notice` VALUES ('50', '100001', '企业级应用案例实训第一周', 'asfasfasfasafs', '2', '2020-04-16 19:07:29', '100015', null);
INSERT INTO `notice` VALUES ('51', '100001', '企业级应用案例实训第一周', '发沙发啊撒发生发仨发送发送', '2', '2020-04-16 19:28:59', '100015', null);
INSERT INTO `notice` VALUES ('54', '100015', '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《JAVA从入门到入殓》的课程已被管理员解除停封状态，请在“我开设的课程”模块对课程进行管理', '2', '2020-04-17 18:46:51', '100001', '2');
INSERT INTO `notice` VALUES ('55', '100015', '关于您开设的课程状态更改的通知', '尊敬的用户，用户ID为：100015,您开设的的名为《JAVA从入门到入殓》的课程已被管理员停封，如有疑问请及时联系管理员', '2', '2020-04-17 18:46:54', '100001', '2');
INSERT INTO `notice` VALUES ('56', '100020', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100020,您于2020-04-19 19:25:29发送的的教师资格申请未通过审核,感谢您对本平台的支持', '1', '2020-04-19 19:30:33', null, '2');
INSERT INTO `notice` VALUES ('57', '100021', '关于教师资格申请的通知', '尊敬的用户，用户ID为：100021,您于2020-05-07 14:20:57发送的的教师资格申请已通过审核,感谢您对本平台的支持', '1', '2020-05-07 14:21:25', '100001', '2');
INSERT INTO `notice` VALUES ('58', '100021', '关于课程《javaweb教程》开设申请的通知', '尊敬的用户，用户ID为：100021,您于2020-05-07 14:22:56发送的名为《javaweb教程》课程开设的申请已通过审核,感谢您对本平台的支持', '1', '2020-05-07 14:23:27', '100001', '2');

-- ----------------------------
-- Table structure for popularity
-- ----------------------------
DROP TABLE IF EXISTS `popularity`;
CREATE TABLE `popularity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `curr_id` int(11) DEFAULT NULL,
  `popularity` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of popularity
-- ----------------------------
INSERT INTO `popularity` VALUES ('1', '100015', null, '1');
INSERT INTO `popularity` VALUES ('3', '100017', null, '0');
INSERT INTO `popularity` VALUES ('5', null, '6', '0');
INSERT INTO `popularity` VALUES ('6', null, '7', '1');
INSERT INTO `popularity` VALUES ('7', null, '8', '0');
INSERT INTO `popularity` VALUES ('8', null, '9', '0');
INSERT INTO `popularity` VALUES ('9', null, '10', '0');
INSERT INTO `popularity` VALUES ('10', null, '11', '0');
INSERT INTO `popularity` VALUES ('11', null, '12', '0');
INSERT INTO `popularity` VALUES ('12', null, '13', '0');
INSERT INTO `popularity` VALUES ('13', null, '14', '0');
INSERT INTO `popularity` VALUES ('14', null, '16', '0');
INSERT INTO `popularity` VALUES ('15', null, '17', '0');
INSERT INTO `popularity` VALUES ('16', null, '18', '0');
INSERT INTO `popularity` VALUES ('17', '100019', null, '0');
INSERT INTO `popularity` VALUES ('18', null, '19', '0');
INSERT INTO `popularity` VALUES ('19', '100021', null, '1');
INSERT INTO `popularity` VALUES ('20', null, '21', '1');

-- ----------------------------
-- Table structure for popularity_record
-- ----------------------------
DROP TABLE IF EXISTS `popularity_record`;
CREATE TABLE `popularity_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `curr_id` int(11) DEFAULT NULL,
  `popularity` decimal(10,0) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of popularity_record
-- ----------------------------
INSERT INTO `popularity_record` VALUES ('5', null, '6', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('6', null, '7', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('7', null, '8', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('8', null, '9', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('9', null, '10', '8', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('10', null, '11', '1', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('11', null, '12', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('12', null, '13', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('13', null, '14', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('14', null, '16', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('15', null, '17', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('16', null, '18', '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('20', '100015', null, '0', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('21', '100017', null, '9', '2020-04-09 00:00:00');
INSERT INTO `popularity_record` VALUES ('22', null, '6', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('23', null, '7', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('24', null, '8', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('25', null, '9', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('26', null, '10', '1', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('27', null, '11', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('28', null, '12', '2', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('29', null, '13', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('30', null, '14', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('31', null, '16', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('32', null, '17', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('33', null, '18', '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('37', '100015', null, '0', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('38', '100017', null, '3', '2020-04-10 00:00:00');
INSERT INTO `popularity_record` VALUES ('39', null, '6', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('40', null, '7', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('41', null, '8', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('42', null, '9', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('43', null, '10', '1', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('44', null, '11', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('45', null, '12', '2', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('46', null, '13', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('47', null, '14', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('48', null, '16', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('49', null, '17', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('50', null, '18', '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('54', '100015', null, '0', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('55', '100017', null, '3', '2020-04-11 00:00:00');
INSERT INTO `popularity_record` VALUES ('56', null, '6', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('57', null, '7', '1', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('58', null, '8', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('59', null, '9', '1', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('60', null, '10', '1', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('61', null, '11', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('62', null, '12', '2', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('63', null, '13', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('64', null, '14', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('65', null, '16', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('66', null, '17', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('67', null, '18', '0', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('68', null, '19', '1', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('71', '100015', null, '2', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('72', '100017', null, '3', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('73', '100019', null, '1', '2020-04-12 00:00:00');
INSERT INTO `popularity_record` VALUES ('74', null, '6', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('75', null, '7', '1', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('76', null, '8', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('77', null, '9', '1', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('78', null, '10', '1', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('79', null, '11', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('80', null, '12', '2', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('81', null, '13', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('82', null, '14', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('83', null, '16', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('84', null, '17', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('85', null, '18', '0', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('86', null, '19', '1', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('89', '100015', null, '2', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('90', '100017', null, '3', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('91', '100019', null, '1', '2020-04-13 00:00:00');
INSERT INTO `popularity_record` VALUES ('92', null, '6', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('93', null, '7', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('94', null, '8', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('95', null, '9', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('96', null, '10', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('97', null, '11', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('98', null, '12', '1', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('99', null, '13', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('100', null, '14', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('101', null, '16', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('102', null, '17', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('103', null, '18', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('104', null, '19', '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('107', '100015', null, '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('108', '100017', null, '1', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('109', '100019', null, '0', '2020-04-14 00:00:00');
INSERT INTO `popularity_record` VALUES ('110', '100015', null, '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('111', '100017', null, '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('112', '100019', null, '2', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('113', null, '6', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('114', null, '7', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('115', null, '8', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('116', null, '9', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('117', null, '10', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('118', null, '11', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('119', null, '12', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('120', null, '13', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('121', null, '14', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('122', null, '16', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('123', null, '17', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('124', null, '18', '0', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('125', null, '19', '2', '2020-04-15 00:00:00');
INSERT INTO `popularity_record` VALUES ('126', null, '6', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('127', null, '7', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('128', null, '8', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('129', null, '9', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('130', null, '10', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('131', null, '11', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('132', null, '12', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('133', null, '13', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('134', null, '14', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('135', null, '16', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('136', null, '17', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('137', null, '18', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('138', null, '19', '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('141', '100015', null, '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('142', '100017', null, '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('143', '100019', null, '0', '2020-04-16 00:00:00');
INSERT INTO `popularity_record` VALUES ('144', '100015', null, '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('145', '100017', null, '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('146', '100019', null, '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('147', null, '6', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('148', null, '7', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('149', null, '8', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('150', null, '9', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('151', null, '10', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('152', null, '11', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('153', null, '12', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('154', null, '13', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('155', null, '14', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('156', null, '16', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('157', null, '17', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('158', null, '18', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('159', null, '19', '0', '2020-04-19 00:00:00');
INSERT INTO `popularity_record` VALUES ('160', null, '6', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('161', null, '7', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('162', null, '8', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('163', null, '9', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('164', null, '10', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('165', null, '11', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('166', null, '12', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('167', null, '13', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('168', null, '14', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('169', null, '16', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('170', null, '17', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('171', null, '18', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('172', null, '19', '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('175', '100015', null, '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('176', '100017', null, '0', '2020-04-22 00:00:00');
INSERT INTO `popularity_record` VALUES ('177', '100019', null, '0', '2020-04-22 00:00:00');

-- ----------------------------
-- Table structure for tea_application
-- ----------------------------
DROP TABLE IF EXISTS `tea_application`;
CREATE TABLE `tea_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `relname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` decimal(60,0) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `certificate` int(11) DEFAULT NULL,
  `idcard_no` decimal(60,0) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '审核状态  1待审核  2通过  3不通过',
  `apply_date` datetime DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `TEACHING` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tea_application
-- ----------------------------
INSERT INTO `tea_application` VALUES ('14', '100015', '上官婉', '10086@qq.com', '13561246582', '广寒宫', '10001', '371427199911111111', '3', '2020-03-15 16:53:15', '高等数学', '山东交通学院任教十余年');
INSERT INTO `tea_application` VALUES ('15', '100015', '上官婉', '10086@qq.com', '13561246582', '广寒宫', '10002', '111111199911111111', '2', '2020-03-16 14:07:18', '大学英语', '山东交通学院任教十余年');
INSERT INTO `tea_application` VALUES ('16', '100014', '阿松大', '1111@qq.com', '13555555555', '阿房宫', '10003', '111111199911111111', '3', '2020-03-16 16:07:04', '大学物理', '啊沙发沙发撒');
INSERT INTO `tea_application` VALUES ('17', '100014', '阿松大', '1111@qq.com', '13555555555', '阿房宫', '10004', '111111199911111111', '3', '2020-03-16 16:09:32', '大学物理', '啊实打实的');
INSERT INTO `tea_application` VALUES ('18', '100017', '啊啊啊', '2222@qq.com', '13111111111', '按时发生', '10005', '111111199811111111', '2', '2020-03-22 15:51:21', '土木工程', '山东建筑从大学任教十余年');
INSERT INTO `tea_application` VALUES ('19', '100018', '测试', '222@qq.com', '13111111111', '阿萨法发是否', '10006', '111111199811111111', '2', '2020-03-24 11:00:43', '大学物理', '帆帆帆帆');
INSERT INTO `tea_application` VALUES ('20', '100018', '测试', '222@qq.com', '13111111111', '阿萨法发是否', '10007', '111111199811111111', '2', '2020-03-24 15:12:35', '大学物理', '阿萨法');
INSERT INTO `tea_application` VALUES ('21', '100019', '啊啊啊', '22@qq.com', '13111111111', 'asdas', '10008', '371111199811111111', '2', '2020-04-12 21:51:28', '大学物理', '啊沙发沙发沙发沙发上');
INSERT INTO `tea_application` VALUES ('22', '100020', '带多数', '228@qq.com', '13512121212', '啊士大夫', '10009', '371411199911111111', '3', '2020-04-19 19:25:29', '大学教程', '发发发发发发');
INSERT INTO `tea_application` VALUES ('23', '100021', '啊啊啊', '75@qq.com', '13111111111', 'asd暗室逢灯', '10010', '311111199811111111', '2', '2020-05-07 14:20:57', '阿萨法', '啊沙发沙发沙发撒');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` decimal(65,0) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `money` double(255,2) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '职位（ 1管理员 2 教师 3学生）',
  `state` int(11) DEFAULT NULL COMMENT '状态 1可用  2待审核   3不可用',
  `certificate` varchar(255) DEFAULT NULL COMMENT '证书存放  路径',
  `popularity` decimal(65,0) DEFAULT NULL COMMENT '受欢迎程度  评分标准',
  `relname` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `purikura` varchar(255) DEFAULT NULL COMMENT '头像存放路径',
  `learn_time` double(255,5) DEFAULT NULL,
  `learn_time_all` double(255,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100022 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('100001', 'admin', '111111', '阿七', '3', '山东聊城', '15866648217', '759771971@qq.com', '2020-03-01 17:18:16', null, '1', '1', null, '0', '齐友帅', '啊啊啊啊', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\a8084b9e-3c45-41f9-bdf4-0da1dffba17c_QQ图片20200309180500.jpg', '0.00000', '0.00000');
INSERT INTO `user` VALUES ('100015', 'student', '111111', '学生党赛高', '2', '广寒宫', '13561246582', '10086@qq.com', '2020-03-10 15:20:11', '20661.11', '2', '1', '10002', '14', '上官婉', '我是个好学生', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\6ca54936-ca4e-4d92-8ec4-bbb392710d2b_342803aae2e74ca38853d129c9c8f074!400x400.jpeg', '0.00000', '0.03833');
INSERT INTO `user` VALUES ('100017', 'jinzusong', '111111', '靳祖松', '3', '按时发生', '13111111111', '2222@qq.com', '2020-03-15 20:13:56', '969.75', '2', '1', '10005', '13', '啊啊啊', '啊啊啊', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\89b726b9-6fe1-4839-a0df-a5dee34a8b4b_1583659646608.jpeg', '0.00000', '0.00000');
INSERT INTO `user` VALUES ('100018', 'ceshi', '111111', '', '3', '阿萨法发是否', '13111111111', '222@qq.com', '2020-03-24 10:58:44', '0.00', '3', '1', '', '0', '测试', '', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\f98e9e27-8dce-4e43-8daf-d3466218567d_QQ图片20200309180500.jpg', '0.00000', '0.00000');
INSERT INTO `user` VALUES ('100019', 'xuesheng', '111111', 'asd', '3', 'asdas', '13111111111', '22@qq.com', '2020-04-06 11:55:35', '99438.75', '3', '1', '10008', '7', '啊啊啊', '', 'E:\\CloudClassroom\\src\\main\\webapp\\repository\\purikura\\45ec5db1-29a1-4018-8b1a-77cfee20e3ca_QQ图片20200309180500.jpg', '0.00000', '0.00000');
INSERT INTO `user` VALUES ('100020', 'test1', '111111', '', '3', '啊士大夫', '13512121212', '228@qq.com', '2020-04-12 22:15:42', '999638.75', '3', '1', null, '0', '带多数', '', null, '0.00000', '4.15838');
INSERT INTO `user` VALUES ('100021', 'xuesheng1', '111111', '', '3', 'asd暗室逢灯', '13111111111', '75@qq.com', '2020-05-07 14:13:45', '121111.75', '2', '1', '10010', '1', '啊啊啊', '', null, '0.04666', '0.04666');

-- ----------------------------
-- Table structure for web_visits
-- ----------------------------
DROP TABLE IF EXISTS `web_visits`;
CREATE TABLE `web_visits` (
  `visits_today` int(255) NOT NULL,
  `visits_all` int(255) DEFAULT NULL,
  PRIMARY KEY (`visits_today`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of web_visits
-- ----------------------------
INSERT INTO `web_visits` VALUES ('26', '253');

-- ----------------------------
-- Table structure for web_visits_record
-- ----------------------------
DROP TABLE IF EXISTS `web_visits_record`;
CREATE TABLE `web_visits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visits` int(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of web_visits_record
-- ----------------------------
INSERT INTO `web_visits_record` VALUES ('1', '0', '2020-04-14 00:00:00');
INSERT INTO `web_visits_record` VALUES ('2', '7', '2020-04-15 00:00:00');
INSERT INTO `web_visits_record` VALUES ('3', '80', '2020-04-16 00:00:00');
INSERT INTO `web_visits_record` VALUES ('4', '134', '2020-04-19 00:00:00');
INSERT INTO `web_visits_record` VALUES ('5', '3', '2020-04-22 00:00:00');

-- ----------------------------
-- Event structure for curr_popularity_insert
-- ----------------------------
DROP EVENT IF EXISTS `curr_popularity_insert`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `curr_popularity_insert` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-09 23:59:55' ON COMPLETION NOT PRESERVE ENABLE DO insert into popularity_record (curr_id,popularity,date) SELECT curr_id,popularity,CURDATE() from popularity where curr_id is not null
;;
DELIMITER ;

-- ----------------------------
-- Event structure for insert_earning_record
-- ----------------------------
DROP EVENT IF EXISTS `insert_earning_record`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `insert_earning_record` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-09 23:59:55' ON COMPLETION NOT PRESERVE ENABLE COMMENT '每天 23：59：55 记录今日收益' DO insert into earning_record (user_id,money,date) SELECT user_id,earnings_today money,CURDATE() from earnings
;;
DELIMITER ;

-- ----------------------------
-- Event structure for insert_learnTimeRecord
-- ----------------------------
DROP EVENT IF EXISTS `insert_learnTimeRecord`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `insert_learnTimeRecord` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-13 23:59:55' ON COMPLETION NOT PRESERVE ENABLE DO insert into learn_time_record (user_id,learn_time,date) select id,learn_time,CURDATE() from user where state = 1 and type <> 1
;;
DELIMITER ;

-- ----------------------------
-- Event structure for insert_web_visitsRecord
-- ----------------------------
DROP EVENT IF EXISTS `insert_web_visitsRecord`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `insert_web_visitsRecord` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-15 23:59:55' ON COMPLETION NOT PRESERVE ENABLE DO insert into web_visits_record (visits,date) select visits_today,CURDATE() from web_visits
;;
DELIMITER ;

-- ----------------------------
-- Event structure for updateWebVisits
-- ----------------------------
DROP EVENT IF EXISTS `updateWebVisits`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `updateWebVisits` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-16 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update web_visits set visits_today = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for update_enrnings
-- ----------------------------
DROP EVENT IF EXISTS `update_enrnings`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `update_enrnings` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-08 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update earnings set earnings_today = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for update_learnTime
-- ----------------------------
DROP EVENT IF EXISTS `update_learnTime`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `update_learnTime` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-14 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update user set learn_time = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for update_popularity
-- ----------------------------
DROP EVENT IF EXISTS `update_popularity`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `update_popularity` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-10 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update popularity set popularity = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for user_popularity_insert
-- ----------------------------
DROP EVENT IF EXISTS `user_popularity_insert`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `user_popularity_insert` ON SCHEDULE EVERY 1 DAY STARTS '2020-04-09 23:59:55' ON COMPLETION NOT PRESERVE ENABLE DO insert into popularity_record (user_id,popularity,date) SELECT user_id,popularity,CURDATE() from popularity  where user_id is not null
;;
DELIMITER ;
