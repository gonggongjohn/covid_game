/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : covid

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2022-04-08 21:33:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commentary`
-- ----------------------------
DROP TABLE IF EXISTS `commentary`;
CREATE TABLE `commentary` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of commentary
-- ----------------------------
INSERT INTO `commentary` VALUES ('1', 'a');
INSERT INTO `commentary` VALUES ('2', 'b');
INSERT INTO `commentary` VALUES ('3', 'c');
INSERT INTO `commentary` VALUES ('4', 'd');
INSERT INTO `commentary` VALUES ('5', 'e');
INSERT INTO `commentary` VALUES ('6', 's');
INSERT INTO `commentary` VALUES ('7', 'w');
INSERT INTO `commentary` VALUES ('8', 'q');
INSERT INTO `commentary` VALUES ('9', 'qqq');
INSERT INTO `commentary` VALUES ('10', 'ww');
INSERT INTO `commentary` VALUES ('11', 'd');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `oid` int DEFAULT NULL,
  `sequence_number` int DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'a', '3', '1');
INSERT INTO `message` VALUES ('2', 'b', '4', '2');
INSERT INTO `message` VALUES ('3', 'c', '3', '2');
INSERT INTO `message` VALUES ('4', 'd', '4', '1');
INSERT INTO `message` VALUES ('5', 'e', '2', '1');
INSERT INTO `message` VALUES ('6', 'f', '3', '4');
INSERT INTO `message` VALUES ('7', 'g', '3', '3');

-- ----------------------------
-- Table structure for `option`
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `next_qid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `sequence_number` int DEFAULT NULL,
  `cid` int DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('1', 'a1', '-1', '1', '3', null);
INSERT INTO `option` VALUES ('2', 'b2', '-1', '2', '1', null);
INSERT INTO `option` VALUES ('3', 'c3', '-1', '1', '2', null);
INSERT INTO `option` VALUES ('4', 'd4', '-1', '1', '1', null);
INSERT INTO `option` VALUES ('5', 'e5', '1', '2', '2', null);

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '2', '9', '1', '2022-03-16 22:20:34');
INSERT INTO `record` VALUES ('2', '1', '2', '1', '2022-03-16 22:00:25');
INSERT INTO `record` VALUES ('3', '1', '2', '1', '2022-03-16 22:01:01');
INSERT INTO `record` VALUES ('4', '1', '2', '1', '2022-03-16 22:04:56');
INSERT INTO `record` VALUES ('5', '1', '2', '1', '2022-04-01 20:23:45');

-- ----------------------------
-- Table structure for `record_commentaries`
-- ----------------------------
DROP TABLE IF EXISTS `record_commentaries`;
CREATE TABLE `record_commentaries` (
  `rid` int NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`rid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of record_commentaries
-- ----------------------------
INSERT INTO `record_commentaries` VALUES ('2', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '2022-03-16 18:19:24', '2022-03-16 20:57:12', '0:0:0:0:0:0:0:1');
INSERT INTO `user` VALUES ('2', 'test', '123456', '2022-03-16 18:45:48', null, null);
INSERT INTO `user` VALUES ('3', 'admin1', '12345678', '2022-03-16 21:09:44', null, null);

-- ----------------------------
-- Table structure for `user_commentaries`
-- ----------------------------
DROP TABLE IF EXISTS `user_commentaries`;
CREATE TABLE `user_commentaries` (
  `user_id` int NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`user_id`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_commentaries
-- ----------------------------
INSERT INTO `user_commentaries` VALUES ('1', '3');
INSERT INTO `user_commentaries` VALUES ('1', '7');
INSERT INTO `user_commentaries` VALUES ('2', '1');
INSERT INTO `user_commentaries` VALUES ('2', '2');
INSERT INTO `user_commentaries` VALUES ('2', '4');
INSERT INTO `user_commentaries` VALUES ('2', '8');
INSERT INTO `user_commentaries` VALUES ('2', '9');
INSERT INTO `user_commentaries` VALUES ('3', '1');
INSERT INTO `user_commentaries` VALUES ('3', '3');

-- ----------------------------
-- Table structure for `user_identity`
-- ----------------------------
DROP TABLE IF EXISTS `user_identity`;
CREATE TABLE `user_identity` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `description` text,
  `first_qid` int DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_identity
-- ----------------------------
INSERT INTO `user_identity` VALUES ('1', 'user', 'description', '2', 'img\\identity\\d2f796599f154520ae850925f096f6ac.jpg');
