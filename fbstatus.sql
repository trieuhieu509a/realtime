/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : fbstatus

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-06 15:18:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dishs
-- ----------------------------
DROP TABLE IF EXISTS `dishs`;
CREATE TABLE `dishs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `img` varchar(255) DEFAULT '1.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dishs
-- ----------------------------
INSERT INTO `dishs` VALUES ('1', 'Tteobokki truyền thống', '30000', '0', '1.jpg');
INSERT INTO `dishs` VALUES ('2', 'Tteobokki hải sản', '35000', '0', '2.jpg');
INSERT INTO `dishs` VALUES ('3', 'Ttebokki Phô mai', '45000', '0', '3.jpg');
INSERT INTO `dishs` VALUES ('4', 'Tteobokki Carry', '35000', '0', '4.jpg');
INSERT INTO `dishs` VALUES ('5', 'Kimbap thường', '25000', '0', '5.jpg');
INSERT INTO `dishs` VALUES ('6', 'Kimbap chiên', '30000', '0', '6.jpg');
INSERT INTO `dishs` VALUES ('7', 'Kimbap lắc phô mai', '40000', '0', '7.jpg');
INSERT INTO `dishs` VALUES ('8', 'Cơm trộn', '50000', '0', '8.jpg');
INSERT INTO `dishs` VALUES ('9', 'Mì Đen', '45000', '0', '9.jpg');
INSERT INTO `dishs` VALUES ('10', 'Bánh Gạo chiên', '25000', '0', '10.jpg');
INSERT INTO `dishs` VALUES ('11', 'Ngao sốt me', '40000', '0', '11.jpg');
INSERT INTO `dishs` VALUES ('12', 'Mỳ hải sản - mỳ đỏ', '60000', '0', '12.jpg');
INSERT INTO `dishs` VALUES ('13', 'Kimchi', '10000', '0', '13.jpg');
INSERT INTO `dishs` VALUES ('14', 'Coca', '10000', '0', '14.jpg');
INSERT INTO `dishs` VALUES ('15', 'Nước gạo - Nha Đam', '15000', '0', '15.jpg');

-- ----------------------------
-- Table structure for tables
-- ----------------------------
DROP TABLE IF EXISTS `tables`;
CREATE TABLE `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tables
-- ----------------------------
INSERT INTO `tables` VALUES ('1', 'Bàn 1', '0');
INSERT INTO `tables` VALUES ('2', 'Bàn 2', '0');
INSERT INTO `tables` VALUES ('3', 'Bàn 3', '0');
INSERT INTO `tables` VALUES ('4', 'Bàn 4', '0');
INSERT INTO `tables` VALUES ('5', 'Bàn 5', '0');
INSERT INTO `tables` VALUES ('6', 'Bàn 6', '0');
INSERT INTO `tables` VALUES ('7', 'Bàn 7', '0');
INSERT INTO `tables` VALUES ('8', 'Bàn 8', '0');
INSERT INTO `tables` VALUES ('9', 'Bàn 9', '0');
INSERT INTO `tables` VALUES ('10', 'Bàn 10', '0');
INSERT INTO `tables` VALUES ('11', 'Bàn 11', '0');
INSERT INTO `tables` VALUES ('12', 'Bàn 12', '0');
INSERT INTO `tables` VALUES ('13', 'Bàn 13', '0');
INSERT INTO `tables` VALUES ('14', 'Bàn 14', '0');
INSERT INTO `tables` VALUES ('15', 'Bàn 15', '0');
INSERT INTO `tables` VALUES ('16', 'Bàn 16', '0');
