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
/*Table structure for table `mobile_users` */

DROP TABLE IF EXISTS `mobile_users`;

CREATE TABLE `mobile_users` (
  `id` bigint NOT NULL COMMENT '主键id',
  `open_id` varchar(255) DEFAULT NULL COMMENT 'OpenId',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `gender` int DEFAULT NULL COMMENT '性别',
  `language` varchar(255) DEFAULT NULL COMMENT '语言',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `country` varchar(255) DEFAULT NULL COMMENT '区',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像',
  `union_id` bigint DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='移动端用户';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
