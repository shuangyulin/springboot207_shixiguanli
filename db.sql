/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shixiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shixiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shixiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/shixiguanlixitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/shixiguanlixitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/shixiguanlixitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-25 09:40:28'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-25 09:40:28'),(3,'yuanxi_types','院系',1,'院系1',NULL,NULL,'2022-03-25 09:40:28'),(4,'yuanxi_types','院系',2,'院系2',NULL,NULL,'2022-03-25 09:40:28'),(5,'yuanxi_types','院系',3,'院系3',NULL,NULL,'2022-03-25 09:40:28'),(6,'banji_types','班级',1,'班级1',NULL,NULL,'2022-03-25 09:40:28'),(7,'banji_types','班级',2,'班级2',NULL,NULL,'2022-03-25 09:40:28'),(8,'banji_types','班级',3,'班级3',NULL,NULL,'2022-03-25 09:40:28'),(9,'shixi_types','单位性质',1,'国营单位',NULL,NULL,'2022-03-25 09:40:29'),(10,'shixi_types','单位性质',2,'私营企业',NULL,NULL,'2022-03-25 09:40:29'),(11,'shixi_types','单位性质',3,'其他',NULL,NULL,'2022-03-25 09:40:29'),(12,'shixi_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-25 09:40:29'),(13,'shixi_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-25 09:40:29'),(14,'shixi_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-25 09:40:29'),(15,'shixi_zhoubao_types','第几周',1,'第一周',NULL,NULL,'2022-03-25 09:40:29'),(16,'shixi_zhoubao_types','第几周',2,'第二周',NULL,NULL,'2022-03-25 09:40:29'),(17,'shixi_zhoubao_types','第几周',3,'第三周',NULL,NULL,'2022-03-25 09:40:29'),(18,'shixi_zhoubao_types','第几周',4,'第四周',NULL,NULL,'2022-03-25 09:40:29'),(19,'shixi_zhoubao_types','第几周',5,'第五周',NULL,NULL,'2022-03-25 09:40:29'),(20,'shixi_zhoubao_types','第几周',6,'第六周',NULL,NULL,'2022-03-25 09:40:29'),(21,'shixi_zhoubao_types','第几周',7,'第七周',NULL,NULL,'2022-03-25 09:40:29'),(22,'shixi_zhoubao_types','第几周',8,'第八周',NULL,NULL,'2022-03-25 09:40:29'),(23,'shixi_zhoubao_types','第几周',9,'第九周',NULL,NULL,'2022-03-25 09:40:29'),(24,'shixi_zhoubao_types','第几周',10,'第十周',NULL,NULL,'2022-03-25 09:40:29'),(25,'shixi_zhoubao_types','第几周',11,'第十一周',NULL,NULL,'2022-03-25 09:40:29'),(26,'shixi_zhoubao_types','第几周',12,'第十二周',NULL,NULL,'2022-03-25 09:40:29'),(27,'shixi_zhoubao_types','第几周',13,'第十三周',NULL,NULL,'2022-03-25 09:40:29'),(28,'shixi_zhoubao_types','第几周',14,'第十四周',NULL,NULL,'2022-03-25 09:40:29'),(29,'shixi_zhoubao_types','第几周',15,'第十五周',NULL,NULL,'2022-03-25 09:40:29'),(30,'shixi_zhoubao_types','第几周',16,'第十六周',NULL,NULL,'2022-03-25 09:40:29'),(31,'shixi_zhoubao_types','第几周',17,'第十七周',NULL,NULL,'2022-03-25 09:40:29'),(32,'shixi_zhoubao_types','第几周',18,'第十八周',NULL,NULL,'2022-03-25 09:40:29'),(33,'shixi_zhoubao_types','第几周',19,'第十九周',NULL,NULL,'2022-03-25 09:40:29'),(34,'shixi_chengji_types','成绩结果',1,'优秀',NULL,NULL,'2022-03-25 09:40:29'),(35,'shixi_chengji_types','成绩结果',2,'一般',NULL,NULL,'2022-03-25 09:40:29'),(36,'shixi_chengji_types','成绩结果',3,'差劲',NULL,NULL,'2022-03-25 09:40:29'),(37,'shixi_fenxiang_types','分享类型',1,'分享类型1',NULL,NULL,'2022-03-25 09:40:29'),(38,'shixi_fenxiang_types','分享类型',2,'分享类型2',NULL,NULL,'2022-03-25 09:40:29'),(39,'shixi_fenxiang_types','分享类型',3,'分享类型3',NULL,NULL,'2022-03-25 09:40:29'),(40,'shixi_fenxiang_types','分享类型',4,'分享类型4',NULL,NULL,'2022-03-25 09:40:29'),(41,'shixi_fenxiang_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-25 09:40:29'),(42,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-03-25 09:40:29'),(43,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-03-25 09:40:29'),(44,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-03-25 09:40:29'),(45,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-25 09:40:29'),(46,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-25 09:40:29'),(47,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-25 09:40:30'),(48,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-25 09:40:30'),(49,'yuanxi_types','院系',4,'院系4',NULL,'','2022-03-25 10:23:55');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xuesheng_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',NULL,1,1,'2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',NULL,3,1,'2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',NULL,2,1,'2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',NULL,3,1,'2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',NULL,1,1,'2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(6,NULL,1,NULL,NULL,'1111',5,NULL,2,'2022-03-25 10:14:01',NULL,'2022-03-25 10:14:01'),(7,NULL,1,NULL,NULL,'33',5,NULL,2,'2022-03-25 10:16:14',NULL,'2022-03-25 10:16:14'),(8,NULL,NULL,1,NULL,'333',5,NULL,2,'2022-03-25 10:21:55',NULL,'2022-03-25 10:21:55'),(9,NULL,NULL,NULL,6,'3333',5,NULL,2,'2022-03-25 10:24:21',NULL,'2022-03-25 10:24:21');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/shixiguanlixitong/upload/gonggao1.jpg',1,'2022-03-25 09:42:37','公告详情1','2022-03-25 09:42:37'),(2,'公告名称2','http://localhost:8080/shixiguanlixitong/upload/gonggao2.jpg',2,'2022-03-25 09:42:37','公告详情2','2022-03-25 09:42:37'),(3,'公告名称3','http://localhost:8080/shixiguanlixitong/upload/gonggao3.jpg',2,'2022-03-25 09:42:37','公告详情3','2022-03-25 09:42:37'),(4,'公告名称4','http://localhost:8080/shixiguanlixitong/upload/gonggao4.jpg',1,'2022-03-25 09:42:37','公告详情4','2022-03-25 09:42:37'),(5,'公告名称5','http://localhost:8080/shixiguanlixitong/upload/gonggao5.jpg',2,'2022-03-25 09:42:37','公告详情5','2022-03-25 09:42:37');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199610232001','http://localhost:8080/shixiguanlixitong/upload/laoshi1.jpg',2,'1@qq.com','2022-03-25 09:42:37'),(2,'a2','123456','老师姓名2','17703786902','410224199610232002','http://localhost:8080/shixiguanlixitong/upload/laoshi2.jpg',2,'2@qq.com','2022-03-25 09:42:37'),(3,'a3','123456','老师姓名3','17703786903','410224199610232003','http://localhost:8080/shixiguanlixitong/upload/laoshi3.jpg',1,'3@qq.com','2022-03-25 09:42:37');

