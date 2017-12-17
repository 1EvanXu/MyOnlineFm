/*
Navicat MySQL Data Transfer

Source Server         : mysqllocal
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2017-12-17 15:01:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrators_info`
-- ----------------------------
DROP TABLE IF EXISTS `administrators_info`;
CREATE TABLE `administrators_info` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of administrators_info
-- ----------------------------
INSERT INTO `administrators_info` VALUES ('1', 'xyf', 'xyf123');

-- ----------------------------
-- Table structure for `page_hit_statistics_info`
-- ----------------------------
DROP TABLE IF EXISTS `page_hit_statistics_info`;
CREATE TABLE `page_hit_statistics_info` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime NOT NULL,
  `hit_count` int(16) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of page_hit_statistics_info
-- ----------------------------
INSERT INTO `page_hit_statistics_info` VALUES ('1', '2017-11-01 00:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('2', '2017-11-01 01:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('3', '2017-11-01 02:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('4', '2017-11-01 03:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('5', '2017-11-01 04:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('6', '2017-11-01 05:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('7', '2017-11-01 06:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('8', '2017-11-01 07:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('9', '2017-11-01 08:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('10', '2017-11-01 09:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('11', '2017-11-01 10:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('12', '2017-11-01 11:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('13', '2017-11-01 12:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('14', '2017-11-01 13:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('15', '2017-11-01 14:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('16', '2017-11-01 15:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('17', '2017-11-01 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('18', '2017-11-01 17:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('19', '2017-11-01 18:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('20', '2017-11-01 19:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('21', '2017-11-01 20:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('22', '2017-11-01 21:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('23', '2017-11-01 22:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('24', '2017-11-01 23:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('25', '2017-11-02 00:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('26', '2017-11-02 01:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('27', '2017-11-02 02:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('28', '2017-11-02 03:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('29', '2017-11-02 04:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('30', '2017-11-02 05:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('31', '2017-11-02 06:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('32', '2017-11-02 07:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('33', '2017-11-02 08:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('34', '2017-11-02 09:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('35', '2017-11-02 10:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('36', '2017-11-02 11:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('37', '2017-11-02 12:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('38', '2017-11-02 13:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('39', '2017-11-02 14:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('40', '2017-11-02 15:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('41', '2017-11-02 16:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('42', '2017-11-02 17:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('43', '2017-11-02 18:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('44', '2017-11-02 19:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('45', '2017-11-02 20:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('46', '2017-11-02 21:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('47', '2017-11-02 22:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('48', '2017-11-02 23:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('49', '2017-11-03 00:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('50', '2017-11-03 01:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('51', '2017-11-03 02:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('52', '2017-11-03 03:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('53', '2017-11-03 04:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('54', '2017-11-03 05:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('55', '2017-11-03 06:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('56', '2017-11-03 07:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('57', '2017-11-03 08:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('58', '2017-11-03 09:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('59', '2017-11-03 10:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('60', '2017-11-03 11:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('61', '2017-11-03 12:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('62', '2017-11-03 13:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('63', '2017-11-03 14:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('64', '2017-11-03 15:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('65', '2017-11-03 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('66', '2017-11-03 17:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('67', '2017-11-03 18:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('68', '2017-11-03 19:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('69', '2017-11-03 20:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('70', '2017-11-03 21:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('71', '2017-11-03 22:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('72', '2017-11-03 23:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('73', '2017-11-04 00:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('74', '2017-11-04 01:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('75', '2017-11-04 02:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('76', '2017-11-04 03:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('77', '2017-11-04 04:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('78', '2017-11-04 05:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('79', '2017-11-04 06:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('80', '2017-11-04 07:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('81', '2017-11-04 08:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('82', '2017-11-04 09:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('83', '2017-11-04 10:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('84', '2017-11-04 11:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('85', '2017-11-04 12:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('86', '2017-11-04 13:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('87', '2017-11-04 14:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('88', '2017-11-04 15:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('89', '2017-11-04 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('90', '2017-11-04 17:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('91', '2017-11-04 18:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('92', '2017-11-04 19:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('93', '2017-11-04 20:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('94', '2017-11-04 21:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('95', '2017-11-04 22:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('96', '2017-11-04 23:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('97', '2017-11-05 00:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('98', '2017-11-05 01:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('99', '2017-11-05 02:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('100', '2017-11-05 03:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('101', '2017-11-05 04:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('102', '2017-11-05 05:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('103', '2017-11-05 06:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('104', '2017-11-05 07:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('105', '2017-11-05 08:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('106', '2017-11-05 09:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('107', '2017-11-05 10:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('108', '2017-11-05 11:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('109', '2017-11-05 12:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('110', '2017-11-05 13:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('111', '2017-11-05 14:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('112', '2017-11-05 15:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('113', '2017-11-05 16:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('114', '2017-11-05 17:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('115', '2017-11-05 18:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('116', '2017-11-05 19:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('117', '2017-11-05 20:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('118', '2017-11-05 21:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('119', '2017-11-05 22:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('120', '2017-11-05 23:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('121', '2017-11-06 00:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('122', '2017-11-06 01:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('123', '2017-11-06 02:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('124', '2017-11-06 03:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('125', '2017-11-06 04:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('126', '2017-11-06 05:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('127', '2017-11-06 06:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('128', '2017-11-06 07:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('129', '2017-11-06 08:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('130', '2017-11-06 09:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('131', '2017-11-06 10:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('132', '2017-11-06 11:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('133', '2017-11-06 12:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('134', '2017-11-06 13:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('135', '2017-11-06 14:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('136', '2017-11-06 15:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('137', '2017-11-06 16:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('138', '2017-11-06 17:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('139', '2017-11-06 18:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('140', '2017-11-06 19:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('141', '2017-11-06 20:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('142', '2017-11-06 21:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('143', '2017-11-06 22:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('144', '2017-11-06 23:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('145', '2017-11-07 00:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('146', '2017-11-07 01:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('147', '2017-11-07 02:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('148', '2017-11-07 03:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('149', '2017-11-07 04:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('150', '2017-11-07 05:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('151', '2017-11-07 06:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('152', '2017-11-07 07:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('153', '2017-11-07 08:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('154', '2017-11-07 09:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('155', '2017-11-07 10:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('156', '2017-11-07 11:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('157', '2017-11-07 12:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('158', '2017-11-07 13:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('159', '2017-11-07 14:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('160', '2017-11-07 15:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('161', '2017-11-07 16:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('162', '2017-11-07 17:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('163', '2017-11-07 18:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('164', '2017-11-07 19:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('165', '2017-11-07 20:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('166', '2017-11-07 21:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('167', '2017-11-07 22:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('168', '2017-11-07 23:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('169', '2017-11-08 00:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('170', '2017-11-08 01:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('171', '2017-11-08 02:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('172', '2017-11-08 03:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('173', '2017-11-08 04:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('174', '2017-11-08 05:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('175', '2017-11-08 06:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('176', '2017-11-08 07:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('177', '2017-11-08 08:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('178', '2017-11-08 09:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('179', '2017-11-08 10:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('180', '2017-11-08 11:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('181', '2017-11-08 12:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('182', '2017-11-08 13:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('183', '2017-11-08 14:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('184', '2017-11-08 15:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('185', '2017-11-08 16:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('186', '2017-11-08 17:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('187', '2017-11-08 18:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('188', '2017-11-08 19:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('189', '2017-11-08 20:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('190', '2017-11-08 21:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('191', '2017-11-08 22:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('192', '2017-11-08 23:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('193', '2017-11-09 00:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('194', '2017-11-09 01:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('195', '2017-11-09 02:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('196', '2017-11-09 03:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('197', '2017-11-09 04:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('198', '2017-11-09 05:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('199', '2017-11-09 06:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('200', '2017-11-09 07:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('201', '2017-11-09 08:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('202', '2017-11-09 09:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('203', '2017-11-09 10:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('204', '2017-11-09 11:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('205', '2017-11-09 12:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('206', '2017-11-09 13:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('207', '2017-11-09 14:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('208', '2017-11-09 15:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('209', '2017-11-09 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('210', '2017-11-09 17:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('211', '2017-11-09 18:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('212', '2017-11-09 19:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('213', '2017-11-09 20:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('214', '2017-11-09 21:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('215', '2017-11-09 22:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('216', '2017-11-09 23:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('217', '2017-11-10 00:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('218', '2017-11-10 01:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('219', '2017-11-10 02:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('220', '2017-11-10 03:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('221', '2017-11-10 04:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('222', '2017-11-10 05:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('223', '2017-11-10 06:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('224', '2017-11-10 07:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('225', '2017-11-10 08:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('226', '2017-11-10 09:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('227', '2017-11-10 10:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('228', '2017-11-10 11:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('229', '2017-11-10 12:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('230', '2017-11-10 13:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('231', '2017-11-10 14:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('232', '2017-11-10 15:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('233', '2017-11-10 16:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('234', '2017-11-10 17:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('235', '2017-11-10 18:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('236', '2017-11-10 19:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('237', '2017-11-10 20:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('238', '2017-11-10 21:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('239', '2017-11-10 22:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('240', '2017-11-10 23:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('241', '2017-11-11 00:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('242', '2017-11-11 01:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('243', '2017-11-11 02:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('244', '2017-11-11 03:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('245', '2017-11-11 04:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('246', '2017-11-11 05:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('247', '2017-11-11 06:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('248', '2017-11-11 07:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('249', '2017-11-11 08:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('250', '2017-11-11 09:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('251', '2017-11-11 10:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('252', '2017-11-11 11:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('253', '2017-11-11 12:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('254', '2017-11-11 13:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('255', '2017-11-11 14:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('256', '2017-11-11 15:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('257', '2017-11-11 16:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('258', '2017-11-11 17:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('259', '2017-11-11 18:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('260', '2017-11-11 19:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('261', '2017-11-11 20:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('262', '2017-11-11 21:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('263', '2017-11-11 22:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('264', '2017-11-11 23:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('265', '2017-11-12 00:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('266', '2017-11-12 01:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('267', '2017-11-12 02:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('268', '2017-11-12 03:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('269', '2017-11-12 04:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('270', '2017-11-12 05:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('271', '2017-11-12 06:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('272', '2017-11-12 07:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('273', '2017-11-12 08:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('274', '2017-11-12 09:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('275', '2017-11-12 10:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('276', '2017-11-12 11:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('277', '2017-11-12 12:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('278', '2017-11-12 13:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('279', '2017-11-12 14:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('280', '2017-11-12 15:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('281', '2017-11-12 16:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('282', '2017-11-12 17:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('283', '2017-11-12 18:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('284', '2017-11-12 19:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('285', '2017-11-12 20:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('286', '2017-11-12 21:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('287', '2017-11-12 22:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('288', '2017-11-12 23:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('289', '2017-11-13 00:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('290', '2017-11-13 01:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('291', '2017-11-13 02:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('292', '2017-11-13 03:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('293', '2017-11-13 04:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('294', '2017-11-13 05:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('295', '2017-11-13 06:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('296', '2017-11-13 07:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('297', '2017-11-13 08:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('298', '2017-11-13 09:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('299', '2017-11-13 10:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('300', '2017-11-13 11:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('301', '2017-11-13 12:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('302', '2017-11-13 13:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('303', '2017-11-13 14:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('304', '2017-11-13 15:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('305', '2017-11-13 16:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('306', '2017-11-13 17:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('307', '2017-11-13 18:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('308', '2017-11-13 19:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('309', '2017-11-13 20:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('310', '2017-11-13 21:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('311', '2017-11-13 22:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('312', '2017-11-13 23:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('313', '2017-11-14 00:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('314', '2017-11-14 01:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('315', '2017-11-14 02:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('316', '2017-11-14 03:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('317', '2017-11-14 04:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('318', '2017-11-14 05:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('319', '2017-11-14 06:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('320', '2017-11-14 07:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('321', '2017-11-14 08:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('322', '2017-11-14 09:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('323', '2017-11-14 10:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('324', '2017-11-14 11:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('325', '2017-11-14 12:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('326', '2017-11-14 13:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('327', '2017-11-14 14:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('328', '2017-11-14 15:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('329', '2017-11-14 16:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('330', '2017-11-14 17:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('331', '2017-11-14 18:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('332', '2017-11-14 19:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('333', '2017-11-14 20:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('334', '2017-11-14 21:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('335', '2017-11-14 22:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('336', '2017-11-14 23:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('337', '2017-11-15 00:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('338', '2017-11-15 01:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('339', '2017-11-15 02:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('340', '2017-11-15 03:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('341', '2017-11-15 04:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('342', '2017-11-15 05:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('343', '2017-11-15 06:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('344', '2017-11-15 07:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('345', '2017-11-15 08:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('346', '2017-11-15 09:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('347', '2017-11-15 10:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('348', '2017-11-15 11:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('349', '2017-11-15 12:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('350', '2017-11-15 13:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('351', '2017-11-15 14:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('352', '2017-11-15 15:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('353', '2017-11-15 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('354', '2017-11-15 17:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('355', '2017-11-15 18:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('356', '2017-11-15 19:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('357', '2017-11-15 20:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('358', '2017-11-15 21:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('359', '2017-11-15 22:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('360', '2017-11-15 23:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('361', '2017-11-16 00:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('362', '2017-11-16 01:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('363', '2017-11-16 02:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('364', '2017-11-16 03:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('365', '2017-11-16 04:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('366', '2017-11-16 05:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('367', '2017-11-16 06:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('368', '2017-11-16 07:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('369', '2017-11-16 08:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('370', '2017-11-16 09:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('371', '2017-11-16 10:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('372', '2017-11-16 11:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('373', '2017-11-16 12:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('374', '2017-11-16 13:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('375', '2017-11-16 14:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('376', '2017-11-16 15:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('377', '2017-11-16 16:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('378', '2017-11-16 17:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('379', '2017-11-16 18:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('380', '2017-11-16 19:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('381', '2017-11-16 20:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('382', '2017-11-16 21:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('383', '2017-11-16 22:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('384', '2017-11-16 23:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('385', '2017-11-17 00:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('386', '2017-11-17 01:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('387', '2017-11-17 02:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('388', '2017-11-17 03:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('389', '2017-11-17 04:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('390', '2017-11-17 05:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('391', '2017-11-17 06:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('392', '2017-11-17 07:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('393', '2017-11-17 08:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('394', '2017-11-17 09:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('395', '2017-11-17 10:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('396', '2017-11-17 11:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('397', '2017-11-17 12:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('398', '2017-11-17 13:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('399', '2017-11-17 14:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('400', '2017-11-17 15:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('401', '2017-11-17 16:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('402', '2017-11-17 17:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('403', '2017-11-17 18:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('404', '2017-11-17 19:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('405', '2017-11-17 20:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('406', '2017-11-17 21:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('407', '2017-11-17 22:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('408', '2017-11-17 23:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('409', '2017-11-18 00:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('410', '2017-11-18 01:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('411', '2017-11-18 02:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('412', '2017-11-18 03:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('413', '2017-11-18 04:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('414', '2017-11-18 05:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('415', '2017-11-18 06:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('416', '2017-11-18 07:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('417', '2017-11-18 08:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('418', '2017-11-18 09:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('419', '2017-11-18 10:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('420', '2017-11-18 11:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('421', '2017-11-18 12:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('422', '2017-11-18 13:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('423', '2017-11-18 14:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('424', '2017-11-18 15:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('425', '2017-11-18 16:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('426', '2017-11-18 17:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('427', '2017-11-18 18:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('428', '2017-11-18 19:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('429', '2017-11-18 20:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('430', '2017-11-18 21:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('431', '2017-11-18 22:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('432', '2017-11-18 23:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('433', '2017-11-19 00:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('434', '2017-11-19 01:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('435', '2017-11-19 02:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('436', '2017-11-19 03:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('437', '2017-11-19 04:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('438', '2017-11-19 05:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('439', '2017-11-19 06:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('440', '2017-11-19 07:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('441', '2017-11-19 08:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('442', '2017-11-19 09:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('443', '2017-11-19 10:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('444', '2017-11-19 11:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('445', '2017-11-19 12:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('446', '2017-11-19 13:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('447', '2017-11-19 14:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('448', '2017-11-19 15:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('449', '2017-11-19 16:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('450', '2017-11-19 17:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('451', '2017-11-19 18:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('452', '2017-11-19 19:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('453', '2017-11-19 20:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('454', '2017-11-19 21:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('455', '2017-11-19 22:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('456', '2017-11-19 23:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('457', '2017-11-20 00:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('458', '2017-11-20 01:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('459', '2017-11-20 02:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('460', '2017-11-20 03:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('461', '2017-11-20 04:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('462', '2017-11-20 05:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('463', '2017-11-20 06:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('464', '2017-11-20 07:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('465', '2017-11-20 08:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('466', '2017-11-20 09:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('467', '2017-11-20 10:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('468', '2017-11-20 11:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('469', '2017-11-20 12:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('470', '2017-11-20 13:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('471', '2017-11-20 14:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('472', '2017-11-20 15:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('473', '2017-11-20 16:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('474', '2017-11-20 17:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('475', '2017-11-20 18:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('476', '2017-11-20 19:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('477', '2017-11-20 20:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('478', '2017-11-20 21:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('479', '2017-11-20 22:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('480', '2017-11-20 23:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('481', '2017-11-21 00:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('482', '2017-11-21 01:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('483', '2017-11-21 02:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('484', '2017-11-21 03:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('485', '2017-11-21 04:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('486', '2017-11-21 05:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('487', '2017-11-21 06:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('488', '2017-11-21 07:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('489', '2017-11-21 08:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('490', '2017-11-21 09:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('491', '2017-11-21 10:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('492', '2017-11-21 11:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('493', '2017-11-21 12:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('494', '2017-11-21 13:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('495', '2017-11-21 14:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('496', '2017-11-21 15:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('497', '2017-11-21 16:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('498', '2017-11-21 17:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('499', '2017-11-21 18:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('500', '2017-11-21 19:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('501', '2017-11-21 20:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('502', '2017-11-21 21:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('503', '2017-11-21 22:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('504', '2017-11-21 23:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('505', '2017-11-22 00:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('506', '2017-11-22 01:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('507', '2017-11-22 02:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('508', '2017-11-22 03:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('509', '2017-11-22 04:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('510', '2017-11-22 05:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('511', '2017-11-22 06:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('512', '2017-11-22 07:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('513', '2017-11-22 08:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('514', '2017-11-22 09:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('515', '2017-11-22 10:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('516', '2017-11-22 11:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('517', '2017-11-22 12:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('518', '2017-11-22 13:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('519', '2017-11-22 14:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('520', '2017-11-22 15:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('521', '2017-11-22 16:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('522', '2017-11-22 17:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('523', '2017-11-22 18:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('524', '2017-11-22 19:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('525', '2017-11-22 20:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('526', '2017-11-22 21:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('527', '2017-11-22 22:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('528', '2017-11-22 23:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('529', '2017-11-23 00:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('530', '2017-11-23 01:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('531', '2017-11-23 02:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('532', '2017-11-23 03:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('533', '2017-11-23 04:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('534', '2017-11-23 05:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('535', '2017-11-23 06:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('536', '2017-11-23 07:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('537', '2017-11-23 08:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('538', '2017-11-23 09:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('539', '2017-11-23 10:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('540', '2017-11-23 11:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('541', '2017-11-23 12:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('542', '2017-11-23 13:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('543', '2017-11-23 14:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('544', '2017-11-23 15:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('545', '2017-11-23 16:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('546', '2017-11-23 17:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('547', '2017-11-23 18:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('548', '2017-11-23 19:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('549', '2017-11-23 20:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('550', '2017-11-23 21:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('551', '2017-11-23 22:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('552', '2017-11-23 23:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('553', '2017-11-24 00:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('554', '2017-11-24 01:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('555', '2017-11-24 02:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('556', '2017-11-24 03:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('557', '2017-11-24 04:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('558', '2017-11-24 05:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('559', '2017-11-24 06:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('560', '2017-11-24 07:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('561', '2017-11-24 08:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('562', '2017-11-24 09:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('563', '2017-11-24 10:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('564', '2017-11-24 11:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('565', '2017-11-24 12:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('566', '2017-11-24 13:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('567', '2017-11-24 14:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('568', '2017-11-24 15:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('569', '2017-11-24 16:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('570', '2017-11-24 17:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('571', '2017-11-24 18:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('572', '2017-11-24 19:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('573', '2017-11-24 20:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('574', '2017-11-24 21:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('575', '2017-11-24 22:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('576', '2017-11-24 23:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('577', '2017-11-25 00:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('578', '2017-11-25 01:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('579', '2017-11-25 02:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('580', '2017-11-25 03:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('581', '2017-11-25 04:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('582', '2017-11-25 05:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('583', '2017-11-25 06:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('584', '2017-11-25 07:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('585', '2017-11-25 08:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('586', '2017-11-25 09:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('587', '2017-11-25 10:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('588', '2017-11-25 11:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('589', '2017-11-25 12:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('590', '2017-11-25 13:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('591', '2017-11-25 14:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('592', '2017-11-25 15:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('593', '2017-11-25 16:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('594', '2017-11-25 17:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('595', '2017-11-25 18:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('596', '2017-11-25 19:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('597', '2017-11-25 20:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('598', '2017-11-25 21:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('599', '2017-11-25 22:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('600', '2017-11-25 23:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('601', '2017-11-26 00:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('602', '2017-11-26 01:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('603', '2017-11-26 02:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('604', '2017-11-26 03:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('605', '2017-11-26 04:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('606', '2017-11-26 05:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('607', '2017-11-26 06:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('608', '2017-11-26 07:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('609', '2017-11-26 08:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('610', '2017-11-26 09:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('611', '2017-11-26 10:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('612', '2017-11-26 11:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('613', '2017-11-26 12:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('614', '2017-11-26 13:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('615', '2017-11-26 14:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('616', '2017-11-26 15:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('617', '2017-11-26 16:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('618', '2017-11-26 17:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('619', '2017-11-26 18:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('620', '2017-11-26 19:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('621', '2017-11-26 20:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('622', '2017-11-26 21:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('623', '2017-11-26 22:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('624', '2017-11-26 23:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('625', '2017-11-27 00:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('626', '2017-11-27 01:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('627', '2017-11-27 02:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('628', '2017-11-27 03:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('629', '2017-11-27 04:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('630', '2017-11-27 05:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('631', '2017-11-27 06:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('632', '2017-11-27 07:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('633', '2017-11-27 08:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('634', '2017-11-27 09:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('635', '2017-11-27 10:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('636', '2017-11-27 11:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('637', '2017-11-27 12:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('638', '2017-11-27 13:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('639', '2017-11-27 14:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('640', '2017-11-27 15:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('641', '2017-11-27 16:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('642', '2017-11-27 17:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('643', '2017-11-27 18:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('644', '2017-11-27 19:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('645', '2017-11-27 20:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('646', '2017-11-27 21:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('647', '2017-11-27 22:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('648', '2017-11-27 23:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('649', '2017-11-28 00:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('650', '2017-11-28 01:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('651', '2017-11-28 02:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('652', '2017-11-28 03:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('653', '2017-11-28 04:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('654', '2017-11-28 05:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('655', '2017-11-28 06:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('656', '2017-11-28 07:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('657', '2017-11-28 08:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('658', '2017-11-28 09:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('659', '2017-11-28 10:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('660', '2017-11-28 11:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('661', '2017-11-28 12:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('662', '2017-11-28 13:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('663', '2017-11-28 14:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('664', '2017-11-28 15:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('665', '2017-11-28 16:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('666', '2017-11-28 17:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('667', '2017-11-28 18:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('668', '2017-11-28 19:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('669', '2017-11-28 20:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('670', '2017-11-28 21:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('671', '2017-11-28 22:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('672', '2017-11-28 23:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('673', '2017-11-29 00:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('674', '2017-11-29 01:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('675', '2017-11-29 02:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('676', '2017-11-29 03:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('677', '2017-11-29 04:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('678', '2017-11-29 05:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('679', '2017-11-29 06:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('680', '2017-11-29 07:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('681', '2017-11-29 08:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('682', '2017-11-29 09:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('683', '2017-11-29 10:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('684', '2017-11-29 11:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('685', '2017-11-29 12:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('686', '2017-11-29 13:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('687', '2017-11-29 14:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('688', '2017-11-29 15:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('689', '2017-11-29 16:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('690', '2017-11-29 17:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('691', '2017-11-29 18:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('692', '2017-11-29 19:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('693', '2017-11-29 20:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('694', '2017-11-29 21:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('695', '2017-11-29 22:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('696', '2017-11-29 23:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('697', '2017-11-30 00:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('698', '2017-11-30 01:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('699', '2017-11-30 02:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('700', '2017-11-30 03:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('701', '2017-11-30 04:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('702', '2017-11-30 05:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('703', '2017-11-30 06:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('704', '2017-11-30 07:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('705', '2017-11-30 08:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('706', '2017-11-30 09:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('707', '2017-11-30 10:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('708', '2017-11-30 11:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('709', '2017-11-30 12:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('710', '2017-11-30 13:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('711', '2017-11-30 14:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('712', '2017-11-30 15:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('713', '2017-11-30 16:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('714', '2017-11-30 17:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('715', '2017-11-30 18:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('716', '2017-11-30 19:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('717', '2017-11-30 20:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('718', '2017-11-30 21:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('719', '2017-11-30 22:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('720', '2017-11-30 23:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('721', '2017-12-01 00:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('722', '2017-12-01 01:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('723', '2017-12-01 02:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('724', '2017-12-01 03:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('725', '2017-12-01 04:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('726', '2017-12-01 05:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('727', '2017-12-01 06:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('728', '2017-12-01 07:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('729', '2017-12-01 08:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('730', '2017-12-01 09:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('731', '2017-12-01 10:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('732', '2017-12-01 11:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('733', '2017-12-01 12:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('734', '2017-12-01 13:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('735', '2017-12-01 14:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('736', '2017-12-01 15:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('737', '2017-12-01 16:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('738', '2017-12-01 17:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('739', '2017-12-01 18:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('740', '2017-12-01 19:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('741', '2017-12-01 20:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('742', '2017-12-01 21:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('743', '2017-12-01 22:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('744', '2017-12-01 23:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('745', '2017-12-02 00:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('746', '2017-12-02 01:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('747', '2017-12-02 02:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('748', '2017-12-02 03:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('749', '2017-12-02 04:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('750', '2017-12-02 05:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('751', '2017-12-02 06:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('752', '2017-12-02 07:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('753', '2017-12-02 08:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('754', '2017-12-02 09:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('755', '2017-12-02 10:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('756', '2017-12-02 11:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('757', '2017-12-02 12:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('758', '2017-12-02 13:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('759', '2017-12-02 14:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('760', '2017-12-02 15:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('761', '2017-12-02 16:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('762', '2017-12-02 17:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('763', '2017-12-02 18:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('764', '2017-12-02 19:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('765', '2017-12-02 20:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('766', '2017-12-02 21:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('767', '2017-12-02 22:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('768', '2017-12-02 23:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('769', '2017-12-03 00:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('770', '2017-12-03 01:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('771', '2017-12-03 02:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('772', '2017-12-03 03:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('773', '2017-12-03 04:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('774', '2017-12-03 05:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('775', '2017-12-03 06:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('776', '2017-12-03 07:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('777', '2017-12-03 08:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('778', '2017-12-03 09:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('779', '2017-12-03 10:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('780', '2017-12-03 11:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('781', '2017-12-03 12:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('782', '2017-12-03 13:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('783', '2017-12-03 14:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('784', '2017-12-03 15:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('785', '2017-12-03 16:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('786', '2017-12-03 17:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('787', '2017-12-03 18:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('788', '2017-12-03 19:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('789', '2017-12-03 20:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('790', '2017-12-03 21:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('791', '2017-12-03 22:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('792', '2017-12-03 23:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('793', '2017-12-04 00:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('794', '2017-12-04 01:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('795', '2017-12-04 02:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('796', '2017-12-04 03:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('797', '2017-12-04 04:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('798', '2017-12-04 05:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('799', '2017-12-04 06:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('800', '2017-12-04 07:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('801', '2017-12-04 08:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('802', '2017-12-04 09:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('803', '2017-12-04 10:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('804', '2017-12-04 11:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('805', '2017-12-04 12:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('806', '2017-12-04 13:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('807', '2017-12-04 14:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('808', '2017-12-04 15:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('809', '2017-12-04 16:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('810', '2017-12-04 17:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('811', '2017-12-04 18:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('812', '2017-12-04 19:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('813', '2017-12-04 20:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('814', '2017-12-04 21:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('815', '2017-12-04 22:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('816', '2017-12-04 23:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('817', '2017-12-05 00:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('818', '2017-12-05 01:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('819', '2017-12-05 02:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('820', '2017-12-05 03:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('821', '2017-12-05 04:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('822', '2017-12-05 05:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('823', '2017-12-05 06:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('824', '2017-12-05 07:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('825', '2017-12-05 08:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('826', '2017-12-05 09:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('827', '2017-12-05 10:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('828', '2017-12-05 11:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('829', '2017-12-05 12:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('830', '2017-12-05 13:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('831', '2017-12-05 14:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('832', '2017-12-05 15:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('833', '2017-12-05 16:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('834', '2017-12-05 17:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('835', '2017-12-05 18:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('836', '2017-12-05 19:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('837', '2017-12-05 20:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('838', '2017-12-05 21:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('839', '2017-12-05 22:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('840', '2017-12-05 23:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('841', '2017-12-06 00:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('842', '2017-12-06 01:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('843', '2017-12-06 02:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('844', '2017-12-06 03:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('845', '2017-12-06 04:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('846', '2017-12-06 05:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('847', '2017-12-06 06:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('848', '2017-12-06 07:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('849', '2017-12-06 08:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('850', '2017-12-06 09:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('851', '2017-12-06 10:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('852', '2017-12-06 11:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('853', '2017-12-06 12:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('854', '2017-12-06 13:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('855', '2017-12-06 14:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('856', '2017-12-06 15:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('857', '2017-12-06 16:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('858', '2017-12-06 17:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('859', '2017-12-06 18:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('860', '2017-12-06 19:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('861', '2017-12-06 20:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('862', '2017-12-06 21:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('863', '2017-12-06 22:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('864', '2017-12-06 23:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('865', '2017-12-07 00:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('866', '2017-12-07 01:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('867', '2017-12-07 02:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('868', '2017-12-07 03:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('869', '2017-12-07 04:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('870', '2017-12-07 05:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('871', '2017-12-07 06:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('872', '2017-12-07 07:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('873', '2017-12-07 08:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('874', '2017-12-07 09:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('875', '2017-12-07 10:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('876', '2017-12-07 11:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('877', '2017-12-07 12:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('878', '2017-12-07 13:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('879', '2017-12-07 14:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('880', '2017-12-07 15:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('881', '2017-12-07 16:00:00', '6');
INSERT INTO `page_hit_statistics_info` VALUES ('882', '2017-12-07 17:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('883', '2017-12-07 18:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('884', '2017-12-07 19:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('885', '2017-12-07 20:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('886', '2017-12-07 21:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('887', '2017-12-07 22:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('888', '2017-12-07 23:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('889', '2017-12-08 00:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('890', '2017-12-08 01:00:00', '3');
INSERT INTO `page_hit_statistics_info` VALUES ('891', '2017-12-08 02:00:00', '14');
INSERT INTO `page_hit_statistics_info` VALUES ('892', '2017-12-08 03:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('893', '2017-12-08 04:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('894', '2017-12-08 05:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('895', '2017-12-08 06:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('896', '2017-12-08 07:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('897', '2017-12-08 08:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('898', '2017-12-08 09:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('899', '2017-12-08 10:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('900', '2017-12-08 11:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('901', '2017-12-08 12:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('902', '2017-12-08 13:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('903', '2017-12-08 14:00:00', '10');
INSERT INTO `page_hit_statistics_info` VALUES ('904', '2017-12-08 15:00:00', '18');
INSERT INTO `page_hit_statistics_info` VALUES ('905', '2017-12-08 16:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('906', '2017-12-08 17:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('907', '2017-12-08 18:00:00', '0');
INSERT INTO `page_hit_statistics_info` VALUES ('908', '2017-12-08 19:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('909', '2017-12-08 20:00:00', '8');
INSERT INTO `page_hit_statistics_info` VALUES ('910', '2017-12-08 21:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('911', '2017-12-08 22:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('912', '2017-12-08 23:00:00', '2');
INSERT INTO `page_hit_statistics_info` VALUES ('913', '2017-12-09 00:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('914', '2017-12-09 01:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('915', '2017-12-09 02:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('916', '2017-12-09 03:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('917', '2017-12-09 04:00:00', '20');
INSERT INTO `page_hit_statistics_info` VALUES ('918', '2017-12-09 05:00:00', '19');
INSERT INTO `page_hit_statistics_info` VALUES ('919', '2017-12-09 06:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('920', '2017-12-09 07:00:00', '9');
INSERT INTO `page_hit_statistics_info` VALUES ('921', '2017-12-09 08:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('922', '2017-12-09 09:00:00', '1');
INSERT INTO `page_hit_statistics_info` VALUES ('923', '2017-12-09 10:00:00', '15');
INSERT INTO `page_hit_statistics_info` VALUES ('924', '2017-12-09 11:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('925', '2017-12-09 12:00:00', '5');
INSERT INTO `page_hit_statistics_info` VALUES ('926', '2017-12-09 13:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('927', '2017-12-09 14:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('928', '2017-12-09 15:00:00', '4');
INSERT INTO `page_hit_statistics_info` VALUES ('929', '2017-12-09 16:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('930', '2017-12-09 17:00:00', '12');
INSERT INTO `page_hit_statistics_info` VALUES ('931', '2017-12-09 18:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('932', '2017-12-09 19:00:00', '16');
INSERT INTO `page_hit_statistics_info` VALUES ('933', '2017-12-09 20:00:00', '11');
INSERT INTO `page_hit_statistics_info` VALUES ('934', '2017-12-09 21:00:00', '17');
INSERT INTO `page_hit_statistics_info` VALUES ('935', '2017-12-09 22:00:00', '13');
INSERT INTO `page_hit_statistics_info` VALUES ('936', '2017-12-09 23:00:00', '7');
INSERT INTO `page_hit_statistics_info` VALUES ('937', '2017-12-09 21:36:25', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of singer_info
-- ----------------------------
INSERT INTO `singer_info` VALUES ('1', '周杰伦', '男', '歌手', '中国台湾');
INSERT INTO `singer_info` VALUES ('2', '五月天', '男', '组合', '中国台湾');
INSERT INTO `singer_info` VALUES ('3', '李荣浩', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('4', '陈粒', '女', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('5', '陈奕迅', '男', '歌手', '中国香港');
INSERT INTO `singer_info` VALUES ('6', '林俊杰', '男', '歌手', '新加坡');
INSERT INTO `singer_info` VALUES ('7', '赵雷', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('8', 'Ed Sheeran', '男', '歌手', '美国');
INSERT INTO `singer_info` VALUES ('9', 'Coldplay', '', '组合', '英国');
INSERT INTO `singer_info` VALUES ('10', 'ZARD', '女', '组合', '日本');
INSERT INTO `singer_info` VALUES ('11', 'T-ara', '女', '团体', '韩国');
INSERT INTO `singer_info` VALUES ('13', 'Taylor Swift', '女', '歌手', '美国');
INSERT INTO `singer_info` VALUES ('14', '薛之谦', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('15', '毛不易', '男', '歌手', '中国');
INSERT INTO `singer_info` VALUES ('16', 'Ketty Perry', '女', '歌手', '美国');
INSERT INTO `singer_info` VALUES ('17', '杨宗纬', '男', '歌手', '中国台湾');

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
INSERT INTO `song_info` VALUES ('1005', '11', 'TIAMO', 'Dance', 'Chinese', 'songs/1005.mp3', 'images/T-ara.jpg');
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
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` char(11) DEFAULT '',
  `user_type` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1001', 'Eleven', 'x', '302966218@qq.com', '15005185996', '1');
INSERT INTO `user_info` VALUES ('1002', 'Evan', 'x', '2437277553@qq.com', '15005185996', '0');
INSERT INTO `user_info` VALUES ('1004', 'Mr.Fan', 'x', 'yifan_xu6@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1015', 'xyf1', 'x', 'yifan_xu10@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1016', 'xyf2', 'x', 'yifan_xu1@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1017', 'xyf3', 'x', 'yifan_xu3@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1018', 'xyf4', 'x', 'yifan_xu4@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1019', 'xyf5', 'x', 'yifan_xu5@163.com', null, '0');
INSERT INTO `user_info` VALUES ('1020', 'xyf7', 'x', 'yifan_xu7@163.com', null, '0');

-- ----------------------------
-- Table structure for `visit_records`
-- ----------------------------
DROP TABLE IF EXISTS `visit_records`;
CREATE TABLE `visit_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostname` varchar(20) DEFAULT NULL,
  `tmstamp` datetime DEFAULT NULL,
  `visiturl` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of visit_records
-- ----------------------------

-- ----------------------------
-- View structure for `song_list`
-- ----------------------------
DROP VIEW IF EXISTS `song_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_list` AS select `song_info`.`song_id` AS `song_id`,`song_info`.`song_name` AS `song_name`,`singer_info`.`singer_name` AS `singer_name`,`song_info`.`location` AS `location`,`song_info`.`cover_image` AS `cover_image` from (`song_info` left join `singer_info` on((`song_info`.`singer_id` = `singer_info`.`singer_id`))) ;

-- ----------------------------
-- Procedure structure for `creat_month_weather`
-- ----------------------------
DROP PROCEDURE IF EXISTS `creat_month_weather`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `creat_month_weather`(IN month_name VARCHAR(20))
BEGIN
SET @sql_create_table=CONCAT(
'CREATE TABLE ',month_name,'_weather', "(
`date_time`  date NOT NULL ,
`lowest_temperature`  float NULL DEFAULT NULL ,
`highest_temperature`  float NULL DEFAULT NULL ,
PRIMARY KEY (`date_time`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
ROW_FORMAT=DYNAMIC
");
PREPARE sql_create_table FROM @sql_create_table;
EXECUTE sql_create_table;
END
;;
DELIMITER ;
