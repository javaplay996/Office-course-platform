/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm04i6d
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm04i6d` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm04i6d`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm04i6d/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm04i6d/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm04i6d/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753173932 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-30 11:13:54',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-30 11:13:54',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-30 11:13:54',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-30 11:13:54',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-30 11:13:54',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-30 11:13:54',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619753069897,'2021-04-30 11:24:29',41,1619752994023,'001','5555555',NULL);
insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619753173931,'2021-04-30 11:26:13',41,1619752994023,'001','这里可以发布信息给老师留言老师可以进行回复','好的');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619752892392 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1619752884819,'2021-04-30 11:21:24','英语测试',60,1);
insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1619752892391,'2021-04-30 11:21:31','数学测',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619752953239 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619752919201,'2021-04-30 11:21:58',1619752884819,'英语测试','1111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','111',0,1);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619752928484,'2021-04-30 11:22:07',1619752884819,'英语测试','22222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','3333',2,2);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1619752953238,'2021-04-30 11:22:32',1619752892391,'数学测','222','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B,C,D','555',1,2);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753143022 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619753131590,'2021-04-30 11:25:31',1619752994023,NULL,1619752884819,'英语测试',1619752919201,'1111','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','111',20,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619753133857,'2021-04-30 11:25:33',1619752994023,NULL,1619752884819,'英语测试',1619752928484,'22222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','3333',0,'B');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1619753143021,'2021-04-30 11:25:42',1619752994023,NULL,1619752892391,'数学测',1619752953238,'222','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A,B,C,D','555',0,'A,C,B,D');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753120665 DEFAULT CHARSET=utf8 COMMENT='在线论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-30 11:13:54','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (72,'2021-04-30 11:13:54','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (73,'2021-04-30 11:13:54','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (74,'2021-04-30 11:13:54','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (75,'2021-04-30 11:13:54','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (76,'2021-04-30 11:13:54','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619753114398,'2021-04-30 11:25:13','交流信息','<p>用户可以在这类发布信息进行交流的。。。</p>',0,1619752994023,'001','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619753120664,'2021-04-30 11:25:20',NULL,'5555',1619753114398,1619752994023,'001',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (21,'2021-04-30 11:13:54','1','1','刘老师','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang1.jpg','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (22,'2021-04-30 11:13:54','教师2','123456','教师姓名2','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang2.jpg','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (23,'2021-04-30 11:13:54','教师3','123456','教师姓名3','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang3.jpg','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (24,'2021-04-30 11:13:54','教师4','123456','教师姓名4','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang4.jpg','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (25,'2021-04-30 11:13:54','教师5','123456','教师姓名5','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang5.jpg','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`dianhua`) values (26,'2021-04-30 11:13:54','教师6','123456','教师姓名6','男','http://localhost:8080/ssm04i6d/upload/jiaoshi_touxiang6.jpg','13823888886');

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (31,'2021-04-30 11:13:54','英语');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (32,'2021-04-30 11:13:54','课程类型2');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (33,'2021-04-30 11:13:54','课程类型3');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (34,'2021-04-30 11:13:54','课程类型4');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (35,'2021-04-30 11:13:54','课程类型5');
insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values (36,'2021-04-30 11:13:54','课程类型6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kechengwenjian` varchar(200) DEFAULT NULL COMMENT '课程文件',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengneirong` longtext COMMENT '课程内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (41,'2021-04-30 11:13:54','英语基础课程','英语','http://localhost:8080/ssm04i6d/upload/1619752802255.jpg','http://localhost:8080/ssm04i6d/upload/1619752807526.doc','http://localhost:8080/ssm04i6d/upload/1619752813994.mp4','1','刘老师','<p><img src=\"http://localhost:8080/ssm04i6d/upload/1619752823231.jpg\"></p><p>这里可以发布一些相关程内容1，这里的所有内容都用于测试的，。。</p>');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (42,'2021-04-30 11:13:54','课程名称2','课程类型2','http://localhost:8080/ssm04i6d/upload/kechengxinxi_tupian2.jpg','','','工号2','教师姓名2','课程内容2');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (43,'2021-04-30 11:13:54','课程名称3','课程类型3','http://localhost:8080/ssm04i6d/upload/kechengxinxi_tupian3.jpg','','','工号3','教师姓名3','课程内容3');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (44,'2021-04-30 11:13:54','课程名称4','课程类型4','http://localhost:8080/ssm04i6d/upload/kechengxinxi_tupian4.jpg','','','工号4','教师姓名4','课程内容4');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (45,'2021-04-30 11:13:54','课程名称5','课程类型5','http://localhost:8080/ssm04i6d/upload/kechengxinxi_tupian5.jpg','','','工号5','教师姓名5','课程内容5');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`kechengwenjian`,`kechengshipin`,`gonghao`,`jiaoshixingming`,`kechengneirong`) values (46,'2021-04-30 11:13:54','课程名称6','课程类型6','http://localhost:8080/ssm04i6d/upload/kechengxinxi_tupian6.jpg','','','工号6','教师姓名6','课程内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753156428 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (131,'2021-04-30 11:13:54',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (132,'2021-04-30 11:13:54',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (133,'2021-04-30 11:13:54',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (134,'2021-04-30 11:13:54',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (135,'2021-04-30 11:13:54',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (136,'2021-04-30 11:13:54',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619753156427,'2021-04-30 11:25:56',1619752994023,'001','有什么问题可以在这里进行反馈的。。','好的 欢迎反馈的。。。。');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-04-30 11:13:54','公告信息','简介1122121','http://localhost:8080/ssm04i6d/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/ssm04i6d/upload/1619752663900.jpg\"></p><p>这里可以发布一些相关，公告内容，这里的所有内容都是用于测试功能 都是可以自行添加修改删除的。。</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-04-30 11:13:54','标题2','简介2','http://localhost:8080/ssm04i6d/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-04-30 11:13:54','标题3','简介3','http://localhost:8080/ssm04i6d/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-04-30 11:13:54','标题4','简介4','http://localhost:8080/ssm04i6d/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-04-30 11:13:54','标题5','简介5','http://localhost:8080/ssm04i6d/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-04-30 11:13:54','标题6','简介6','http://localhost:8080/ssm04i6d/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753050747 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619753050746,'2021-04-30 11:24:09',1619752994023,41,'kechengxinxi','英语基础课程','http://localhost:8080/ssm04i6d/upload/1619752802255.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','r6swcs2izl9rr1dn76jucc965y4i9lf5','2021-04-30 11:15:03','2021-04-30 12:27:26');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'1','jiaoshi','管理员','tbbrdl3oll1lnmgqxrdk0i47sd7qorzb','2021-04-30 11:15:33','2021-04-30 12:28:04');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,11,'1','xuesheng','学生','b9a2lrb2mj0vkyyifnzw6gfybufemthi','2021-04-30 11:15:43','2021-04-30 12:15:43');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619752994023,'001','xuesheng','学生','v4elw6knnaxyvdjx11agyi8vz6f51ptj','2021-04-30 11:23:25','2021-04-30 12:28:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 11:13:54');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619752994024 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (11,'2021-04-30 11:13:54','1','1','学生姓名1','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang1.jpg','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (12,'2021-04-30 11:13:54','学生2','123456','学生姓名2','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang2.jpg','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (13,'2021-04-30 11:13:54','学生3','123456','学生姓名3','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang3.jpg','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (14,'2021-04-30 11:13:54','学生4','123456','学生姓名4','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang4.jpg','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (15,'2021-04-30 11:13:54','学生5','123456','学生姓名5','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang5.jpg','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (16,'2021-04-30 11:13:54','学生6','123456','学生姓名6','男','http://localhost:8080/ssm04i6d/upload/xuesheng_touxiang6.jpg','13823888886');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`) values (1619752994023,'2021-04-30 11:23:14','001','001','刘曦','女','http://localhost:8080/ssm04i6d/upload/1619753018680.jpg','15214121411');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `tijiaozuoye` varchar(200) DEFAULT NULL COMMENT '提交作业',
  `tijiaoriqi` datetime DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619753089664 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (61,'2021-04-30 11:13:54','作业名称1','科目1','工号1','教师姓名1','','2021-04-30 11:13:54','学号1','学生姓名1');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (62,'2021-04-30 11:13:54','作业名称2','科目2','工号2','教师姓名2','','2021-04-30 11:13:54','学号2','学生姓名2');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (63,'2021-04-30 11:13:54','作业名称3','科目3','工号3','教师姓名3','','2021-04-30 11:13:54','学号3','学生姓名3');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (64,'2021-04-30 11:13:54','作业名称4','科目4','工号4','教师姓名4','','2021-04-30 11:13:54','学号4','学生姓名4');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (65,'2021-04-30 11:13:54','作业名称5','科目5','工号5','教师姓名5','','2021-04-30 11:13:54','学号5','学生姓名5');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (66,'2021-04-30 11:13:54','作业名称6','科目6','工号6','教师姓名6','','2021-04-30 11:13:54','学号6','学生姓名6');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`gonghao`,`jiaoshixingming`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (1619753089663,'2021-04-30 11:24:49','英语作业','英语','1','刘老师','http://localhost:8080/ssm04i6d/upload/1619753087957.doc','2021-04-30 11:24:36','001','刘曦');

/*Table structure for table `zuoyexinxi` */

DROP TABLE IF EXISTS `zuoyexinxi`;

CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuoyewenjian` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `jiezhiriqi` date DEFAULT NULL COMMENT '截止日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoyexinxi` */

insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (51,'2021-04-30 11:13:54','英语作业','英语','http://localhost:8080/ssm04i6d/upload/1619752867128.jpg','http://localhost:8080/ssm04i6d/upload/1619752873138.doc','2021-04-30','1','刘老师');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (52,'2021-04-30 11:13:54','作业名称2','科目2','http://localhost:8080/ssm04i6d/upload/zuoyexinxi_tupian2.jpg','','2021-04-30','工号2','教师姓名2');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (53,'2021-04-30 11:13:54','作业名称3','科目3','http://localhost:8080/ssm04i6d/upload/zuoyexinxi_tupian3.jpg','','2021-04-30','工号3','教师姓名3');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (54,'2021-04-30 11:13:54','作业名称4','科目4','http://localhost:8080/ssm04i6d/upload/zuoyexinxi_tupian4.jpg','','2021-04-30','工号4','教师姓名4');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (55,'2021-04-30 11:13:54','作业名称5','科目5','http://localhost:8080/ssm04i6d/upload/zuoyexinxi_tupian5.jpg','','2021-04-30','工号5','教师姓名5');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyemingcheng`,`kemu`,`tupian`,`zuoyewenjian`,`jiezhiriqi`,`gonghao`,`jiaoshixingming`) values (56,'2021-04-30 11:13:54','作业名称6','科目6','http://localhost:8080/ssm04i6d/upload/zuoyexinxi_tupian6.jpg','','2021-04-30','工号6','教师姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
