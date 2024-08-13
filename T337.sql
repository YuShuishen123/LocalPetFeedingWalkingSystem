/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t337`;
CREATE DATABASE IF NOT EXISTS `t337` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t337`;

DROP TABLE IF EXISTS `aichong`;
CREATE TABLE IF NOT EXISTS `aichong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `aichong_name` varchar(200) DEFAULT NULL COMMENT '爱宠名称  Search111 ',
  `aichong_uuid_number` varchar(200) DEFAULT NULL COMMENT '爱宠编号',
  `aichong_photo` varchar(200) DEFAULT NULL COMMENT '爱宠照片',
  `aichong_types` int DEFAULT NULL COMMENT '爱宠类型 Search111',
  `aichong_video` varchar(200) DEFAULT NULL COMMENT '爱宠视频',
  `aichong_content` longtext COMMENT '爱宠介绍 ',
  `aichong_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='爱宠天地';

DELETE FROM `aichong`;
INSERT INTO `aichong` (`id`, `aichong_name`, `aichong_uuid_number`, `aichong_photo`, `aichong_types`, `aichong_video`, `aichong_content`, `aichong_delete`, `insert_time`, `create_time`) VALUES
	(1, '爱宠名称1', '1680752277697', 'upload/chongwu1.jpg', 2, 'upload/video.mp4', '爱宠介绍1', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(2, '爱宠名称2', '1680752277627', 'upload/chongwu2.jpg', 4, 'upload/video.mp4', '爱宠介绍2', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(3, '爱宠名称3', '1680752277630', 'upload/chongwu3.jpg', 3, 'upload/video.mp4', '爱宠介绍3', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(4, '爱宠名称4', '1680752277688', 'upload/chongwu4.jpg', 4, 'upload/video.mp4', '爱宠介绍4', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(5, '爱宠名称5', '1680752277663', 'upload/chongwu5.jpg', 4, 'upload/video.mp4', '爱宠介绍5', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(6, '爱宠名称6', '1680752277666', 'upload/chongwu6.jpg', 1, 'upload/video.mp4', '爱宠介绍6', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(7, '爱宠名称7', '1680752277623', 'upload/chongwu7.jpg', 1, 'upload/video.mp4', '爱宠介绍7', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(8, '爱宠名称8', '1680752277649', 'upload/chongwu8.jpg', 4, 'upload/video.mp4', '爱宠介绍8', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(9, '爱宠名称9', '1680752277632', 'upload/chongwu9.jpg', 1, 'upload/video.mp4', '爱宠介绍9', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(10, '爱宠名称10', '1680752277680', 'upload/chongwu10.jpg', 4, 'upload/video.mp4', '爱宠介绍10', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(11, '爱宠名称11', '1680752277640', 'upload/chongwu11.jpg', 4, 'upload/video.mp4', '爱宠介绍11', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(12, '爱宠名称12', '1680752277697', 'upload/chongwu12.jpg', 3, 'upload/video.mp4', '爱宠介绍12', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(13, '爱宠名称13', '1680752277690', 'upload/chongwu13.jpg', 3, 'upload/video.mp4', '爱宠介绍13', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(14, '爱宠名称14', '1680752277625', 'upload/chongwu14.jpg', 1, 'upload/video.mp4', '爱宠介绍14', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57');

DROP TABLE IF EXISTS `chongwu`;
CREATE TABLE IF NOT EXISTS `chongwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '宠物编号',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_address` varchar(200) DEFAULT NULL COMMENT '宠物地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `chongwu_types` int DEFAULT NULL COMMENT '宠物类型 Search111',
  `chongwu_content` longtext COMMENT '宠物介绍 ',
  `chongwu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='宠物';

DELETE FROM `chongwu`;
INSERT INTO `chongwu` (`id`, `chongwu_name`, `chongwu_uuid_number`, `chongwu_photo`, `chongwu_address`, `zan_number`, `cai_number`, `chongwu_types`, `chongwu_content`, `chongwu_delete`, `insert_time`, `create_time`) VALUES
	(1, '宠物名称1', '1680752277634', 'upload/chongwu1.jpg', '宠物地点1', 296, 406, 2, '宠物介绍1', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(2, '宠物名称2', '1680752277664', 'upload/chongwu2.jpg', '宠物地点2', 347, 448, 3, '宠物介绍2', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(3, '宠物名称3', '1680752277632', 'upload/chongwu3.jpg', '宠物地点3', 229, 490, 2, '宠物介绍3', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(4, '宠物名称4', '1680752277652', 'upload/chongwu4.jpg', '宠物地点4', 353, 43, 1, '宠物介绍4', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(5, '宠物名称5', '1680752277622', 'upload/chongwu5.jpg', '宠物地点5', 454, 488, 2, '宠物介绍5', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(6, '宠物名称6', '1680752277650', 'upload/chongwu6.jpg', '宠物地点6', 244, 114, 1, '宠物介绍6', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(7, '宠物名称7', '1680752277627', 'upload/chongwu7.jpg', '宠物地点7', 375, 72, 1, '宠物介绍7', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(8, '宠物名称8', '1680752277676', 'upload/chongwu8.jpg', '宠物地点8', 43, 27, 3, '宠物介绍8', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(9, '宠物名称9', '1680752277681', 'upload/chongwu9.jpg', '宠物地点9', 294, 495, 4, '宠物介绍9', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(10, '宠物名称10', '1680752277674', 'upload/chongwu10.jpg', '宠物地点10', 328, 19, 3, '宠物介绍10', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(11, '宠物名称11', '1680752277688', 'upload/chongwu11.jpg', '宠物地点11', 286, 190, 2, '宠物介绍11', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(12, '宠物名称12', '1680752277704', 'upload/chongwu12.jpg', '宠物地点12', 380, 73, 3, '宠物介绍12', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(13, '宠物名称13', '1680752277694', 'upload/chongwu13.jpg', '宠物地点13', 354, 154, 1, '宠物介绍13', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(14, '宠物名称14', '1680752277620', 'upload/chongwu14.jpg', '宠物地点14', 459, 123, 3, '宠物介绍14', 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57');

DROP TABLE IF EXISTS `chongwu_collection`;
CREATE TABLE IF NOT EXISTS `chongwu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongwu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='宠物收藏';

DELETE FROM `chongwu_collection`;
INSERT INTO `chongwu_collection` (`id`, `chongwu_id`, `yonghu_id`, `chongwu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(2, 2, 1, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(3, 3, 2, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(4, 4, 3, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(5, 5, 2, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(6, 6, 3, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(7, 7, 2, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(8, 8, 2, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(9, 9, 3, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(10, 10, 1, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(11, 11, 1, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(12, 12, 3, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(13, 13, 1, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(14, 14, 3, 1, '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(16, 14, 1, 1, '2023-04-06 03:43:57', '2023-04-06 03:43:57');

DROP TABLE IF EXISTS `chongwu_liuyan`;
CREATE TABLE IF NOT EXISTS `chongwu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_id` int DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='宠物留言';

DELETE FROM `chongwu_liuyan`;
INSERT INTO `chongwu_liuyan` (`id`, `chongwu_id`, `yonghu_id`, `chongwu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-06 03:37:57', '回复信息1', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(2, 2, 2, '留言内容2', '2023-04-06 03:37:57', '回复信息2', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(3, 3, 3, '留言内容3', '2023-04-06 03:37:57', '回复信息3', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(4, 4, 1, '留言内容4', '2023-04-06 03:37:57', '回复信息4', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(5, 5, 1, '留言内容5', '2023-04-06 03:37:57', '回复信息5', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(6, 6, 3, '留言内容6', '2023-04-06 03:37:57', '回复信息6', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(7, 7, 2, '留言内容7', '2023-04-06 03:37:57', '回复信息7', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(8, 8, 3, '留言内容8', '2023-04-06 03:37:57', '回复信息8', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(9, 9, 3, '留言内容9', '2023-04-06 03:37:57', '回复信息9', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(10, 10, 3, '留言内容10', '2023-04-06 03:37:57', '回复信息10', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(11, 11, 1, '留言内容11', '2023-04-06 03:37:57', '回复信息11', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(12, 12, 1, '留言内容12', '2023-04-06 03:37:57', '回复信息12', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(13, 13, 2, '留言内容13', '2023-04-06 03:37:57', '回复信息13', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(14, 14, 2, '留言内容14', '2023-04-06 03:37:57', '回复信息14', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(15, 14, 1, ' 呀呀呀 ', '2023-04-06 03:45:58', 'sad按时sad', '2023-04-06 03:46:19', '2023-04-06 03:45:58');

DROP TABLE IF EXISTS `chongwu_yuyue`;
CREATE TABLE IF NOT EXISTS `chongwu_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `chongwu_id` int DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongwu_yuyue_text` longtext COMMENT '报名理由',
  `chongwu_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `chongwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `chongwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `chongwu_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '宠物报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='宠物预约';

DELETE FROM `chongwu_yuyue`;
INSERT INTO `chongwu_yuyue` (`id`, `chongwu_yuyue_uuid_number`, `chongwu_id`, `yonghu_id`, `chongwu_yuyue_text`, `chongwu_yuyue_yesno_types`, `chongwu_yuyue_yesno_text`, `chongwu_yuyue_shenhe_time`, `chongwu_yuyue_time`, `insert_time`, `create_time`) VALUES
	(1, '1680752277695', 1, 3, '报名理由1', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(2, '1680752277638', 2, 2, '报名理由2', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(3, '1680752277688', 3, 3, '报名理由3', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(4, '1680752277624', 4, 2, '报名理由4', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(5, '1680752277714', 5, 1, '报名理由5', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(6, '1680752277686', 6, 2, '报名理由6', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(7, '1680752277629', 7, 2, '报名理由7', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(8, '1680752277684', 8, 2, '报名理由8', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(9, '1680752277693', 9, 2, '报名理由9', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(10, '1680752277657', 10, 3, '报名理由10', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(11, '1680752277635', 11, 2, '报名理由11', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(12, '1680752277643', 12, 1, '报名理由12', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(13, '1680752277685', 13, 2, '报名理由13', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(14, '1680752277655', 14, 2, '报名理由14', 1, NULL, NULL, '2023-04-06 03:37:57', '2023-04-06 03:37:57', '2023-04-06 03:37:57'),
	(15, '1680752653034', 14, 1, '我要喂养', 2, '哈多', '2023-04-06 03:46:28', '2023-04-07 03:43:58', '2023-04-06 03:44:13', '2023-04-06 03:44:13'),
	(16, '1722741410619', 14, 1, '11', 1, NULL, NULL, '2024-08-04 03:16:46', '2024-08-04 03:16:51', '2024-08-04 03:16:51');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-06 03:37:05'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-06 03:37:05'),
	(3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-06 03:37:05'),
	(4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-06 03:37:05'),
	(5, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2023-04-06 03:37:05'),
	(6, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2023-04-06 03:37:05'),
	(7, 'aichong_types', '爱宠类型', 1, '爱宠类型1', NULL, NULL, '2023-04-06 03:37:05'),
	(8, 'aichong_types', '爱宠类型', 2, '爱宠类型2', NULL, NULL, '2023-04-06 03:37:05'),
	(9, 'aichong_types', '爱宠类型', 3, '爱宠类型3', NULL, NULL, '2023-04-06 03:37:05'),
	(10, 'aichong_types', '爱宠类型', 4, '爱宠类型4', NULL, NULL, '2023-04-06 03:37:05'),
	(11, 'chongwu_types', '宠物类型', 1, '宠物类型1', NULL, NULL, '2023-04-06 03:37:05'),
	(12, 'chongwu_types', '宠物类型', 2, '宠物类型2', NULL, NULL, '2023-04-06 03:37:05'),
	(13, 'chongwu_types', '宠物类型', 3, '宠物类型3', NULL, NULL, '2023-04-06 03:37:05'),
	(14, 'chongwu_types', '宠物类型', 4, '宠物类型4', NULL, NULL, '2023-04-06 03:37:05'),
	(15, 'chongwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-06 03:37:05'),
	(16, 'chongwu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-06 03:37:05'),
	(17, 'chongwu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-06 03:37:05'),
	(18, 'chongwu_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-04-06 03:37:05'),
	(19, 'chongwu_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-04-06 03:37:05'),
	(20, 'chongwu_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-04-06 03:37:05');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int NOT NULL COMMENT '资讯类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='宠物资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯名称1', 'upload/news1.jpg', 2, '2023-04-06 03:37:57', '资讯详情1', '2023-04-06 03:37:57'),
	(2, '资讯名称2', 'upload/news2.jpg', 2, '2023-04-06 03:37:57', '资讯详情2', '2023-04-06 03:37:57'),
	(3, '资讯名称3', 'upload/news3.jpg', 2, '2023-04-06 03:37:57', '资讯详情3', '2023-04-06 03:37:57'),
	(4, '资讯名称4', 'upload/news4.jpg', 2, '2023-04-06 03:37:57', '资讯详情4', '2023-04-06 03:37:57'),
	(5, '资讯名称5', 'upload/news5.jpg', 2, '2023-04-06 03:37:57', '资讯详情5', '2023-04-06 03:37:57'),
	(6, '资讯名称6', 'upload/news6.jpg', 1, '2023-04-06 03:37:57', '资讯详情6', '2023-04-06 03:37:57'),
	(7, '资讯名称7', 'upload/news7.jpg', 2, '2023-04-06 03:37:57', '资讯详情7', '2023-04-06 03:37:57'),
	(8, '资讯名称8', 'upload/news8.jpg', 2, '2023-04-06 03:37:57', '资讯详情8', '2023-04-06 03:37:57'),
	(9, '资讯名称9', 'upload/news9.jpg', 1, '2023-04-06 03:37:57', '资讯详情9', '2023-04-06 03:37:57'),
	(10, '资讯名称10', 'upload/news10.jpg', 1, '2023-04-06 03:37:57', '资讯详情10', '2023-04-06 03:37:57'),
	(11, '资讯名称11', 'upload/news11.jpg', 1, '2023-04-06 03:37:57', '资讯详情11', '2023-04-06 03:37:57'),
	(12, '资讯名称12', 'upload/news12.jpg', 1, '2023-04-06 03:37:57', '资讯详情12', '2023-04-06 03:37:57'),
	(13, '资讯名称13', 'upload/news13.jpg', 2, '2023-04-06 03:37:57', '资讯详情13', '2023-04-06 03:37:57'),
	(14, '资讯名称14', 'upload/news14.jpg', 2, '2023-04-06 03:37:57', '资讯详情14', '2023-04-06 03:37:57');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'g7fjtxwdrp1akjph6ftxgulwcne3a33k', '2023-04-06 03:40:19', '2024-08-04 04:15:28'),
	(2, 1, 'a1', 'yonghu', '用户', '8p0dagd9zmy9zs678wfazrkqeivo7zi6', '2023-04-06 03:41:27', '2024-08-04 04:16:33');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-06 03:37:05');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-04-06 03:37:57'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 1, '2023-04-06 03:37:57'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 2, '2023-04-06 03:37:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
