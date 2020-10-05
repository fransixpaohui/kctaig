/*
Navicat MySQL Data Transfer

Source Server         : student
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : hnust

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-10-05 13:27:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` varchar(20) NOT NULL,
  `a_pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` varchar(20) NOT NULL,
  `s_psd` varchar(20) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `s_grade` smallint(6) NOT NULL,
  `s_college` varchar(25) NOT NULL,
  `s_major` varchar(25) NOT NULL,
  `s_phone` varchar(20) NOT NULL,
  `s_mail` varchar(20) NOT NULL,
  `s_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` varchar(20) NOT NULL,
  `t_pwd` varchar(20) NOT NULL,
  `t_name` varchar(20) NOT NULL,
  `t_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_sid1` varchar(20) NOT NULL,
  `t_sid2` varchar(20) DEFAULT NULL,
  `t_sid3` varchar(20) DEFAULT NULL,
  `t_teacher` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  KEY `t_sid1` (`t_sid1`),
  KEY `t_sid2` (`t_sid2`),
  KEY `t_sid3` (`t_sid3`),
  KEY `t_teacher` (`t_teacher`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`t_sid1`) REFERENCES `student` (`s_id`),
  CONSTRAINT `team_ibfk_2` FOREIGN KEY (`t_sid2`) REFERENCES `student` (`s_id`),
  CONSTRAINT `team_ibfk_3` FOREIGN KEY (`t_sid3`) REFERENCES `student` (`s_id`),
  CONSTRAINT `team_ibfk_4` FOREIGN KEY (`t_teacher`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
