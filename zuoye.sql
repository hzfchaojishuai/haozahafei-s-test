/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : zuoye

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 09/06/2022 16:31:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stuid` int(11) NOT NULL COMMENT '学生id',
  `no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生密码',
  `age` int(11) NULL DEFAULT NULL COMMENT '学生年龄',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生手机号',
  `sex` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`stuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '1001', '张三', '1001', 16, '13800000000', '男');
INSERT INTO `student` VALUES (2, '1002', '李四', '1002', 16, '13800000000', '男');
INSERT INTO `student` VALUES (3, '1003', '王五', '1003', 16, '13800000000', '男');
INSERT INTO `student` VALUES (4, '1004', '赵六', '1004', 16, '13800000000', '女');
INSERT INTO `student` VALUES (7068, '888', '888', '888', 888, '888', '男');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4503 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '1001', '王教师', '1001', 33, '13600000000', '女');
INSERT INTO `teacher` VALUES (2, '1002', '李教师', '1002', 33, '13600000000', '女');
INSERT INTO `teacher` VALUES (3, '1003', '廖教师', '1003', 33, '13600000000', '男');
INSERT INTO `teacher` VALUES (4502, '999', '999', '999', 999, '999', '男');

-- ----------------------------
-- Table structure for zuoye
-- ----------------------------
DROP TABLE IF EXISTS `zuoye`;
CREATE TABLE `zuoye`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zuoye
-- ----------------------------
INSERT INTO `zuoye` VALUES (1, 'java');
INSERT INTO `zuoye` VALUES (2, 'c#');
INSERT INTO `zuoye` VALUES (3, 'c++');
INSERT INTO `zuoye` VALUES (4, 'web');
INSERT INTO `zuoye` VALUES (5, 'php');

-- ----------------------------
-- Table structure for zuoyelist
-- ----------------------------
DROP TABLE IF EXISTS `zuoyelist`;
CREATE TABLE `zuoyelist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NULL DEFAULT NULL COMMENT '学生编号',
  `stuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `zuoye` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业名称',
  `zuoyecontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业内容',
  `status` int(11) NULL DEFAULT 1 COMMENT '1.待审核，2.审核完成',
  `type` int(11) NULL DEFAULT 1 COMMENT '1.开题，2.中期',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '2文件路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7502 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zuoyelist
-- ----------------------------
INSERT INTO `zuoyelist` VALUES (1, 1, '张三', 'java', 'java', 2, 1, NULL);
INSERT INTO `zuoyelist` VALUES (2, 1, '张三', 'c++', 'c++', 2, 1, NULL);
INSERT INTO `zuoyelist` VALUES (3, 1, '张三', 'C#', 'c++', 2, 1, NULL);
INSERT INTO `zuoyelist` VALUES (1785, 1001, '张三', 'java', '123123', 1, 2, NULL);
INSERT INTO `zuoyelist` VALUES (3993, 1, '1', 'java', '123123', 2, 1, NULL);
INSERT INTO `zuoyelist` VALUES (4658, 1001, '张三', 'java', '123123', 1, 2, NULL);
INSERT INTO `zuoyelist` VALUES (4958, 1001, '张三', 'java', '13123123', 1, 1, NULL);
INSERT INTO `zuoyelist` VALUES (5511, 1001, '张三', 'c#', '123123', 1, 1, NULL);
INSERT INTO `zuoyelist` VALUES (6279, 1001, '张三', 'java', '123123', 1, 1, 'D:\\工作区\\servlet私活区\\zuoye\\out\\artifacts\\zuoye_war_exploded\\\\upload\\mv2.jpeg');
INSERT INTO `zuoyelist` VALUES (7501, 1001, '张三', 'java', '123123', 1, 2, NULL);

SET FOREIGN_KEY_CHECKS = 1;
