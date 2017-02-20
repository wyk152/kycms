/*
Navicat MySQL Data Transfer

Source Server         : dmpCMS
Source Server Version : 50711
Source Host           : 120.24.41.109:3306
Source Database       : dpcms

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-04-29 17:05:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_date` date NOT NULL,
  `login_name` varchar(32) NOT NULL,
  `modify_date` date DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `add_user_id` bigint(20) DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_s00mhdt1w0b4bc900jk5is3wp` (`login_name`),
  KEY `FK_q7b7oggixoobb4g24h0tikevt` (`add_user_id`),
  KEY `FK_8em0072529dv0vsr9lg9tlvfs` (`modify_user_id`),
  CONSTRAINT `FK_8em0072529dv0vsr9lg9tlvfs` FOREIGN KEY (`modify_user_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_q7b7oggixoobb4g24h0tikevt` FOREIGN KEY (`add_user_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '2016-02-16', 'admin', null, '$shiro1$SHA-256$500000$9kvhIZJMpXw1FWTZ0xirGg==$jqT0sITDusJ26kgXss/xJ5kRDaMEG1T028nKWzjO5LM=', null, null, null);

-- ----------------------------
-- Table structure for data_number
-- ----------------------------
DROP TABLE IF EXISTS `data_number`;
CREATE TABLE `data_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dim_type_id` bigint(20) DEFAULT NULL COMMENT '类型维度',
  `dim_datetime_id` bigint(20) DEFAULT NULL COMMENT '时间维度',
  `dim_geog_id` bigint(20) DEFAULT NULL COMMENT '地理位置维度',
  `dim_workshop_id` bigint(20) DEFAULT NULL COMMENT '厂房维度',
  `create_date` datetime DEFAULT NULL COMMENT '数据产生日期',
  `electric_quantity` int(11) DEFAULT '0' COMMENT '电量',
  `phase_a_power` int(11) DEFAULT NULL COMMENT 'A相功率',
  `phase_b_power` int(11) DEFAULT NULL COMMENT 'B相功率',
  `phase_c_power` int(11) DEFAULT NULL COMMENT 'C相功率',
  `current_a` int(11) DEFAULT NULL COMMENT 'A相电流',
  `current_b` int(11) DEFAULT NULL,
  `current_c` int(11) DEFAULT NULL,
  `voltage_a` int(11) DEFAULT NULL,
  `voltage_b` int(11) DEFAULT NULL COMMENT 'B相电压',
  `voltage_c` int(11) DEFAULT NULL,
  `water_instantaneous_current` int(11) DEFAULT NULL COMMENT '瞬时流量',
  `water_accumulate_current` int(11) DEFAULT NULL,
  `water_pressure` int(11) DEFAULT NULL,
  `gas_instantaneous_current` int(11) DEFAULT NULL,
  `gas_accumulate_current` int(11) DEFAULT NULL,
  `gas_pressure` int(11) DEFAULT NULL,
  `compressed_air_instantaneous_current` int(11) DEFAULT NULL,
  `compressed_air_accumulate_current` int(11) DEFAULT NULL,
  `compressed_air_pressure` int(11) DEFAULT NULL,
  `compressed_air_dew_point` int(11) DEFAULT NULL,
  `vapour_air_instantaneous_current` int(11) DEFAULT NULL,
  `vapour_air_accumulate_current` int(11) DEFAULT NULL,
  `vapour_pressure` int(11) DEFAULT NULL,
  `vapour_temperature` int(11) DEFAULT NULL,
  `air_conditioner_water_instantaneous_current` int(11) DEFAULT NULL,
  `air_conditioner_water_instantaneous_cooling` int(11) DEFAULT NULL,
  `air_conditioner_water_accumulate_current` int(11) DEFAULT NULL,
  `air_conditioner_water_accumulate_cooling` int(11) DEFAULT NULL,
  `air_conditioner_water_output_pressure` int(11) DEFAULT NULL,
  `air_conditioner_water_input_pressure` int(11) DEFAULT NULL,
  `air_conditioner_water_output_temperature` int(11) DEFAULT NULL,
  `air_conditioner_water_input_temperature` int(11) DEFAULT NULL,
  `warn_water_instantaneous_current` int(11) DEFAULT NULL,
  `warn_water_instantaneous_cooling` int(11) DEFAULT NULL,
  `warn_water_accumulate_current` int(11) DEFAULT NULL,
  `warn_water_accumulate_cooling` int(11) DEFAULT NULL,
  `warn_water_output_pressure` int(11) DEFAULT NULL,
  `warn_water_input_pressure` int(11) DEFAULT NULL,
  `warn_water_output_temperature` int(11) DEFAULT NULL,
  `warn_water_input_temperature` int(11) DEFAULT NULL,
  `env_temperature` int(11) DEFAULT NULL,
  `env_humidity` int(11) DEFAULT NULL,
  `electric_number` int(11) DEFAULT NULL,
  `gas_number` bigint(20) DEFAULT NULL,
  `production_number` bigint(20) DEFAULT NULL,
  `sale_number` bigint(20) DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL,
  `warn_number` int(11) DEFAULT NULL,
  `water_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dim_type_id` (`dim_type_id`),
  KEY `dim_datetime_id` (`dim_datetime_id`),
  KEY `dim_geog_id` (`dim_geog_id`),
  KEY `dim_workshop_id` (`dim_workshop_id`),
  KEY `create_date` (`create_date`) USING BTREE,
  CONSTRAINT `data_number_ibfk_1` FOREIGN KEY (`dim_type_id`) REFERENCES `dim_type` (`id`),
  CONSTRAINT `data_number_ibfk_2` FOREIGN KEY (`dim_datetime_id`) REFERENCES `dim_datatime` (`id`),
  CONSTRAINT `data_number_ibfk_3` FOREIGN KEY (`dim_geog_id`) REFERENCES `dim_geog` (`ID`),
  CONSTRAINT `data_number_ibfk_4` FOREIGN KEY (`dim_workshop_id`) REFERENCES `dim_workshop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据表\r\n';

-- ----------------------------
-- Records of data_number
-- ----------------------------
INSERT INTO `data_number` VALUES ('1', '1', '1', '4', '1', '2016-03-12 01:00:00', '0', '1', '111', '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `data_number` VALUES ('2', '1', '2', '4', '1', '2016-03-12 02:00:00', '0', '1', '1111', '33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `data_number` VALUES ('3', '1', '3', '4', '1', '2016-03-12 02:00:00', '0', '3', '11', '44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `data_number` VALUES ('4', '1', '4', '4', '1', '2016-03-12 02:00:00', '0', '55', '11', '545', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `data_number` VALUES ('5', '1', '5', '4', '1', '2016-03-12 02:00:00', '0', '4', '11', '66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `data_number` VALUES ('6', '1', '6', '4', '1', '2016-03-12 02:00:00', '0', '66', '11', '66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_date` date DEFAULT NULL,
  `add_user_id` bigint(20) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `enterprise_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ekx0hdo99g7w6fddrf0gw4fya` (`enterprise_id`),
  CONSTRAINT `FK_ekx0hdo99g7w6fddrf0gw4fya` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `type_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for dim_datatime
-- ----------------------------
DROP TABLE IF EXISTS `dim_datatime`;
CREATE TABLE `dim_datatime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` smallint(5) DEFAULT NULL,
  `month` smallint(5) DEFAULT NULL,
  `day` smallint(5) DEFAULT NULL,
  `hour` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `year` (`year`,`month`,`day`,`hour`) USING BTREE,
  KEY `year_2` (`year`) USING BTREE,
  KEY `month` (`month`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='时间维度';

-- ----------------------------
-- Records of dim_datatime
-- ----------------------------
INSERT INTO `dim_datatime` VALUES ('1', '2016', '3', '9', '1');
INSERT INTO `dim_datatime` VALUES ('2', '2016', '3', '10', '2');
INSERT INTO `dim_datatime` VALUES ('3', '2016', '3', '11', '3');
INSERT INTO `dim_datatime` VALUES ('4', '2016', '3', '12', '4');
INSERT INTO `dim_datatime` VALUES ('5', '2016', '3', '13', '5');
INSERT INTO `dim_datatime` VALUES ('6', '2016', '3', '14', '6');
INSERT INTO `dim_datatime` VALUES ('7', '2016', '3', '15', '7');

-- ----------------------------
-- Table structure for dim_geog
-- ----------------------------
DROP TABLE IF EXISTS `dim_geog`;
CREATE TABLE `dim_geog` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` smallint(1) DEFAULT NULL COMMENT '1 国家 2省份 3城市 4具体区街道',
  `name` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='地理位置维度';

-- ----------------------------
-- Records of dim_geog
-- ----------------------------
INSERT INTO `dim_geog` VALUES ('1', '1', '中国', null);
INSERT INTO `dim_geog` VALUES ('2', '2', '广东', '1');
INSERT INTO `dim_geog` VALUES ('3', '3', '广州', '2');
INSERT INTO `dim_geog` VALUES ('4', '3', '江门', '2');
INSERT INTO `dim_geog` VALUES ('5', '3', '清远', '2');

-- ----------------------------
-- Table structure for dim_type
-- ----------------------------
DROP TABLE IF EXISTS `dim_type`;
CREATE TABLE `dim_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='分类AB';

-- ----------------------------
-- Records of dim_type
-- ----------------------------
INSERT INTO `dim_type` VALUES ('1', '类型1');
INSERT INTO `dim_type` VALUES ('2', '类型2');

-- ----------------------------
-- Table structure for dim_workshop
-- ----------------------------
DROP TABLE IF EXISTS `dim_workshop`;
CREATE TABLE `dim_workshop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `dim_geog_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dim_geog_id` (`dim_geog_id`),
  CONSTRAINT `dim_workshop_ibfk_1` FOREIGN KEY (`dim_geog_id`) REFERENCES `dim_geog` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='厂房';

-- ----------------------------
-- Records of dim_workshop
-- ----------------------------
INSERT INTO `dim_workshop` VALUES ('1', '江门汽车厂', '4');
INSERT INTO `dim_workshop` VALUES ('2', '广州汽车厂', '3');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `default_post_id` bigint(20) DEFAULT NULL,
  `education_background` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `id_card` varchar(32) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `name` varchar(16) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `add_user_id` bigint(20) DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lsnx7na4u8ohrhoeag7un4wh3` (`account_id`),
  KEY `FK_lw5l1corp54gg3djht4t7w3tk` (`add_user_id`),
  KEY `FK_41gjyc8ldn8lgna1nleapohys` (`modify_user_id`),
  CONSTRAINT `FK_41gjyc8ldn8lgna1nleapohys` FOREIGN KEY (`modify_user_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_lsnx7na4u8ohrhoeag7un4wh3` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FK_lw5l1corp54gg3djht4t7w3tk` FOREIGN KEY (`add_user_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '2016-02-16', '2016-02-16', '1', null, null, null, null, null, 'dpCMS管理员', null, '1', null, null);

-- ----------------------------
-- Table structure for employee_posts
-- ----------------------------
DROP TABLE IF EXISTS `employee_posts`;
CREATE TABLE `employee_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sp3i43v8s8v09s6d1sen9w9k0` (`emp_id`),
  KEY `FK_6d23co2l5fax7t7ef8qh7pafu` (`post_id`),
  CONSTRAINT `FK_6d23co2l5fax7t7ef8qh7pafu` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `FK_sp3i43v8s8v09s6d1sen9w9k0` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_posts
-- ----------------------------
INSERT INTO `employee_posts` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_date` date NOT NULL,
  `add_user_id` bigint(20) NOT NULL,
  `email_address` varchar(128) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `num_of_employee` int(11) DEFAULT NULL,
  `register_address` varchar(128) DEFAULT NULL,
  `telephone` varchar(24) DEFAULT NULL,
  `property` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ccf9f5h0l6dmndjdt1d8qwfad` (`property`),
  CONSTRAINT `FK_ccf9f5h0l6dmndjdt1d8qwfad` FOREIGN KEY (`property`) REFERENCES `dictionary` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for function
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `crudo` int(11) NOT NULL,
  `ctrl_name` varchar(255) NOT NULL,
  `entity_package` varchar(128) NOT NULL,
  `impler` bigint(20) DEFAULT NULL,
  `js_url` varchar(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `request_uri` varchar(128) NOT NULL,
  `is_menu` tinyint(4) NOT NULL,
  `menu_level` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------
INSERT INTO `function` VALUES ('1', '1', '', '1', null, '1', '管理员霸气权限', '1', '0', '0');
INSERT INTO `function` VALUES ('2', '5', '1', '1', null, '1', 'ZK库存管理演示', '1', '1', '0');

-- ----------------------------
-- Table structure for hibernate_sequences
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequences
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(64) NOT NULL COMMENT '菜单名字',
  `URI` varchar(255) DEFAULT NULL COMMENT '连接',
  `LEVEL` smallint(255) DEFAULT NULL COMMENT '菜单级别',
  `WEIGHT` smallint(6) DEFAULT NULL COMMENT '菜单权重排序倒序',
  `ACCOUNT_ID` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `CREATE_USER` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `UPDATE_USER` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_accountid` (`ACCOUNT_ID`),
  CONSTRAINT `fk_accountid` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_date` date DEFAULT NULL,
  `add_user_id` bigint(20) DEFAULT NULL,
  `index_page` varchar(64) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `need_filter` int(11) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ru9pjtfmclknav7xa8833snpf` (`department_id`),
  CONSTRAINT `FK_ru9pjtfmclknav7xa8833snpf` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '2016-02-16', null, null, null, null, 'dpCms管理员', '0', null);

-- ----------------------------
-- Table structure for post_function
-- ----------------------------
DROP TABLE IF EXISTS `post_function`;
CREATE TABLE `post_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_menu` int(11) DEFAULT NULL,
  `fcuntion_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_q4gt5y7ojh7ougf2kd56rqnit` (`fcuntion_id`),
  KEY `FK_m8a085rrnwjc0erg69q1e1r3x` (`post_id`),
  CONSTRAINT `FK_m8a085rrnwjc0erg69q1e1r3x` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `FK_q4gt5y7ojh7ougf2kd56rqnit` FOREIGN KEY (`fcuntion_id`) REFERENCES `function` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_function
-- ----------------------------
INSERT INTO `post_function` VALUES ('1', '0', '1', '1');

-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE `tb_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `repertory_id` bigint(20) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_product
-- ----------------------------

-- ----------------------------
-- Table structure for tb_repertory
-- ----------------------------
DROP TABLE IF EXISTS `tb_repertory`;
CREATE TABLE `tb_repertory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tb_repertory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_repertory
-- ----------------------------
