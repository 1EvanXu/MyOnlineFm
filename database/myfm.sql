/*
Navicat MySQL Data Transfer

Source Server         : mysqllocal
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : myfm

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2017-11-19 21:28:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `singer_info`
-- ----------------------------
DROP TABLE IF EXISTS `singer_info`;
CREATE TABLE `singer_info` (
  `singer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(255) NOT NULL DEFAULT '',
  `gender` varchar(255) DEFAULT NULL,
  `singer_type` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of singer_info
-- ----------------------------
INSERT INTO `singer_info` VALUES ('1', '周杰伦', '男', '歌手', '中国台湾');
INSERT INTO `singer_info` VALUES ('2', '五月天', null, '组合', '中国台湾');
INSERT INTO `singer_info` VALUES ('3', '李荣浩', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('4', '陈粒', '女', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('5', '陈奕迅', '男', '歌手', '中国香港');
INSERT INTO `singer_info` VALUES ('6', '林俊杰', '男', '歌手', '新加坡');
INSERT INTO `singer_info` VALUES ('7', '赵雷', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('8', 'Ed Sheeran', '男', '歌手', '美国');
INSERT INTO `singer_info` VALUES ('9', 'Coldplay', '', '组合', '英国');
INSERT INTO `singer_info` VALUES ('10', 'ZARD', '女', '组合', '日本');
INSERT INTO `singer_info` VALUES ('11', 'T-ara', '女', '组合', '韩国');

-- ----------------------------
-- Table structure for `song_info`
-- ----------------------------
DROP TABLE IF EXISTS `song_info`;
CREATE TABLE `song_info` (
  `song_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `singer_id` int(11) DEFAULT NULL,
  `song_name` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(255) DEFAULT '',
  `language` varchar(255) DEFAULT '',
  `location` varchar(255) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of song_info
-- ----------------------------
INSERT INTO `song_info` VALUES ('1001', '2', '如烟', 'Folk', 'Chinese', 'songs/1001.mp3', 'images/Mayday-1.jpg');
INSERT INTO `song_info` VALUES ('1002', '1', '晴天', 'Pop', 'Chinese', 'songs/1002.mp3', 'images/JayZhou.jpg');
INSERT INTO `song_info` VALUES ('1003', '1', '东风破', 'Pop', 'Chinese', 'songs/1003.mp3', 'images/JayZhou.jpg');
INSERT INTO `song_info` VALUES ('1004', '2', '突然好想你', 'Pop', 'Chinese', 'songs/1004.mp3', 'images/Mayday-1.jpg');
INSERT INTO `song_info` VALUES ('1005', '11', 'TAMO', 'Pop', 'Korean', 'songs/1005.mp3', 'images/T-ara.jpg');
INSERT INTO `song_info` VALUES ('1006', '5', '倾城', 'Pop', 'Cantonese', 'songs/1006.mp3', 'images/EasonChen.jpg');
INSERT INTO `song_info` VALUES ('1007', '9', 'Viva la Vida', 'Rock', 'English', 'songs/1007.mp3', 'images/vivalavida.jpg');
INSERT INTO `song_info` VALUES ('1008', '8', 'Shape Of You', 'Dance', 'English', 'songs/1008.mp3', 'images/shapeofyou.jpg');
INSERT INTO `song_info` VALUES ('1009', '7', '成都', 'Folk', 'Chinese', 'songs/1009.mp3', 'images/zhaolei.jpg');
INSERT INTO `song_info` VALUES ('1010', '4', '小半', 'Folk', 'Chinese', 'songs/1010.mp3', 'images/xiaoban.jpg');
INSERT INTO `song_info` VALUES ('1011', '10', '息もできない', 'Rock', 'Japanese', 'songs/1011.mp3', 'images/ZARD.jpg');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'xyf', 'xyf123');

-- ----------------------------
-- View structure for `song_list`
-- ----------------------------
DROP VIEW IF EXISTS `song_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_list` AS select `song_info`.`song_id` AS `song_id`,`song_info`.`song_name` AS `song_name`,`singer_info`.`singer_name` AS `singer_name`,`song_info`.`location` AS `location`,`song_info`.`cover_image` AS `cover_image` from (`song_info` left join `singer_info` on((`song_info`.`singer_id` = `singer_info`.`singer_id`))) ;