/*Table structure for table `shixi` */

DROP TABLE IF EXISTS `shixi`;

CREATE TABLE `shixi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习编号  Search111 ',
  `shixi_name` varchar(200) DEFAULT NULL COMMENT '单位名称  Search111 ',
  `shixi_address` varchar(200) DEFAULT NULL COMMENT '单位地址  Search111 ',
  `shixi_types` int(11) DEFAULT NULL COMMENT '单位性质 Search111',
  `shixi_gangwei` varchar(200) DEFAULT NULL COMMENT '实习岗位  Search111 ',
  `kaishi_time` date DEFAULT NULL COMMENT '实习开始时间',
  `jieshu_time` date DEFAULT NULL COMMENT '实习结束时间',
  `shixi_content` text COMMENT '实习详情 ',
  `shixi_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `shixi_yesno_text` text COMMENT '审核意见 ',
  `unpdate_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='实习';

/*Data for the table `shixi` */

insert  into `shixi`(`id`,`xuesheng_id`,`shixi_uuid_number`,`shixi_name`,`shixi_address`,`shixi_types`,`shixi_gangwei`,`kaishi_time`,`jieshu_time`,`shixi_content`,`shixi_yesno_types`,`shixi_yesno_text`,`unpdate_time`,`insert_time`,`create_time`) values (1,1,'164817255751211','单位名称1','单位地址1',1,'实习岗位1','2022-03-25','2022-03-25','实习详情1',2,'同意','2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(2,2,'16481725575124','单位名称2','单位地址2',2,'实习岗位2','2022-03-25','2022-03-25','实习详情2',2,'同意','2022-03-25 09:42:37','2022-03-25 09:42:37','2022-03-25 09:42:37'),(3,3,'164817255751217','单位名称3','单位地址3',2,'实习岗位3','2022-03-25','2022-03-25','实习详情3',2,'111','2022-03-25 10:22:14','2022-03-25 09:42:37','2022-03-25 09:42:37');

/*Table structure for table `shixi_chengji` */

DROP TABLE IF EXISTS `shixi_chengji`;

CREATE TABLE `shixi_chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shixi_id` int(11) DEFAULT NULL COMMENT '实习',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_chengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '成绩编号  Search111 ',
  `shixi_chengji_types` int(11) DEFAULT NULL COMMENT '成绩结果 Search111',
  `fenshu` decimal(10,2) DEFAULT NULL COMMENT '成绩分数',
  `shixi_chengji_yesno_text` text COMMENT '实习评语 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='实习成绩';

/*Data for the table `shixi_chengji` */

insert  into `shixi_chengji`(`id`,`shixi_id`,`xuesheng_id`,`shixi_chengji_uuid_number`,`shixi_chengji_types`,`fenshu`,`shixi_chengji_yesno_text`,`insert_time`,`create_time`) values (6,1,1,'1648174183667',2,'75.00','一般','2022-03-25 10:10:13','2022-03-25 10:10:13'),(7,2,2,'1648174216115',2,'90.00','11','2022-03-25 10:10:38','2022-03-25 10:10:38'),(8,3,3,'1648174946131',1,'80.00','henbucuo','2022-03-25 10:22:45','2022-03-25 10:22:45');

/*Table structure for table `shixi_fenxiang` */

DROP TABLE IF EXISTS `shixi_fenxiang`;

CREATE TABLE `shixi_fenxiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_fenxiang_name` varchar(200) DEFAULT NULL COMMENT '分享标题  Search111 ',
  `shixi_fenxiang_photo` varchar(200) DEFAULT NULL COMMENT '分享照片',
  `shixi_fenxiang_types` int(11) DEFAULT NULL COMMENT '分享类型 Search111',
  `shixi_fenxiang_clicknum` int(11) DEFAULT NULL COMMENT '热度 ',
  `shixi_fenxiang_content` text COMMENT '分享内容 ',
  `shixi_fenxiang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='实习分享';

