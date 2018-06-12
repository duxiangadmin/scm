/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : scm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-12 11:01:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_login` varchar(20) DEFAULT NULL,
  `acc_name` varchar(20) DEFAULT NULL,
  `acc_pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', null, 'admin');
INSERT INTO `account` VALUES ('2', 'admin2', null, 'admin2');

-- ----------------------------
-- Table structure for `account_records`
-- ----------------------------
DROP TABLE IF EXISTS `account_records`;
CREATE TABLE `account_records` (
  `ar_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `ar_date` date DEFAULT NULL,
  `ar_order_id` varchar(36) DEFAULT NULL,
  `ar_bus_type` varchar(10) DEFAULT NULL,
  `ar_payable` decimal(12,2) DEFAULT NULL,
  `ar_paid` decimal(12,2) DEFAULT NULL,
  `ar_arrears` decimal(12,2) DEFAULT NULL,
  `ar_discount` decimal(12,2) DEFAULT NULL,
  `ar_attn` varchar(20) DEFAULT NULL,
  `ar_operator` int(11) DEFAULT NULL,
  `ar_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_records
-- ----------------------------
INSERT INTO `account_records` VALUES ('ar18da769c9ce042a9b443e4c04d4a795c', '4', '2018-06-13', 'boadd45aef0841437589f3fbb280837080', 'bo', '4.00', '4.00', '4.00', '-4.00', '4', '4', '4');
INSERT INTO `account_records` VALUES ('ar314a1904f5674c768717b0cebabe156e', '5', '2018-06-11', 'bobd7a0a7969d44868a1c5c8933092a188', 'bo', '22.00', '22.00', '0.00', '0.00', '22', '22', '22');
INSERT INTO `account_records` VALUES ('ar6edb2ed1bb014b43bace6d61f84d0887', '1', '2018-06-11', 'bo9997e2c8f5104d9caf2892588dc0d1f6', 'bo', '1.00', '1.00', '1.00', '-1.00', '1', '1', '1');
INSERT INTO `account_records` VALUES ('arb8014f7c0c30470097fced908987b990', '1', '2018-06-07', 'bocf27a2200ca0421eb1509ca6753df6b0', 'bo', '1.00', '1.00', '1.00', '-1.00', '1', '1', '1');
INSERT INTO `account_records` VALUES ('arf3d367621d7d4cf8b5f74fd7d8150ec8', '4', '2018-06-12', 'bo4da343ae342047e8b492abce81487b0d', 'bo', '100.00', '1.00', '99.00', '0.00', '123456', '123', '123456');

-- ----------------------------
-- Table structure for `buy_order`
-- ----------------------------
DROP TABLE IF EXISTS `buy_order`;
CREATE TABLE `buy_order` (
  `bo_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `bo_date` date DEFAULT NULL,
  `bo_payable` decimal(12,2) DEFAULT NULL,
  `bo_paid` decimal(12,2) DEFAULT NULL,
  `bo_arrears` decimal(12,2) DEFAULT NULL,
  `bo_original` varchar(20) DEFAULT NULL,
  `bo_remark` varchar(100) DEFAULT NULL,
  `bo_attn` varchar(20) DEFAULT NULL,
  `bo_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`bo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order
-- ----------------------------
INSERT INTO `buy_order` VALUES ('bo4da343ae342047e8b492abce81487b0d', '4', null, '2018-06-12', '100.00', '1.00', '99.00', '123456789', '123456', '123456', '123');
INSERT INTO `buy_order` VALUES ('bobd7a0a7969d44868a1c5c8933092a188', '5', null, '2018-06-11', '22.00', '22.00', '0.00', '22', '22', '22', '22');
INSERT INTO `buy_order` VALUES ('bocf27a2200ca0421eb1509ca6753df6b0', '1', null, '2018-06-07', '1.00', '1.00', '1.00', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `buy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `buy_order_detail`;
CREATE TABLE `buy_order_detail` (
  `bod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `bod_amount` int(11) DEFAULT NULL,
  `bod_buy_price` decimal(12,2) DEFAULT NULL,
  `bod_total_price` decimal(12,2) DEFAULT NULL,
  `bo_id` varchar(36) DEFAULT NULL,
  `bod_imei_list` text,
  PRIMARY KEY (`bod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order_detail
-- ----------------------------
INSERT INTO `buy_order_detail` VALUES ('11b8c9c075e14aa8ae8a8352200d655a', '2', 'note5', '部', null, '2', '1', '22.00', '22.00', 'bo4da343ae342047e8b492abce81487b0d', '3333');
INSERT INTO `buy_order_detail` VALUES ('20b165e21cdc4390b501f13b86f35de2', '1', 'note4', '部', null, '1', '1', '22.00', '22.00', 'bo9997e2c8f5104d9caf2892588dc0d1f6', '3333');
INSERT INTO `buy_order_detail` VALUES ('32ce908720774afd8037bf44f0c973e7', '1', 'note4', '部', null, '1', '1', '22.00', '22.00', 'bocf27a2200ca0421eb1509ca6753df6b0', '3333');
INSERT INTO `buy_order_detail` VALUES ('af03127f1740430c990b742f4c70557b', '1', 'note4', '部', null, '1', '1', '22.00', '22.00', 'bo4da343ae342047e8b492abce81487b0d', '3333');
INSERT INTO `buy_order_detail` VALUES ('d8bd3c8c2e8e48fe947bbfb8e2b772c7', '2', 'note5', '部', null, '2', '1', '22.00', '22.00', 'bobd7a0a7969d44868a1c5c8933092a188', '3333');
INSERT INTO `buy_order_detail` VALUES ('edefe4019d644dd1baab71a796e6bf8f', '1', 'note4', '部', null, '1', '1', '22.00', '22.00', 'boadd45aef0841437589f3fbb280837080', '3333');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_Id` varchar(36) NOT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `goods_store` int(11) DEFAULT NULL,
  `goods_limit` int(11) DEFAULT NULL,
  `goods_commission` decimal(2,2) DEFAULT NULL,
  `goods_producer` varchar(50) DEFAULT NULL,
  `goods_remark` varchar(100) DEFAULT NULL,
  `goods_sel_price` decimal(12,2) DEFAULT NULL,
  `goods_buy_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`goods_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', 'note6', '部', null, '3', null, null, null, null, 'blue note5', '4500.00', '4000.00');

-- ----------------------------
-- Table structure for `return_order`
-- ----------------------------
DROP TABLE IF EXISTS `return_order`;
CREATE TABLE `return_order` (
  `ro_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `ro_date` date DEFAULT NULL,
  `ro_payable` decimal(12,2) DEFAULT NULL,
  `ro_paid` decimal(12,2) DEFAULT NULL,
  `ro_remark` varchar(100) DEFAULT NULL,
  `ro_attn` varchar(20) DEFAULT NULL,
  `ro_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order
-- ----------------------------

-- ----------------------------
-- Table structure for `return_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `return_order_detail`;
CREATE TABLE `return_order_detail` (
  `rod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `rod_amount` int(11) DEFAULT NULL,
  `rod_return_price` decimal(12,2) DEFAULT NULL,
  `rod_total_price` decimal(12,2) DEFAULT NULL,
  `rod_imei_list` text,
  `ro_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`rod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `store_house`
-- ----------------------------
DROP TABLE IF EXISTS `store_house`;
CREATE TABLE `store_house` (
  `sh_id` varchar(10) NOT NULL,
  `sh_name` varchar(20) DEFAULT NULL,
  `sh_responsible` varchar(20) DEFAULT NULL,
  `sh_phone` varchar(11) DEFAULT NULL,
  `sh_address` varchar(50) DEFAULT NULL,
  `sh_type` varchar(10) DEFAULT NULL,
  `sh_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_house
-- ----------------------------
INSERT INTO `store_house` VALUES ('1', '主仓库', null, null, '广州', null, null);
INSERT INTO `store_house` VALUES ('2', '分仓库', null, null, '广州', null, null);
INSERT INTO `store_house` VALUES ('3', '杭州库', null, '', '湖北省', null, null);

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(20) DEFAULT NULL,
  `sup_linkman` varchar(20) DEFAULT NULL,
  `sup_phone` varchar(11) DEFAULT NULL,
  `sup_address` varchar(100) DEFAULT NULL,
  `sup_remark` varchar(100) DEFAULT NULL,
  `sup_pay` decimal(12,2) DEFAULT NULL,
  `sup_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '苹果供应商', '小张', '12388888887', '广州花都', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('2', '三星供应商', '小王', '12388888888', '广州增城', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('3', '华为供应商', '小王', '12388888889', '广东深圳', '一级供应商', '0.00', '2');
INSERT INTO `supplier` VALUES ('4', 'TCL供应商', '小王', '12388888666', '广州增城', '普通供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('5', 'Nokia供应商', '小王', '12388888777', '广东深圳', '一级供应商', '0.00', '2');

-- ----------------------------
-- Table structure for `sys_param`
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `sys_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_param_field` varchar(50) DEFAULT NULL,
  `sys_param_value` varchar(500) DEFAULT NULL,
  `sys_param_text` varchar(50) DEFAULT NULL,
  `sys_param_type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`sys_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'shId', 'select s.sh_id as sys_param_value,s.sh_name as sys_param_text from store_house s', null, '1');
INSERT INTO `sys_param` VALUES ('2', 'supType', '1', '一级供应商', null);
INSERT INTO `sys_param` VALUES ('3', 'supType', '2', '二级供应商', null);
INSERT INTO `sys_param` VALUES ('4', 'supType', '3', '普通供应商', null);
INSERT INTO `sys_param` VALUES ('5', 'goodsColor', '1', '红色', null);
INSERT INTO `sys_param` VALUES ('6', 'goodsColor', '2', '绿色', null);
INSERT INTO `sys_param` VALUES ('7', 'goodsColor', '3', '蓝色', null);
