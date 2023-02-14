/*
SQLyog Professional v12.09 (64 bit)
MySQL - 8.0.20 : Database - pikachu-okr
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */


/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2020-12-22 00:12:02','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2020-12-22 00:12:02','',NULL,'初始化密码 123456');
insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2020-12-22 00:12:02','',NULL,'深色主题theme-dark，浅色主题theme-light');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','徐州云思特',0,'张','15888888888','yunsite369@126.com','0','0','admin','2020-12-22 00:11:38','admin','2021-05-13 20:54:14');
insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (201,100,'0,100','技术中心',1,NULL,NULL,NULL,'0','0','admin','2021-06-22 17:14:41','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2020-12-22 00:11:59','',NULL,'性别男');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,2,'女','1','sys_user_sex','','','N','0','admin','2020-12-22 00:11:59','',NULL,'性别女');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,3,'未知','2','sys_user_sex','','','N','0','admin','2020-12-22 00:11:59','',NULL,'性别未知');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2020-12-22 00:11:59','',NULL,'显示菜单');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2020-12-22 00:11:59','',NULL,'隐藏菜单');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2020-12-22 00:11:59','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2020-12-22 00:12:00','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2020-12-22 00:12:00','',NULL,'默认分组');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2020-12-22 00:12:00','',NULL,'系统分组');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2020-12-22 00:12:00','',NULL,'系统默认是');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (13,2,'否','N','sys_yes_no','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'系统默认否');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2020-12-22 00:12:00','',NULL,'通知');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (15,2,'公告','2','sys_notice_type','','success','N','0','admin','2020-12-22 00:12:00','',NULL,'公告');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2020-12-22 00:12:00','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'关闭状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (18,1,'新增','1','sys_oper_type','','info','N','0','admin','2020-12-22 00:12:00','',NULL,'新增操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (19,2,'修改','2','sys_oper_type','','info','N','0','admin','2020-12-22 00:12:00','',NULL,'修改操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'删除操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2020-12-22 00:12:00','',NULL,'授权操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2020-12-22 00:12:00','',NULL,'导出操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2020-12-22 00:12:00','',NULL,'导入操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'强退操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2020-12-22 00:12:00','',NULL,'生成操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'清空操作');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (27,1,'成功','0','sys_common_status','','primary','N','0','admin','2020-12-22 00:12:00','',NULL,'正常状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (28,2,'失败','1','sys_common_status','','danger','N','0','admin','2020-12-22 00:12:00','',NULL,'停用状态');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,2,'是','2','sys_del_status',NULL,NULL,'N','0','admin','2020-12-30 22:11:37','admin','2021-05-17 17:29:10',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (101,1,'否','0','sys_del_status',NULL,NULL,'N','0','admin','2020-12-30 22:11:46','',NULL,NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (109,0,'审核中','1','sys_approval_status',NULL,NULL,'N','0','admin','2021-04-19 11:30:10','',NULL,'审核中');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (110,1,'审核通过','2','sys_approval_status',NULL,NULL,'N','0','admin','2021-04-19 11:30:23','',NULL,'审核通过');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (111,3,'驳回','3','sys_approval_status',NULL,NULL,'N','0','admin','2021-04-19 11:30:36','',NULL,'驳回');
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (282,1,'固定模板内容','1','message_content_type',NULL,NULL,'N','0','admin','2021-07-10 17:24:15','admin','2021-07-10 17:24:38',NULL);
insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (283,2,'自定义内容','2','message_content_type',NULL,NULL,'N','0','admin','2021-07-10 17:24:25','',NULL,NULL);

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2020-12-22 00:11:57','',NULL,'用户性别列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'菜单状态','sys_show_hide','0','admin','2020-12-22 00:11:57','',NULL,'菜单状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'系统开关','sys_normal_disable','0','admin','2020-12-22 00:11:57','',NULL,'系统开关列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (4,'任务状态','sys_job_status','0','admin','2020-12-22 00:11:57','',NULL,'任务状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (5,'任务分组','sys_job_group','0','admin','2020-12-22 00:11:57','',NULL,'任务分组列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (6,'系统是否','sys_yes_no','0','admin','2020-12-22 00:11:57','',NULL,'系统是否列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (7,'通知类型','sys_notice_type','0','admin','2020-12-22 00:11:57','',NULL,'通知类型列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (8,'通知状态','sys_notice_status','0','admin','2020-12-22 00:11:57','',NULL,'通知状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (9,'操作类型','sys_oper_type','0','admin','2020-12-22 00:11:57','',NULL,'操作类型列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (10,'系统状态','sys_common_status','0','admin','2020-12-22 00:11:57','',NULL,'登录状态列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,'删除状态','sys_del_status','0','admin','2020-12-30 22:11:10','',NULL,'书籍删除标记');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (103,'审核状态','sys_approval_status','0','admin','2021-04-19 11:29:40','',NULL,'订单审批列表');
insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (149,'消息内容类型','message_content_type','0','admin','2021-07-10 17:23:45','admin','2021-07-10 17:24:00','消息模板使用');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统访问记录';

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `STATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2061 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统管理',0,4,'system',NULL,1,0,'M','0','0','','system','admin','2021-07-09 14:32:19','admin','2021-07-09 19:35:54','系统管理目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'系统监控',0,2,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2021-07-09 14:32:19','',NULL,'系统监控目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (3,'系统工具',0,3,'tool',NULL,1,0,'M','0','0','','tool','admin','2021-07-09 14:32:19','',NULL,'系统工具目录');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (100,'用户管理',1,1,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2021-07-09 14:32:19','',NULL,'用户管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (101,'角色管理',1,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2021-07-09 14:32:19','',NULL,'角色管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (102,'菜单管理',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2021-07-09 14:32:19','',NULL,'菜单管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (103,'部门管理',1,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2021-07-09 14:32:19','',NULL,'部门管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (104,'岗位管理',1,5,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2021-07-09 14:32:19','',NULL,'岗位管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (105,'字典管理',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2021-07-09 14:32:19','',NULL,'字典管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (106,'参数设置',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2021-07-09 14:32:19','',NULL,'参数设置菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (107,'通知公告',1,8,'notice','system/notice/index',1,0,'C','0','0','system:notice:list','message','admin','2021-07-09 14:32:19','',NULL,'通知公告菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (108,'日志管理',1,9,'log','',1,0,'M','0','0','','log','admin','2021-07-09 14:32:19','',NULL,'日志管理菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (109,'在线用户',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2021-07-09 14:32:19','',NULL,'在线用户菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (111,'数据监控',2,3,'druid','monitor/druid/index',1,0,'C','0','0','monitor:druid:list','druid','admin','2021-07-09 14:32:19','',NULL,'数据监控菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (112,'服务监控',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2021-07-09 14:32:19','',NULL,'服务监控菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (113,'缓存监控',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2021-07-09 14:32:19','',NULL,'缓存监控菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (114,'表单构建',3,1,'build','tool/build/index',1,0,'C','0','0','tool:build:list','build','admin','2021-07-09 14:32:19','',NULL,'表单构建菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (115,'代码生成',3,2,'gen','tool/gen/index',1,0,'C','0','0','tool:gen:list','code','admin','2021-07-09 14:32:19','',NULL,'代码生成菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (116,'系统接口',3,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2021-07-09 14:32:19','',NULL,'系统接口菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (500,'操作日志',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2021-07-09 14:32:19','',NULL,'操作日志菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2021-07-09 14:32:19','',NULL,'登录日志菜单');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1001,'用户查询',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1002,'用户新增',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1003,'用户修改',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1004,'用户删除',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1005,'用户导出',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1006,'用户导入',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1007,'重置密码',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1008,'角色查询',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1009,'角色新增',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1010,'角色修改',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1011,'角色删除',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1012,'角色导出',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1013,'菜单查询',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1014,'菜单新增',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1015,'菜单修改',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1016,'菜单删除',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1017,'部门查询',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1018,'部门新增',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1019,'部门修改',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1020,'部门删除',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1021,'岗位查询',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1022,'岗位新增',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1023,'岗位修改',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1024,'岗位删除',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1025,'岗位导出',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1026,'字典查询',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1027,'字典新增',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1028,'字典修改',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1029,'字典删除',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1030,'字典导出',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1031,'参数查询',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1032,'参数新增',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1033,'参数修改',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1034,'参数删除',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1035,'参数导出',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1036,'公告查询',107,1,'#','',1,0,'F','0','0','system:notice:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1037,'公告新增',107,2,'#','',1,0,'F','0','0','system:notice:add','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1038,'公告修改',107,3,'#','',1,0,'F','0','0','system:notice:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1039,'公告删除',107,4,'#','',1,0,'F','0','0','system:notice:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1040,'操作查询',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1041,'操作删除',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1042,'日志导出',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1043,'登录查询',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1044,'登录删除',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1045,'日志导出',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1046,'在线查询',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1047,'批量强退',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1048,'单条强退',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1055,'生成查询',115,1,'#','',1,0,'F','0','0','tool:gen:query','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1056,'生成修改',115,2,'#','',1,0,'F','0','0','tool:gen:edit','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1057,'生成删除',115,3,'#','',1,0,'F','0','0','tool:gen:remove','#','admin','2021-07-09 14:32:19','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1058,'导入代码',115,2,'#','',1,0,'F','0','0','tool:gen:import','#','admin','2021-07-09 14:32:20','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1059,'预览代码',115,4,'#','',1,0,'F','0','0','tool:gen:preview','#','admin','2021-07-09 14:32:20','',NULL,'');
insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`is_frame`,`is_cache`,`menu_type`,`visible`,`STATUS`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1060,'生成代码',115,5,'#','',1,0,'F','0','0','tool:gen:code','#','admin','2021-07-09 14:32:20','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','总经理',1,'0','admin','2020-12-22 00:11:42','admin','2021-04-19 11:18:36','');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2020-12-22 00:11:44','',NULL,'超级管理员');
insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (102,'管理员','manager',2,'4',1,1,'0','0','admin','2021-06-22 17:09:03','','2021-06-22 17:11:43',NULL);
insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (103,'业务员','biz',4,'5',1,1,'0','0','admin','2021-06-22 17:17:35','admin','2021-06-22 17:20:18',NULL);

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,100);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,101);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,102);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,103);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,104);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,108);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,109);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,500);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,501);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1001);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1002);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1003);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1004);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1005);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1006);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1007);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1008);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1013);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1017);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1018);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1019);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1020);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1021);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1022);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1023);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1024);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1025);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1040);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1041);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1042);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1043);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1044);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1045);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1046);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1047);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,1048);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2070);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2071);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2072);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2073);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2074);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2075);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2076);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2077);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2078);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2079);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2080);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2081);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2082);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2083);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2095);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2101);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2102);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2103);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2104);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2105);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2106);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (102,2107);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2070);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2071);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2072);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2076);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2077);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2078);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2082);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2083);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2095);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2101);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2102);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2106);
insert  into `sys_role_menu`(`role_id`,`menu_id`) values (103,2107);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,100,'admin','管理员','00','admin@163.com','15888888888','0','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2021-05-22 09:06:37','admin','2021-05-22 09:06:37','',NULL,'超级管理员');
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,100,'franker','弗兰克','00','franker@qq.com','15666666666','0','','$2a$10$BIeBKo.wAXmb10yHt1BI2eD0hBEjUNHg7HjSgGgmwwI8J20j0FJay','0','2','127.0.0.1','2021-05-22 09:11:41','admin','2021-05-22 09:06:37','admin','2021-06-11 12:01:17','测试员');
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (110,201,'xznky','管理员','00','','','0','','$2a$10$3gxuNKkC5jVr0JsRChL/xu0.2vykL7MtKdxygH4dkyZHvbrs79/aW','0','0','',NULL,'admin','2021-06-22 17:10:50','admin','2021-06-22 17:15:06',NULL);
insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (111,201,'test','测试员','00','','','0','','$2a$10$JH6IneJntQ3MLKyVklzdu.FQndxPLSDOOvgmaNEIPakufumIc56kS','0','0','',NULL,'admin','2021-06-22 17:18:55','',NULL,NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1);
insert  into `sys_user_role`(`user_id`,`role_id`) values (110,102);
insert  into `sys_user_role`(`user_id`,`role_id`) values (111,103);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