/*Data for the table `shixi_fenxiang` */

insert  into `shixi_fenxiang`(`id`,`xuesheng_id`,`shixi_fenxiang_name`,`shixi_fenxiang_photo`,`shixi_fenxiang_types`,`shixi_fenxiang_clicknum`,`shixi_fenxiang_content`,`shixi_fenxiang_delete`,`create_time`) values (1,3,'分享标题1','http://localhost:8080/shixiguanlixitong/upload/gonggao1.jpg',1,56,'分享内容1',1,'2022-03-25 09:42:37'),(2,3,'分享标题2','http://localhost:8080/shixiguanlixitong/upload/gonggao2.jpg',2,348,'分享内容2',1,'2022-03-25 09:42:37'),(3,1,'分享标题3','http://localhost:8080/shixiguanlixitong/upload/gonggao3.jpg',4,405,'分享内容3',1,'2022-03-25 09:42:37'),(4,1,'分享标题4','http://localhost:8080/shixiguanlixitong/upload/gonggao4.jpg',4,23,'分享内容4',1,'2022-03-25 09:42:37'),(5,1,'分享标题5','http://localhost:8080/shixiguanlixitong/upload/gonggao5.jpg',2,95,'分享内容5',1,'2022-03-25 09:42:37');

/*Table structure for table `shixi_fenxiang_collection` */

DROP TABLE IF EXISTS `shixi_fenxiang_collection`;

CREATE TABLE `shixi_fenxiang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shixi_fenxiang_id` int(11) DEFAULT NULL COMMENT '实习分享',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_fenxiang_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='实习分享收藏';

/*Data for the table `shixi_fenxiang_collection` */

insert  into `shixi_fenxiang_collection`(`id`,`shixi_fenxiang_id`,`xuesheng_id`,`shixi_fenxiang_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-25 09:42:37','2022-03-25 09:42:37'),(2,2,3,1,'2022-03-25 09:42:37','2022-03-25 09:42:37'),(3,3,3,1,'2022-03-25 09:42:37','2022-03-25 09:42:37'),(7,5,1,1,'2022-03-25 10:14:23','2022-03-25 10:14:23');

/*Table structure for table `shixi_fenxiang_liuyan` */

DROP TABLE IF EXISTS `shixi_fenxiang_liuyan`;

CREATE TABLE `shixi_fenxiang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shixi_fenxiang_id` int(11) DEFAULT NULL COMMENT '实习分享',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_fenxiang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='实习分享留言';

/*Data for the table `shixi_fenxiang_liuyan` */

insert  into `shixi_fenxiang_liuyan`(`id`,`shixi_fenxiang_id`,`xuesheng_id`,`shixi_fenxiang_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-03-25 09:42:37','回复信息1','2022-03-25 09:42:37','2022-03-25 09:42:37'),(2,2,3,'留言内容2','2022-03-25 09:42:37','回复信息2','2022-03-25 09:42:37','2022-03-25 09:42:37'),(3,3,2,'留言内容3','2022-03-25 09:42:37','回复信息3','2022-03-25 09:42:37','2022-03-25 09:42:37'),(4,4,1,'留言内容4','2022-03-25 09:42:37','回复信息4','2022-03-25 09:42:37','2022-03-25 09:42:37'),(5,5,3,'留言内容5','2022-03-25 09:42:37','回复信息5','2022-03-25 09:42:37','2022-03-25 09:42:37'),(6,2,1,'111','2022-03-25 09:59:05','333','2022-03-25 10:03:14','2022-03-25 09:59:05'),(7,5,1,'23333','2022-03-25 10:14:13','2323','2022-03-25 10:21:17','2022-03-25 10:14:13');

/*Table structure for table `shixi_zhoubao` */

DROP TABLE IF EXISTS `shixi_zhoubao`;

CREATE TABLE `shixi_zhoubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shixi_id` int(11) DEFAULT NULL COMMENT '实习',
  `shixi_zhoubao_uuid_number` varchar(200) DEFAULT NULL COMMENT '实习周报编号  Search111 ',
  `shixi_zhoubao_name` varchar(200) DEFAULT NULL COMMENT '周报标题  Search111 ',
  `shixi_zhoubao_types` int(11) DEFAULT NULL COMMENT '第几周 Search111',
  `shixi_zhoubao_content` text COMMENT '实习周报详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='实习周报';

/*Data for the table `shixi_zhoubao` */

insert  into `shixi_zhoubao`(`id`,`xuesheng_id`,`shixi_id`,`shixi_zhoubao_uuid_number`,`shixi_zhoubao_name`,`shixi_zhoubao_types`,`shixi_zhoubao_content`,`insert_time`,`create_time`) values (1,1,1,'16481725575279','周报标题1',11,'实习周报详情1','2022-03-25 09:42:37','2022-03-25 09:42:37'),(2,1,2,'164817255752712','周报标题2',1,'实习周报详情2','2022-03-25 09:42:37','2022-03-25 09:42:37'),(3,3,3,'16481725575283','周报标题3',11,'实习周报详情3','2022-03-25 09:42:37','2022-03-25 09:42:37'),(5,2,3,'164817255752820','周报标题5',6,'实习周报详情5','2022-03-25 09:42:37','2022-03-25 09:42:37'),(6,1,1,'1648174890358','111',1,'<p>asgsadas</p>','2022-03-25 10:21:39','2022-03-25 10:21:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','g0jdxjieu0lvz8ty0kh1x2adslma1zy0','2022-03-25 09:53:03','2022-03-25 11:27:30'),(2,1,'a1','xuesheng','学生','rftxwfrx6t32vxodtknjwstrisdlqu8m','2022-03-25 09:57:56','2022-03-25 11:16:05'),(3,2,'a2','xuesheng','学生','sm5shxe0smde1dckchujkb03vnk12rle','2022-03-25 09:58:14','2022-03-25 10:58:15'),(4,3,'a3','xuesheng','学生','d84laf78l2pkcbgqgl5uswggqh11wdby','2022-03-25 09:58:38','2022-03-25 10:58:38'),(5,1,'a1','laoshi','老师','n2umt8zo9aksumabbhl1abtj24bf8bip','2022-03-25 10:03:27','2022-03-25 11:21:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuanxi_types` int(11) DEFAULT NULL COMMENT '院系',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_uuid_number`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`yuanxi_types`,`banji_types`,`xuesheng_email`,`create_time`) values (1,'a1','123456','16481725575302','学生姓名1','17703786901','410224199610232001','http://localhost:8080/shixiguanlixitong/upload/xuesheng1.jpg',2,1,1,'1@qq.com','2022-03-25 09:42:37'),(2,'a2','123456','164817255753020','学生姓名2','17703786902','410224199610232002','http://localhost:8080/shixiguanlixitong/upload/xuesheng2.jpg',2,1,2,'2@qq.com','2022-03-25 09:42:37'),(3,'a3','123456','164817255753118','学生姓名3','17703786903','410224199610232003','http://localhost:8080/shixiguanlixitong/upload/xuesheng3.jpg',1,1,2,'3@qq.com','2022-03-25 09:42:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
