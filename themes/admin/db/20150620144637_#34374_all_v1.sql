--
-- MySQL database dump
-- Created by DBManage class, Power By yanue. 
-- http://yanue.net 
--
-- 主机: localhost:33061
-- 生成日期: 2015 年  06 月 20 日 14:46
-- MySQL版本: 5.5.15
-- PHP 版本: 5.3.18

--
-- 数据库: `36688_prd`
--

-- -------------------------------------------------------

--
-- 表的结构member
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户的标识',
  `member_nicename` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL COMMENT '用户登录名称登录帐号',
  `member_password` char(255) DEFAULT NULL COMMENT '密码',
  `member_mobile` char(11) DEFAULT NULL COMMENT '手机号',
  `member_type` char(20) DEFAULT '10000' COMMENT '用户类型 1系统管理员 2编辑 3普通用户',
  `member_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `member_ex_attr` longblob COMMENT '附件属性',
  `site_id` bigint(20) DEFAULT '0' COMMENT '站点的标识',
  `member_status` char(32) DEFAULT NULL COMMENT '用户状态',
  `member_key1` varchar(255) DEFAULT NULL,
  `member_key2` varchar(255) DEFAULT NULL,
  `member_key3` varchar(255) DEFAULT NULL,
  `member_key4` varchar(255) DEFAULT NULL,
  `member_key5` varchar(255) DEFAULT NULL,
  `member_key6` varchar(255) DEFAULT NULL,
  `member_key7` varchar(255) DEFAULT NULL,
  `member_key8` varchar(255) DEFAULT NULL,
  `member_key9` text,
  `member_key10` text,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_name` (`member_name`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

--
-- 转存表中的数据 member
--

INSERT INTO `member` VALUES('1','admin','admin','$P$BL0l/lE9/UHg31I5bPqYV0fTlO/rzI0',NULL,'super','xpjc@foxmail.com',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构member_ex_attr
--

DROP TABLE IF EXISTS `member_ex_attr`;
CREATE TABLE `member_ex_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT '0',
  `member_ex_attr_key` char(30) DEFAULT NULL,
  `member_ex_attr_value` longblob,
  `ex_attr_parent` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`member_id`) USING BTREE,
  KEY `post_ex_attr_key` (`member_ex_attr_key`) USING BTREE,
  KEY `ex_attr_parent` (`ex_attr_parent`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户内容的附加字段';

--
-- 转存表中的数据 member_ex_attr
--

--
-- 表的结构oid
--

DROP TABLE IF EXISTS `oid`;
CREATE TABLE `oid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自动id',
  `create_time` datetime NOT NULL COMMENT '建立时间',
  `type` varchar(32) DEFAULT NULL COMMENT '什么类型的请求',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4799 DEFAULT CHARSET=utf8 COMMENT='自动生成id的表\r\n每个表的主键都从这里取得 防止系统id重复';

--
-- 转存表中的数据 oid
--

INSERT INTO `oid` VALUES('4270','2015-05-18 07:26:53','post_4267');
INSERT INTO `oid` VALUES('4271','2015-05-18 07:26:53','post_4264');
INSERT INTO `oid` VALUES('4272','2015-05-18 07:26:53','post_4266');
INSERT INTO `oid` VALUES('4273','2015-05-18 07:26:53','post_4268');
INSERT INTO `oid` VALUES('4274','2015-05-18 07:26:53','post_4265');
INSERT INTO `oid` VALUES('4275','2015-05-18 07:26:53','post_4269');
INSERT INTO `oid` VALUES('4276','2015-05-18 07:26:53','post_4261');
INSERT INTO `oid` VALUES('4277','2015-05-18 07:26:53','post_4260');
INSERT INTO `oid` VALUES('4278','2015-05-18 07:26:53','post_4263');
INSERT INTO `oid` VALUES('4279','2015-05-18 07:26:53','post_4262');
INSERT INTO `oid` VALUES('4280','2015-05-18 22:41:19','dictsave');
INSERT INTO `oid` VALUES('4281','2015-05-18 22:41:19','dictsave');
INSERT INTO `oid` VALUES('4282','2015-05-18 22:41:19','dictsave');
INSERT INTO `oid` VALUES('4283','2015-05-18 22:41:19','dictsave');
INSERT INTO `oid` VALUES('4284','2015-05-18 22:41:19','dictsave');
INSERT INTO `oid` VALUES('4285','2015-05-18 22:41:21','dictsave');
INSERT INTO `oid` VALUES('4286','2015-05-18 22:41:21','dictsave');
INSERT INTO `oid` VALUES('4287','2015-05-18 22:41:21','dictsave');
INSERT INTO `oid` VALUES('4288','2015-05-18 22:41:21','dictsave');
INSERT INTO `oid` VALUES('4289','2015-05-18 22:41:21','dictsave');
INSERT INTO `oid` VALUES('4290','2015-05-18 22:41:22','dictsave');
INSERT INTO `oid` VALUES('4291','2015-05-18 22:41:22','dictsave');
INSERT INTO `oid` VALUES('4292','2015-05-18 22:41:22','dictsave');
INSERT INTO `oid` VALUES('4293','2015-05-18 22:41:22','dictsave');
INSERT INTO `oid` VALUES('4294','2015-05-18 22:41:22','dictsave');
INSERT INTO `oid` VALUES('4295','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4296','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4297','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4298','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4299','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4300','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4301','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4302','2015-05-28 06:05:49','dictsave');
INSERT INTO `oid` VALUES('4303','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4304','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4305','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4306','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4307','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4308','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4309','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4310','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4311','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4312','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4313','2015-06-02 22:55:19','dictsave');
INSERT INTO `oid` VALUES('4314','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4315','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4316','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4317','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4318','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4319','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4320','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4321','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4322','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4323','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4324','2015-06-02 22:55:42','dictsave');
INSERT INTO `oid` VALUES('4325','2015-06-02 22:58:15','post_carousel');
INSERT INTO `oid` VALUES('4326','2015-06-02 22:58:34','post_carousel');
INSERT INTO `oid` VALUES('4327','2015-06-02 22:58:49','post_carousel');
INSERT INTO `oid` VALUES('4328','2015-06-05 21:02:59','dictsave');
INSERT INTO `oid` VALUES('4329','2015-06-05 21:03:36','dictsave');
INSERT INTO `oid` VALUES('4330','2015-06-05 21:08:06','dictcopy');
INSERT INTO `oid` VALUES('4331','2015-06-05 21:08:17','dictcopy');
INSERT INTO `oid` VALUES('4332','2015-06-05 21:18:01','dictcopy');
INSERT INTO `oid` VALUES('4333','2015-06-05 21:18:29','dictcopy');
INSERT INTO `oid` VALUES('4334','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4335','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4336','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4337','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4338','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4339','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4340','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4341','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4342','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4343','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4344','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4345','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4346','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4347','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4348','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4349','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4350','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4351','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4352','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4353','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4354','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4355','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4356','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4357','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4358','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4359','2015-06-05 21:19:08','dictsave');
INSERT INTO `oid` VALUES('4360','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4361','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4362','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4363','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4364','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4365','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4366','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4367','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4368','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4369','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4370','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4371','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4372','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4373','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4374','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4375','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4376','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4377','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4378','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4379','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4380','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4381','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4382','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4383','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4384','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4385','2015-06-05 21:19:11','dictsave');
INSERT INTO `oid` VALUES('4386','2015-06-05 21:34:19','dictsave');
INSERT INTO `oid` VALUES('4387','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4388','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4389','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4390','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4391','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4392','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4393','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4394','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4395','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4396','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4397','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4398','2015-06-05 21:36:38','import');
INSERT INTO `oid` VALUES('4399','2015-06-05 22:26:46','post_about-us');
INSERT INTO `oid` VALUES('4400','2015-06-06 06:24:48','post_product');
INSERT INTO `oid` VALUES('4401','2015-06-06 06:24:49','relationships');
INSERT INTO `oid` VALUES('4402','2015-06-06 06:24:49','post_id4400');
INSERT INTO `oid` VALUES('4403','2015-06-06 06:25:24','post_4400');
INSERT INTO `oid` VALUES('4404','2015-06-06 06:25:26','post_4403');
INSERT INTO `oid` VALUES('4405','2015-06-06 06:25:26','post_4400');
INSERT INTO `oid` VALUES('4406','2015-06-06 06:25:29','post_4405');
INSERT INTO `oid` VALUES('4407','2015-06-06 06:25:29','post_4404');
INSERT INTO `oid` VALUES('4408','2015-06-06 06:25:29','post_4403');
INSERT INTO `oid` VALUES('4409','2015-06-06 06:25:29','post_4400');
INSERT INTO `oid` VALUES('4410','2015-06-06 06:25:31','post_4409');
INSERT INTO `oid` VALUES('4411','2015-06-06 06:25:31','post_4408');
INSERT INTO `oid` VALUES('4412','2015-06-06 06:25:31','post_4405');
INSERT INTO `oid` VALUES('4413','2015-06-06 06:25:31','post_4407');
INSERT INTO `oid` VALUES('4414','2015-06-06 06:25:32','post_4406');
INSERT INTO `oid` VALUES('4415','2015-06-06 06:25:32','post_4403');
INSERT INTO `oid` VALUES('4416','2015-06-06 06:25:32','post_4400');
INSERT INTO `oid` VALUES('4417','2015-06-06 06:25:32','post_4404');
INSERT INTO `oid` VALUES('4418','2015-06-06 06:25:35','post_4415');
INSERT INTO `oid` VALUES('4419','2015-06-06 06:25:35','post_4417');
INSERT INTO `oid` VALUES('4420','2015-06-06 06:25:35','post_4414');
INSERT INTO `oid` VALUES('4421','2015-06-06 06:25:35','post_4416');
INSERT INTO `oid` VALUES('4422','2015-06-06 06:25:35','post_4413');
INSERT INTO `oid` VALUES('4423','2015-06-06 06:25:35','post_4412');
INSERT INTO `oid` VALUES('4424','2015-06-06 06:25:35','post_4410');
INSERT INTO `oid` VALUES('4425','2015-06-06 06:25:35','post_4411');
INSERT INTO `oid` VALUES('4426','2015-06-06 06:25:35','post_4408');
INSERT INTO `oid` VALUES('4427','2015-06-06 06:25:35','post_4409');
INSERT INTO `oid` VALUES('4428','2015-06-06 06:25:47','relationships');
INSERT INTO `oid` VALUES('4429','2015-06-06 06:25:47','post_id4426');
INSERT INTO `oid` VALUES('4430','2015-06-06 06:25:55','relationships');
INSERT INTO `oid` VALUES('4431','2015-06-06 06:25:55','post_id4425');
INSERT INTO `oid` VALUES('4432','2015-06-06 06:26:06','post_4399');
INSERT INTO `oid` VALUES('4433','2015-06-06 06:26:08','post_4432');
INSERT INTO `oid` VALUES('4434','2015-06-06 06:26:08','post_4399');
INSERT INTO `oid` VALUES('4435','2015-06-06 06:31:24','dictcopy');
INSERT INTO `oid` VALUES('4436','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4437','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4438','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4439','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4440','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4441','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4442','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4443','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4444','2015-06-06 06:31:53','dictsave');
INSERT INTO `oid` VALUES('4445','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4446','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4447','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4448','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4449','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4450','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4451','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4452','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4453','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4454','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4455','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4456','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4457','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4458','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4459','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4460','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4461','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4462','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4463','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4464','2015-06-06 06:31:54','dictsave');
INSERT INTO `oid` VALUES('4465','2015-06-06 06:33:02','post_honor');
INSERT INTO `oid` VALUES('4466','2015-06-06 06:33:07','post_4465');
INSERT INTO `oid` VALUES('4467','2015-06-06 06:33:09','post_4466');
INSERT INTO `oid` VALUES('4468','2015-06-06 06:33:09','post_4465');
INSERT INTO `oid` VALUES('4469','2015-06-06 06:33:10','post_4468');
INSERT INTO `oid` VALUES('4470','2015-06-06 06:33:10','post_4467');
INSERT INTO `oid` VALUES('4471','2015-06-06 06:33:10','post_4466');
INSERT INTO `oid` VALUES('4472','2015-06-06 06:33:10','post_4465');
INSERT INTO `oid` VALUES('4473','2015-06-06 06:34:13','post_case');
INSERT INTO `oid` VALUES('4474','2015-06-06 06:34:16','post_4473');
INSERT INTO `oid` VALUES('4475','2015-06-06 06:34:17','post_4474');
INSERT INTO `oid` VALUES('4476','2015-06-06 06:34:17','post_4473');
INSERT INTO `oid` VALUES('4477','2015-06-06 06:34:19','post_4475');
INSERT INTO `oid` VALUES('4478','2015-06-06 06:34:19','post_4474');
INSERT INTO `oid` VALUES('4479','2015-06-06 06:34:19','post_4476');
INSERT INTO `oid` VALUES('4480','2015-06-06 06:34:19','post_4473');
INSERT INTO `oid` VALUES('4481','2015-06-06 06:35:51','post_contact-us');
INSERT INTO `oid` VALUES('4482','2015-06-06 06:36:16','post_contact-us');
INSERT INTO `oid` VALUES('4483','2015-06-08 06:34:06','post_news');
INSERT INTO `oid` VALUES('4484','2015-06-08 06:41:11','post_4483');
INSERT INTO `oid` VALUES('4485','2015-06-08 06:41:12','post_4484');
INSERT INTO `oid` VALUES('4486','2015-06-08 06:41:12','post_4483');
INSERT INTO `oid` VALUES('4487','2015-06-08 06:41:14','post_4486');
INSERT INTO `oid` VALUES('4488','2015-06-08 06:41:14','post_4485');
INSERT INTO `oid` VALUES('4489','2015-06-08 06:41:14','post_4484');
INSERT INTO `oid` VALUES('4490','2015-06-08 06:41:14','post_4483');
INSERT INTO `oid` VALUES('4491','2015-06-08 06:41:15','post_4488');
INSERT INTO `oid` VALUES('4492','2015-06-08 06:41:15','post_4487');
INSERT INTO `oid` VALUES('4493','2015-06-08 06:41:15','post_4486');
INSERT INTO `oid` VALUES('4494','2015-06-08 06:41:15','post_4490');
INSERT INTO `oid` VALUES('4495','2015-06-08 06:41:15','post_4489');
INSERT INTO `oid` VALUES('4496','2015-06-08 06:41:15','post_4485');
INSERT INTO `oid` VALUES('4497','2015-06-08 06:41:15','post_4484');
INSERT INTO `oid` VALUES('4498','2015-06-08 06:41:15','post_4483');
INSERT INTO `oid` VALUES('4499','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4500','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4501','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4502','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4503','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4504','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4505','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4506','2015-06-09 21:39:01','import');
INSERT INTO `oid` VALUES('4507','2015-06-09 21:57:21','post_product');
INSERT INTO `oid` VALUES('4508','2015-06-09 21:57:21','relationships');
INSERT INTO `oid` VALUES('4509','2015-06-09 21:57:21','post_id4507');
INSERT INTO `oid` VALUES('4510','2015-06-09 21:57:32','post_product');
INSERT INTO `oid` VALUES('4511','2015-06-09 21:57:32','relationships');
INSERT INTO `oid` VALUES('4512','2015-06-09 21:57:32','post_id4510');
INSERT INTO `oid` VALUES('4513','2015-06-09 21:57:39','post_product');
INSERT INTO `oid` VALUES('4514','2015-06-09 21:57:39','relationships');
INSERT INTO `oid` VALUES('4515','2015-06-09 21:57:39','post_id4513');
INSERT INTO `oid` VALUES('4516','2015-06-09 21:57:51','post_product');
INSERT INTO `oid` VALUES('4517','2015-06-09 21:57:51','relationships');
INSERT INTO `oid` VALUES('4518','2015-06-09 21:57:51','post_id4516');
INSERT INTO `oid` VALUES('4519','2015-06-09 21:57:57','relationships');
INSERT INTO `oid` VALUES('4520','2015-06-09 21:57:57','post_id4516');
INSERT INTO `oid` VALUES('4521','2015-06-09 21:58:53','relationships');
INSERT INTO `oid` VALUES('4522','2015-06-09 21:58:53','post_id4513');
INSERT INTO `oid` VALUES('4523','2015-06-09 21:59:40','post_product');
INSERT INTO `oid` VALUES('4524','2015-06-09 21:59:40','relationships');
INSERT INTO `oid` VALUES('4525','2015-06-09 21:59:40','post_id4523');
INSERT INTO `oid` VALUES('4526','2015-06-09 21:59:51','post_product');
INSERT INTO `oid` VALUES('4527','2015-06-09 21:59:51','relationships');
INSERT INTO `oid` VALUES('4528','2015-06-09 21:59:51','post_id4526');
INSERT INTO `oid` VALUES('4529','2015-06-09 22:00:05','post_product');
INSERT INTO `oid` VALUES('4530','2015-06-09 22:00:05','relationships');
INSERT INTO `oid` VALUES('4531','2015-06-09 22:00:05','post_id4529');
INSERT INTO `oid` VALUES('4532','2015-06-09 22:00:19','post_product');
INSERT INTO `oid` VALUES('4533','2015-06-09 22:00:19','relationships');
INSERT INTO `oid` VALUES('4534','2015-06-09 22:00:19','post_id4532');
INSERT INTO `oid` VALUES('4535','2015-06-09 22:00:29','post_product');
INSERT INTO `oid` VALUES('4536','2015-06-09 22:00:29','relationships');
INSERT INTO `oid` VALUES('4537','2015-06-09 22:00:29','post_id4535');
INSERT INTO `oid` VALUES('4538','2015-06-09 22:00:41','post_product');
INSERT INTO `oid` VALUES('4539','2015-06-09 22:00:41','relationships');
INSERT INTO `oid` VALUES('4540','2015-06-09 22:00:41','post_id4538');
INSERT INTO `oid` VALUES('4541','2015-06-09 22:50:25','post_product');
INSERT INTO `oid` VALUES('4542','2015-06-09 22:50:25','relationships');
INSERT INTO `oid` VALUES('4543','2015-06-09 22:50:25','post_id4541');
INSERT INTO `oid` VALUES('4544','2015-06-09 22:50:39','post_product');
INSERT INTO `oid` VALUES('4545','2015-06-09 22:50:39','relationships');
INSERT INTO `oid` VALUES('4546','2015-06-09 22:50:39','post_id4544');
INSERT INTO `oid` VALUES('4547','2015-06-09 22:50:48','post_product');
INSERT INTO `oid` VALUES('4548','2015-06-09 22:50:48','relationships');
INSERT INTO `oid` VALUES('4549','2015-06-09 22:50:48','post_id4547');
INSERT INTO `oid` VALUES('4550','2015-06-09 22:51:01','post_product');
INSERT INTO `oid` VALUES('4551','2015-06-09 22:51:01','relationships');
INSERT INTO `oid` VALUES('4552','2015-06-09 22:51:01','post_id4550');
INSERT INTO `oid` VALUES('4553','2015-06-09 22:51:11','post_product');
INSERT INTO `oid` VALUES('4554','2015-06-09 22:51:11','relationships');
INSERT INTO `oid` VALUES('4555','2015-06-09 22:51:11','post_id4553');
INSERT INTO `oid` VALUES('4556','2015-06-09 22:51:20','post_product');
INSERT INTO `oid` VALUES('4557','2015-06-09 22:51:20','relationships');
INSERT INTO `oid` VALUES('4558','2015-06-09 22:51:20','post_id4556');
INSERT INTO `oid` VALUES('4559','2015-06-09 22:51:27','post_product');
INSERT INTO `oid` VALUES('4560','2015-06-09 22:51:27','relationships');
INSERT INTO `oid` VALUES('4561','2015-06-09 22:51:27','post_id4559');
INSERT INTO `oid` VALUES('4562','2015-06-09 22:51:36','post_product');
INSERT INTO `oid` VALUES('4563','2015-06-09 22:51:36','relationships');
INSERT INTO `oid` VALUES('4564','2015-06-09 22:51:36','post_id4562');
INSERT INTO `oid` VALUES('4565','2015-06-09 22:51:48','post_product');
INSERT INTO `oid` VALUES('4566','2015-06-09 22:51:48','relationships');
INSERT INTO `oid` VALUES('4567','2015-06-09 22:51:48','post_id4565');
INSERT INTO `oid` VALUES('4568','2015-06-09 22:51:57','post_product');
INSERT INTO `oid` VALUES('4569','2015-06-09 22:51:57','relationships');
INSERT INTO `oid` VALUES('4570','2015-06-09 22:51:57','post_id4568');
INSERT INTO `oid` VALUES('4571','2015-06-09 22:52:08','post_product');
INSERT INTO `oid` VALUES('4572','2015-06-09 22:52:08','relationships');
INSERT INTO `oid` VALUES('4573','2015-06-09 22:52:08','post_id4571');
INSERT INTO `oid` VALUES('4574','2015-06-09 22:52:16','post_product');
INSERT INTO `oid` VALUES('4575','2015-06-09 22:52:16','relationships');
INSERT INTO `oid` VALUES('4576','2015-06-09 22:52:16','post_id4574');
INSERT INTO `oid` VALUES('4577','2015-06-09 23:02:41','post_product');
INSERT INTO `oid` VALUES('4578','2015-06-09 23:02:41','relationships');
INSERT INTO `oid` VALUES('4579','2015-06-09 23:02:41','post_id4577');
INSERT INTO `oid` VALUES('4580','2015-06-09 23:02:47','post_product');
INSERT INTO `oid` VALUES('4581','2015-06-09 23:02:47','relationships');
INSERT INTO `oid` VALUES('4582','2015-06-09 23:02:47','post_id4580');
INSERT INTO `oid` VALUES('4583','2015-06-09 23:02:53','post_product');
INSERT INTO `oid` VALUES('4584','2015-06-09 23:02:53','relationships');
INSERT INTO `oid` VALUES('4585','2015-06-09 23:02:53','post_id4583');
INSERT INTO `oid` VALUES('4586','2015-06-09 23:02:59','post_product');
INSERT INTO `oid` VALUES('4587','2015-06-09 23:02:59','relationships');
INSERT INTO `oid` VALUES('4588','2015-06-09 23:02:59','post_id4586');
INSERT INTO `oid` VALUES('4589','2015-06-09 23:03:08','post_product');
INSERT INTO `oid` VALUES('4590','2015-06-09 23:03:08','relationships');
INSERT INTO `oid` VALUES('4591','2015-06-09 23:03:08','post_id4589');
INSERT INTO `oid` VALUES('4592','2015-06-09 23:03:13','post_product');
INSERT INTO `oid` VALUES('4593','2015-06-09 23:03:13','relationships');
INSERT INTO `oid` VALUES('4594','2015-06-09 23:03:13','post_id4592');
INSERT INTO `oid` VALUES('4595','2015-06-09 23:03:18','post_product');
INSERT INTO `oid` VALUES('4596','2015-06-09 23:03:18','relationships');
INSERT INTO `oid` VALUES('4597','2015-06-09 23:03:18','post_id4595');
INSERT INTO `oid` VALUES('4598','2015-06-09 23:03:22','post_product');
INSERT INTO `oid` VALUES('4599','2015-06-09 23:03:22','relationships');
INSERT INTO `oid` VALUES('4600','2015-06-09 23:03:22','post_id4598');
INSERT INTO `oid` VALUES('4601','2015-06-09 23:03:32','post_product');
INSERT INTO `oid` VALUES('4602','2015-06-09 23:03:32','relationships');
INSERT INTO `oid` VALUES('4603','2015-06-09 23:03:32','post_id4601');
INSERT INTO `oid` VALUES('4604','2015-06-09 23:03:52','post_product');
INSERT INTO `oid` VALUES('4605','2015-06-09 23:03:52','relationships');
INSERT INTO `oid` VALUES('4606','2015-06-09 23:03:52','post_id4604');
INSERT INTO `oid` VALUES('4607','2015-06-09 23:04:32','post_product');
INSERT INTO `oid` VALUES('4608','2015-06-09 23:04:32','relationships');
INSERT INTO `oid` VALUES('4609','2015-06-09 23:04:32','post_id4607');
INSERT INTO `oid` VALUES('4610','2015-06-09 23:04:38','post_product');
INSERT INTO `oid` VALUES('4611','2015-06-09 23:04:38','relationships');
INSERT INTO `oid` VALUES('4612','2015-06-09 23:04:38','post_id4610');
INSERT INTO `oid` VALUES('4613','2015-06-09 23:04:43','post_product');
INSERT INTO `oid` VALUES('4614','2015-06-09 23:04:43','relationships');
INSERT INTO `oid` VALUES('4615','2015-06-09 23:04:43','post_id4613');
INSERT INTO `oid` VALUES('4616','2015-06-09 23:05:03','post_product');
INSERT INTO `oid` VALUES('4617','2015-06-09 23:05:03','relationships');
INSERT INTO `oid` VALUES('4618','2015-06-09 23:05:03','post_id4616');
INSERT INTO `oid` VALUES('4619','2015-06-09 23:05:15','post_product');
INSERT INTO `oid` VALUES('4620','2015-06-09 23:05:15','relationships');
INSERT INTO `oid` VALUES('4621','2015-06-09 23:05:15','post_id4619');
INSERT INTO `oid` VALUES('4622','2015-06-09 23:05:21','post_product');
INSERT INTO `oid` VALUES('4623','2015-06-09 23:05:21','relationships');
INSERT INTO `oid` VALUES('4624','2015-06-09 23:05:21','post_id4622');
INSERT INTO `oid` VALUES('4625','2015-06-09 23:05:26','post_product');
INSERT INTO `oid` VALUES('4626','2015-06-09 23:05:26','relationships');
INSERT INTO `oid` VALUES('4627','2015-06-09 23:05:26','post_id4625');
INSERT INTO `oid` VALUES('4628','2015-06-09 23:07:11','post_product');
INSERT INTO `oid` VALUES('4629','2015-06-09 23:07:11','relationships');
INSERT INTO `oid` VALUES('4630','2015-06-09 23:07:11','post_id4628');
INSERT INTO `oid` VALUES('4631','2015-06-09 23:07:16','post_product');
INSERT INTO `oid` VALUES('4632','2015-06-09 23:07:16','relationships');
INSERT INTO `oid` VALUES('4633','2015-06-09 23:07:16','post_id4631');
INSERT INTO `oid` VALUES('4634','2015-06-09 23:07:21','post_product');
INSERT INTO `oid` VALUES('4635','2015-06-09 23:07:21','relationships');
INSERT INTO `oid` VALUES('4636','2015-06-09 23:07:21','post_id4634');
INSERT INTO `oid` VALUES('4637','2015-06-09 23:07:29','post_product');
INSERT INTO `oid` VALUES('4638','2015-06-09 23:07:29','relationships');
INSERT INTO `oid` VALUES('4639','2015-06-09 23:07:29','post_id4637');
INSERT INTO `oid` VALUES('4640','2015-06-09 23:07:40','post_product');
INSERT INTO `oid` VALUES('4641','2015-06-09 23:07:40','relationships');
INSERT INTO `oid` VALUES('4642','2015-06-09 23:07:40','post_id4640');
INSERT INTO `oid` VALUES('4643','2015-06-09 23:07:45','post_product');
INSERT INTO `oid` VALUES('4644','2015-06-09 23:07:45','relationships');
INSERT INTO `oid` VALUES('4645','2015-06-09 23:07:45','post_id4643');
INSERT INTO `oid` VALUES('4646','2015-06-09 23:08:31','post_product');
INSERT INTO `oid` VALUES('4647','2015-06-09 23:08:31','relationships');
INSERT INTO `oid` VALUES('4648','2015-06-09 23:08:31','post_id4646');
INSERT INTO `oid` VALUES('4649','2015-06-09 23:08:36','post_product');
INSERT INTO `oid` VALUES('4650','2015-06-09 23:08:36','relationships');
INSERT INTO `oid` VALUES('4651','2015-06-09 23:08:36','post_id4649');
INSERT INTO `oid` VALUES('4652','2015-06-09 23:08:52','post_product');
INSERT INTO `oid` VALUES('4653','2015-06-09 23:08:52','relationships');
INSERT INTO `oid` VALUES('4654','2015-06-09 23:08:52','post_id4652');
INSERT INTO `oid` VALUES('4655','2015-06-09 23:12:17','post_product');
INSERT INTO `oid` VALUES('4656','2015-06-09 23:12:17','relationships');
INSERT INTO `oid` VALUES('4657','2015-06-09 23:12:17','post_id4655');
INSERT INTO `oid` VALUES('4658','2015-06-09 23:12:23','post_product');
INSERT INTO `oid` VALUES('4659','2015-06-09 23:12:23','relationships');
INSERT INTO `oid` VALUES('4660','2015-06-09 23:12:23','post_id4658');
INSERT INTO `oid` VALUES('4661','2015-06-09 23:12:28','post_product');
INSERT INTO `oid` VALUES('4662','2015-06-09 23:12:28','relationships');
INSERT INTO `oid` VALUES('4663','2015-06-09 23:12:29','post_id4661');
INSERT INTO `oid` VALUES('4664','2015-06-09 23:12:36','post_product');
INSERT INTO `oid` VALUES('4665','2015-06-09 23:12:36','relationships');
INSERT INTO `oid` VALUES('4666','2015-06-09 23:12:36','post_id4664');
INSERT INTO `oid` VALUES('4667','2015-06-09 23:12:41','post_product');
INSERT INTO `oid` VALUES('4668','2015-06-09 23:12:41','relationships');
INSERT INTO `oid` VALUES('4669','2015-06-09 23:12:41','post_id4667');
INSERT INTO `oid` VALUES('4670','2015-06-09 23:12:47','post_product');
INSERT INTO `oid` VALUES('4671','2015-06-09 23:12:47','relationships');
INSERT INTO `oid` VALUES('4672','2015-06-09 23:12:47','post_id4670');
INSERT INTO `oid` VALUES('4673','2015-06-09 23:12:59','post_product');
INSERT INTO `oid` VALUES('4674','2015-06-09 23:12:59','relationships');
INSERT INTO `oid` VALUES('4675','2015-06-09 23:12:59','post_id4673');
INSERT INTO `oid` VALUES('4676','2015-06-09 23:13:05','post_product');
INSERT INTO `oid` VALUES('4677','2015-06-09 23:13:05','relationships');
INSERT INTO `oid` VALUES('4678','2015-06-09 23:13:05','post_id4676');
INSERT INTO `oid` VALUES('4679','2015-06-09 23:13:13','post_product');
INSERT INTO `oid` VALUES('4680','2015-06-09 23:13:13','relationships');
INSERT INTO `oid` VALUES('4681','2015-06-09 23:13:13','post_id4679');
INSERT INTO `oid` VALUES('4682','2015-06-09 23:13:19','post_product');
INSERT INTO `oid` VALUES('4683','2015-06-09 23:13:19','relationships');
INSERT INTO `oid` VALUES('4684','2015-06-09 23:13:19','post_id4682');
INSERT INTO `oid` VALUES('4685','2015-06-09 23:13:25','post_product');
INSERT INTO `oid` VALUES('4686','2015-06-09 23:13:25','relationships');
INSERT INTO `oid` VALUES('4687','2015-06-09 23:13:25','post_id4685');
INSERT INTO `oid` VALUES('4688','2015-06-09 23:13:31','post_product');
INSERT INTO `oid` VALUES('4689','2015-06-09 23:13:31','relationships');
INSERT INTO `oid` VALUES('4690','2015-06-09 23:13:31','post_id4688');
INSERT INTO `oid` VALUES('4691','2015-06-09 23:13:36','post_product');
INSERT INTO `oid` VALUES('4692','2015-06-09 23:13:36','relationships');
INSERT INTO `oid` VALUES('4693','2015-06-09 23:13:36','post_id4691');
INSERT INTO `oid` VALUES('4694','2015-06-09 23:13:41','post_product');
INSERT INTO `oid` VALUES('4695','2015-06-09 23:13:41','relationships');
INSERT INTO `oid` VALUES('4696','2015-06-09 23:13:41','post_id4694');
INSERT INTO `oid` VALUES('4697','2015-06-09 23:13:47','post_product');
INSERT INTO `oid` VALUES('4698','2015-06-09 23:13:47','relationships');
INSERT INTO `oid` VALUES('4699','2015-06-09 23:13:47','post_id4697');
INSERT INTO `oid` VALUES('4700','2015-06-09 23:13:52','post_product');
INSERT INTO `oid` VALUES('4701','2015-06-09 23:13:52','relationships');
INSERT INTO `oid` VALUES('4702','2015-06-09 23:13:52','post_id4700');
INSERT INTO `oid` VALUES('4703','2015-06-09 23:15:12','post_product');
INSERT INTO `oid` VALUES('4704','2015-06-09 23:15:12','relationships');
INSERT INTO `oid` VALUES('4705','2015-06-09 23:15:12','post_id4703');
INSERT INTO `oid` VALUES('4706','2015-06-09 23:15:17','post_product');
INSERT INTO `oid` VALUES('4707','2015-06-09 23:15:17','relationships');
INSERT INTO `oid` VALUES('4708','2015-06-09 23:15:17','post_id4706');
INSERT INTO `oid` VALUES('4709','2015-06-09 23:15:22','post_product');
INSERT INTO `oid` VALUES('4710','2015-06-09 23:15:22','relationships');
INSERT INTO `oid` VALUES('4711','2015-06-09 23:15:22','post_id4709');
INSERT INTO `oid` VALUES('4712','2015-06-09 23:16:33','post_product');
INSERT INTO `oid` VALUES('4713','2015-06-09 23:16:33','relationships');
INSERT INTO `oid` VALUES('4714','2015-06-09 23:16:33','post_id4712');
INSERT INTO `oid` VALUES('4715','2015-06-09 23:16:38','post_product');
INSERT INTO `oid` VALUES('4716','2015-06-09 23:16:38','relationships');
INSERT INTO `oid` VALUES('4717','2015-06-09 23:16:38','post_id4715');
INSERT INTO `oid` VALUES('4718','2015-06-09 23:16:43','post_product');
INSERT INTO `oid` VALUES('4719','2015-06-09 23:16:43','relationships');
INSERT INTO `oid` VALUES('4720','2015-06-09 23:16:43','post_id4718');
INSERT INTO `oid` VALUES('4721','2015-06-09 23:16:48','post_product');
INSERT INTO `oid` VALUES('4722','2015-06-09 23:16:48','relationships');
INSERT INTO `oid` VALUES('4723','2015-06-09 23:16:48','post_id4721');
INSERT INTO `oid` VALUES('4724','2015-06-09 23:16:53','post_product');
INSERT INTO `oid` VALUES('4725','2015-06-09 23:16:53','relationships');
INSERT INTO `oid` VALUES('4726','2015-06-09 23:16:53','post_id4724');
INSERT INTO `oid` VALUES('4727','2015-06-09 23:16:59','post_product');
INSERT INTO `oid` VALUES('4728','2015-06-09 23:16:59','relationships');
INSERT INTO `oid` VALUES('4729','2015-06-09 23:16:59','post_id4727');
INSERT INTO `oid` VALUES('4730','2015-06-09 23:18:26','post_product');
INSERT INTO `oid` VALUES('4731','2015-06-09 23:18:26','relationships');
INSERT INTO `oid` VALUES('4732','2015-06-09 23:18:26','post_id4730');
INSERT INTO `oid` VALUES('4733','2015-06-09 23:18:32','post_product');
INSERT INTO `oid` VALUES('4734','2015-06-09 23:18:32','relationships');
INSERT INTO `oid` VALUES('4735','2015-06-09 23:18:32','post_id4733');
INSERT INTO `oid` VALUES('4736','2015-06-09 23:18:36','post_product');
INSERT INTO `oid` VALUES('4737','2015-06-09 23:18:36','relationships');
INSERT INTO `oid` VALUES('4738','2015-06-09 23:18:36','post_id4736');
INSERT INTO `oid` VALUES('4739','2015-06-09 23:18:41','post_product');
INSERT INTO `oid` VALUES('4740','2015-06-09 23:18:41','relationships');
INSERT INTO `oid` VALUES('4741','2015-06-09 23:18:41','post_id4739');
INSERT INTO `oid` VALUES('4742','2015-06-09 23:18:46','post_product');
INSERT INTO `oid` VALUES('4743','2015-06-09 23:18:46','relationships');
INSERT INTO `oid` VALUES('4744','2015-06-09 23:18:46','post_id4742');
INSERT INTO `oid` VALUES('4745','2015-06-09 23:18:55','post_product');
INSERT INTO `oid` VALUES('4746','2015-06-09 23:18:55','relationships');
INSERT INTO `oid` VALUES('4747','2015-06-09 23:18:55','post_id4745');
INSERT INTO `oid` VALUES('4748','2015-06-09 23:19:00','post_product');
INSERT INTO `oid` VALUES('4749','2015-06-09 23:19:00','relationships');
INSERT INTO `oid` VALUES('4750','2015-06-09 23:19:00','post_id4748');
INSERT INTO `oid` VALUES('4751','2015-06-09 23:19:54','post_product');
INSERT INTO `oid` VALUES('4752','2015-06-09 23:19:54','relationships');
INSERT INTO `oid` VALUES('4753','2015-06-09 23:19:54','post_id4751');
INSERT INTO `oid` VALUES('4754','2015-06-09 23:27:35','post_honor');
INSERT INTO `oid` VALUES('4755','2015-06-09 23:30:16','post_honor');
INSERT INTO `oid` VALUES('4756','2015-06-09 23:30:29','post_honor');
INSERT INTO `oid` VALUES('4757','2015-06-09 23:30:45','post_honor');
INSERT INTO `oid` VALUES('4758','2015-06-09 23:31:08','post_honor');
INSERT INTO `oid` VALUES('4759','2015-06-09 23:31:21','post_honor');
INSERT INTO `oid` VALUES('4760','2015-06-09 23:35:29','post_case');
INSERT INTO `oid` VALUES('4761','2015-06-09 23:35:35','post_case');
INSERT INTO `oid` VALUES('4762','2015-06-09 23:35:41','post_case');
INSERT INTO `oid` VALUES('4763','2015-06-09 23:35:49','post_case');
INSERT INTO `oid` VALUES('4764','2015-06-09 23:35:54','post_case');
INSERT INTO `oid` VALUES('4765','2015-06-09 23:36:05','post_case');
INSERT INTO `oid` VALUES('4766','2015-06-09 23:36:12','post_case');
INSERT INTO `oid` VALUES('4767','2015-06-09 23:36:18','post_case');
INSERT INTO `oid` VALUES('4768','2015-06-09 23:36:24','post_case');
INSERT INTO `oid` VALUES('4769','2015-06-09 23:36:34','post_case');
INSERT INTO `oid` VALUES('4770','2015-06-09 23:36:40','post_case');
INSERT INTO `oid` VALUES('4771','2015-06-09 23:36:47','post_case');
INSERT INTO `oid` VALUES('4772','2015-06-09 23:36:53','post_case');
INSERT INTO `oid` VALUES('4773','2015-06-09 23:36:59','post_case');
INSERT INTO `oid` VALUES('4774','2015-06-09 23:37:05','post_case');
INSERT INTO `oid` VALUES('4775','2015-06-09 23:37:11','post_case');
INSERT INTO `oid` VALUES('4776','2015-06-09 23:37:17','post_case');
INSERT INTO `oid` VALUES('4777','2015-06-09 23:37:22','post_case');
INSERT INTO `oid` VALUES('4778','2015-06-09 23:37:34','post_case');
INSERT INTO `oid` VALUES('4779','2015-06-09 23:37:40','post_case');
INSERT INTO `oid` VALUES('4780','2015-06-09 23:37:47','post_case');
INSERT INTO `oid` VALUES('4781','2015-06-09 23:38:04','post_case');
INSERT INTO `oid` VALUES('4782','2015-06-09 23:38:10','post_case');
INSERT INTO `oid` VALUES('4783','2015-06-09 23:38:15','post_case');
INSERT INTO `oid` VALUES('4784','2015-06-09 23:38:24','post_case');
INSERT INTO `oid` VALUES('4785','2015-06-09 23:38:29','post_case');
INSERT INTO `oid` VALUES('4786','2015-06-09 23:38:35','post_case');
INSERT INTO `oid` VALUES('4787','2015-06-09 23:38:40','post_case');
INSERT INTO `oid` VALUES('4788','2015-06-09 23:38:46','post_case');
INSERT INTO `oid` VALUES('4789','2015-06-09 23:38:52','post_case');
INSERT INTO `oid` VALUES('4790','2015-06-09 23:38:59','post_case');
INSERT INTO `oid` VALUES('4791','2015-06-09 23:39:09','post_case');
INSERT INTO `oid` VALUES('4792','2015-06-09 23:39:15','post_case');
INSERT INTO `oid` VALUES('4793','2015-06-09 23:39:21','post_case');
INSERT INTO `oid` VALUES('4794','2015-06-09 23:39:27','post_case');
INSERT INTO `oid` VALUES('4795','2015-06-09 23:39:35','post_case');
INSERT INTO `oid` VALUES('4796','2015-06-09 23:39:41','post_case');
INSERT INTO `oid` VALUES('4797','2015-06-09 23:39:47','post_case');
INSERT INTO `oid` VALUES('4798','2015-06-09 23:39:53','post_case');
INSERT INTO `oid` VALUES('4230','2015-05-18 07:21:37','dictsave');
INSERT INTO `oid` VALUES('4231','2015-05-18 07:21:37','dictsave');
INSERT INTO `oid` VALUES('4232','2015-05-18 07:21:37','dictsave');
INSERT INTO `oid` VALUES('4233','2015-05-18 07:21:37','dictsave');
INSERT INTO `oid` VALUES('4234','2015-05-18 07:21:46','dictsave');
INSERT INTO `oid` VALUES('4235','2015-05-18 07:21:46','dictsave');
INSERT INTO `oid` VALUES('4236','2015-05-18 07:21:46','dictsave');
INSERT INTO `oid` VALUES('4237','2015-05-18 07:21:46','dictsave');
INSERT INTO `oid` VALUES('4238','2015-05-18 07:21:47','dictsave');
INSERT INTO `oid` VALUES('4239','2015-05-18 07:21:47','dictsave');
INSERT INTO `oid` VALUES('4240','2015-05-18 07:21:47','dictsave');
INSERT INTO `oid` VALUES('4241','2015-05-18 07:21:47','dictsave');
INSERT INTO `oid` VALUES('4242','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4243','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4244','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4245','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4246','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4247','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4248','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4249','2015-05-18 07:21:48','dictsave');
INSERT INTO `oid` VALUES('4250','2015-05-18 07:21:49','dictsave');
INSERT INTO `oid` VALUES('4251','2015-05-18 07:21:49','dictsave');
INSERT INTO `oid` VALUES('4252','2015-05-18 07:21:49','dictsave');
INSERT INTO `oid` VALUES('4253','2015-05-18 07:21:49','dictsave');
INSERT INTO `oid` VALUES('4254','2015-05-18 07:22:45','post_article');
INSERT INTO `oid` VALUES('4255','2015-05-18 07:26:44','post_4254');
INSERT INTO `oid` VALUES('4256','2015-05-18 07:26:45','post_4255');
INSERT INTO `oid` VALUES('4257','2015-05-18 07:26:45','post_4254');
INSERT INTO `oid` VALUES('4258','2015-05-18 07:26:47','post_4257');
INSERT INTO `oid` VALUES('4259','2015-05-18 07:26:47','post_4256');
INSERT INTO `oid` VALUES('4260','2015-05-18 07:26:47','post_4255');
INSERT INTO `oid` VALUES('4261','2015-05-18 07:26:47','post_4254');
INSERT INTO `oid` VALUES('4262','2015-05-18 07:26:51','post_4260');
INSERT INTO `oid` VALUES('4263','2015-05-18 07:26:51','post_4261');
INSERT INTO `oid` VALUES('4264','2015-05-18 07:26:51','post_4259');
INSERT INTO `oid` VALUES('4265','2015-05-18 07:26:51','post_4258');
INSERT INTO `oid` VALUES('4266','2015-05-18 07:26:51','post_4257');
INSERT INTO `oid` VALUES('4267','2015-05-18 07:26:51','post_4255');
INSERT INTO `oid` VALUES('4268','2015-05-18 07:26:51','post_4256');
INSERT INTO `oid` VALUES('4269','2015-05-18 07:26:52','post_4254');
--
-- 表的结构options
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '设置的标识',
  `option_key` varchar(100) DEFAULT NULL COMMENT 'key',
  `option_value` longblob COMMENT 't',
  `autoload` char(10) DEFAULT NULL COMMENT '是否自动加载',
  `member_id` bigint(20) DEFAULT '0' COMMENT '用户的编号',
  `site_id` bigint(20) DEFAULT '0' COMMENT '站点信息',
  `option_memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_key` (`option_key`) USING BTREE,
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `autoload` (`autoload`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='配置设置参数';

--
-- 转存表中的数据 options
--

INSERT INTO `options` VALUES('2','site_setting','a:6:{s:6:\"okey00\";s:39:\"河北恒益诚舞台设备有限公司\";s:6:\"okey01\";s:44:\"/upload/2015/06/02/22/33_143325558821945.jpg\";s:6:\"okey02\";s:84:\"影院座椅,活动看台,座椅,伸缩看台,固定看台,舞台设备,看台价格\";s:6:\"okey03\";s:190:\"河北恒益诚舞台设备有限公司主要生产影院座椅,舞台设备,伸缩看台,活动看台,固定看台,公共座椅等质量优越联系电话：18631278383联系人：陈经理\";s:6:\"okey04\";s:0:\"\";s:6:\"okey05\";s:36:\"站内公告站内公告站内公告\";}',NULL,'0','0',NULL);
INSERT INTO `options` VALUES('15','about-us',NULL,NULL,'0','0',NULL);
INSERT INTO `options` VALUES('16','site_smtp',NULL,NULL,'0','0',NULL);
INSERT INTO `options` VALUES('17','site_block','a:3:{s:6:\"okey02\";s:20:\"电话：15832222279\";s:6:\"okey00\";s:1089:\"&lt;table class=&quot;ke-zeroborder&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;725&quot;&gt;\n	&lt;tbody&gt;\n		&lt;tr&gt;\n			&lt;td align=&quot;center&quot; height=&quot;141&quot; width=&quot;231&quot;&gt;\n				&lt;img src=&quot;/upload/attached/image/20150609/20150609132817_57400.jpg&quot; alt=&quot;&quot; height=&quot;108&quot; width=&quot;197&quot; /&gt; \n			&lt;/td&gt;\n			&lt;td width=&quot;498&quot;&gt;\n				&lt;span style=&quot;font-size:14px;&quot;&gt;河北恒益诚舞台设备有限公司是专业生产、设计、安装剧场、大专院校多功能厅、体育场馆等场所伸缩看台座椅、公共座椅及专业从事剧场、演播厅等场所舞台机械、灯光音响等工程的设计、安装、调试、培训的专业公司，由舞台工程技术专家及看台座椅技术骨干组成。核心目标：将现代科学技术广泛运&lt;a target=&quot;_blank&quot; href=&quot;/index.php/about-us&quot;&gt;【详细】&lt;/a&gt;&lt;/span&gt;&lt;br /&gt;\n			&lt;/td&gt;\n		&lt;/tr&gt;\n	&lt;/tbody&gt;\n&lt;/table&gt;\";s:6:\"okey01\";s:152:\"电话：0312-5569000&lt;br /&gt;\n手机：18631278383&lt;br /&gt;\n传真：0312-5717388&lt;br /&gt;\n地址：河北省保定市雄县孤庄头工业区\";}',NULL,'0','0',NULL);
INSERT INTO `options` VALUES('18','about-us1',NULL,NULL,'0','0',NULL);
--
-- 表的结构posts
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) DEFAULT '0' COMMENT '站点标识',
  `member_id` bigint(20) DEFAULT '0' COMMENT '发布人信息',
  `post_alias` varchar(32) DEFAULT NULL COMMENT '别名',
  `post_title` varchar(512) DEFAULT NULL,
  `post_date` datetime DEFAULT NULL COMMENT '发布时间',
  `post_excerpt` text COMMENT '摘要',
  `post_content` longtext COMMENT '文章内容',
  `post_status` char(32) DEFAULT NULL COMMENT '发布状态',
  `post_comment_status` char(32) DEFAULT NULL COMMENT '评论状态',
  `post_parent` varchar(20) DEFAULT '0' COMMENT '上一级页面id',
  `post_type` char(32) DEFAULT NULL COMMENT '文章的类型',
  `post_mime_type` char(32) DEFAULT NULL COMMENT '信息的mime信息',
  `post_comment_count` bigint(20) DEFAULT '0' COMMENT '点击量',
  `post_ex_attr` longblob COMMENT '其他附属属性',
  `post_order` bigint(20) DEFAULT '0' COMMENT '排序字段',
  `post_key1` varchar(255) DEFAULT NULL,
  `post_key2` varchar(255) DEFAULT NULL,
  `post_key3` varchar(255) DEFAULT NULL,
  `post_key4` varchar(255) DEFAULT NULL,
  `post_key5` varchar(255) DEFAULT NULL,
  `post_key6` varchar(255) DEFAULT NULL,
  `post_key7` varchar(255) DEFAULT NULL,
  `post_key8` varchar(255) DEFAULT NULL,
  `post_key9` text,
  `post_key10` text,
  PRIMARY KEY (`post_id`),
  KEY `site_id` (`site_id`) USING BTREE,
  KEY `member_id` (`member_id`) USING BTREE,
  KEY `post_date` (`post_date`) USING BTREE,
  KEY `post_status` (`post_status`) USING BTREE,
  KEY `post_type` (`post_type`) USING BTREE,
  KEY `post_order` (`post_order`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4799 DEFAULT CHARSET=utf8 COMMENT='信息内容表';

--
-- 转存表中的数据 posts
--

INSERT INTO `posts` VALUES('4254','0','1',NULL,'标题','2015-05-18 07:22:45','简介','内容',NULL,NULL,'0','article',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4325','0','1',NULL,'1111','2015-06-02 22:58:15','/upload/2015/06/02/22/58_143325709117389.jpg','111111111',NULL,NULL,'0','carousel',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4326','0','1',NULL,'222222222222222222','2015-06-02 22:58:34','/upload/2015/06/02/22/58_14332571067977.jpg','22222222222222222222222',NULL,NULL,'0','carousel',NULL,'0','a:0:{}','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4327','0','1',NULL,'333333','2015-06-02 22:58:49','/upload/2015/06/02/22/58_14332571243484.jpg','333333333333333333333333333',NULL,NULL,'0','carousel',NULL,'0','a:0:{}','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4507','0','1',NULL,'报告厅座椅','2015-06-09 21:57:21',NULL,'报告厅座椅',NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/57_143385823516312.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4510','0','1',NULL,'报告厅座椅','2015-06-09 21:57:32',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/57_14338582478197.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4513','0','1',NULL,'报告厅座椅','2015-06-09 21:57:39',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/58_143385832619920.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4516','0','1',NULL,'报告厅座椅','2015-06-09 21:57:51',NULL,'报告厅座椅',NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/57_14338582752712.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4523','0','1',NULL,'报告厅座椅','2015-06-09 21:59:40',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/59_143385837828362.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4526','0','1',NULL,'报告厅座椅','2015-06-09 21:59:51',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/59_14338583852797.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4529','0','1',NULL,'报告厅座椅','2015-06-09 22:00:05',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/21/59_143385839928828.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4532','0','1',NULL,'报告厅座椅','2015-06-09 22:00:19',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/00_143385841610759.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4535','0','1',NULL,'报告厅座椅','2015-06-09 22:00:29',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/00_143385842631262.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4538','0','1',NULL,'报告厅座椅','2015-06-09 22:00:41',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/00_143385843832657.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4541','0','1',NULL,'报告厅座椅','2015-06-09 22:50:25',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/50_143386142028417.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4544','0','1',NULL,'报告厅座椅','2015-06-09 22:50:39',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/50_143386143624832.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4547','0','1',NULL,'报告厅座椅','2015-06-09 22:50:48',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/50_143386144618427.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4550','0','1',NULL,'报告厅座椅','2015-06-09 22:51:01',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/50_14338614589707.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4553','0','1',NULL,'报告厅座椅','2015-06-09 22:51:11',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_143386146720882.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4556','0','1',NULL,'报告厅座椅','2015-06-09 22:51:20',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_143386147620693.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4559','0','1',NULL,'报告厅座椅','2015-06-09 22:51:27',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_14338614841572.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4562','0','1',NULL,'报告厅座椅','2015-06-09 22:51:36',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_143386149111695.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4565','0','1',NULL,'报告厅座椅','2015-06-09 22:51:48',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_14338615041126.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4568','0','1',NULL,'报告厅座椅','2015-06-09 22:51:57',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/51_14338615132809.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4571','0','1',NULL,'报告厅座椅','2015-06-09 22:52:08',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/52_143386152621720.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4574','0','1',NULL,'报告厅座椅','2015-06-09 22:52:16',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4499\";}}','8','/upload/2015/06/09/22/52_14338615334915.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4577','0','1',NULL,'伸缩看台','2015-06-09 23:02:41',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/02_14338621591390.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4580','0','1',NULL,'伸缩看台','2015-06-09 23:02:47',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/02_143386216610273.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4583','0','1',NULL,'伸缩看台','2015-06-09 23:02:53',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/02_143386217224224.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4586','0','1',NULL,'伸缩看台','2015-06-09 23:02:59',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/02_14338621787195.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4589','0','1',NULL,'伸缩看台','2015-06-09 23:03:08',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386218627593.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4592','0','1',NULL,'伸缩看台','2015-06-09 23:03:13',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386219210472.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4595','0','1',NULL,'伸缩看台','2015-06-09 23:03:18',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386219726499.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4598','0','1',NULL,'伸缩看台','2015-06-09 23:03:22',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386219726499.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4601','0','1',NULL,'伸缩看台','2015-06-09 23:03:32',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386221130321.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4604','0','1',NULL,'伸缩看台','2015-06-09 23:03:52',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/03_143386223011801.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4607','0','1',NULL,'伸缩看台','2015-06-09 23:04:32',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/04_143386227031670.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4610','0','1',NULL,'伸缩看台','2015-06-09 23:04:38',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/04_143386227620361.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4613','0','1',NULL,'伸缩看台','2015-06-09 23:04:43',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/04_143386228223464.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4616','0','1',NULL,'伸缩看台','2015-06-09 23:05:03',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/05_143386230130656.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4619','0','1',NULL,'伸缩看台','2015-06-09 23:05:15',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/05_1433862313681.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4622','0','1',NULL,'伸缩看台','2015-06-09 23:05:21',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/05_143386232015176.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4625','0','1',NULL,'伸缩看台','2015-06-09 23:05:26',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4500\";}}','8','/upload/2015/06/09/23/05_143386232525443.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4628','0','1',NULL,'活动看台座椅','2015-06-09 23:07:11',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_14338624293350.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4631','0','1',NULL,'活动看台座椅','2015-06-09 23:07:16',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_143386243518025.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4634','0','1',NULL,'活动看台座椅','2015-06-09 23:07:21',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_143386244019976.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4637','0','1',NULL,'活动看台座椅','2015-06-09 23:07:29',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_14338624487317.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4640','0','1',NULL,'活动看台座椅','2015-06-09 23:07:40',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_143386245918765.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4643','0','1',NULL,'活动看台座椅','2015-06-09 23:07:45',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/07_143386246418556.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4646','0','1',NULL,'活动看台座椅','2015-06-09 23:08:31',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/08_143386251032142.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4649','0','1',NULL,'活动看台座椅','2015-06-09 23:08:36',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/08_143386251524769.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4652','0','1',NULL,'活动看台座椅','2015-06-09 23:08:52',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4501\";}}','8','/upload/2015/06/09/23/08_143386253023627.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4655','0','1',NULL,'礼堂座椅','2015-06-09 23:12:17',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_14338627357992.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4658','0','1',NULL,'礼堂座椅','2015-06-09 23:12:23',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_143386274210003.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4661','0','1',NULL,'礼堂座椅','2015-06-09 23:12:28',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_143386274720314.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4664','0','1',NULL,'礼堂座椅','2015-06-09 23:12:36',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_14338627567613.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4667','0','1',NULL,'礼堂座椅','2015-06-09 23:12:41',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_143386276116044.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4670','0','1',NULL,'礼堂座椅','2015-06-09 23:12:47',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_143386276624663.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4673','0','1',NULL,'礼堂座椅','2015-06-09 23:12:59',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/12_1433862778698.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4676','0','1',NULL,'礼堂座椅','2015-06-09 23:13:05',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386278416029.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4679','0','1',NULL,'礼堂座椅','2015-06-09 23:13:13',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_14338627928027.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4682','0','1',NULL,'礼堂座椅','2015-06-09 23:13:19',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386279810505.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4685','0','1',NULL,'礼堂座椅','2015-06-09 23:13:25',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_14338628046952.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4688','0','1',NULL,'礼堂座椅','2015-06-09 23:13:31',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386281025283.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4691','0','1',NULL,'礼堂座椅','2015-06-09 23:13:36',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386281527569.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4694','0','1',NULL,'礼堂座椅','2015-06-09 23:13:41',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386282024688.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4697','0','1',NULL,'礼堂座椅','2015-06-09 23:13:47',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_14338628265419.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4700','0','1',NULL,'礼堂座椅','2015-06-09 23:13:52',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4502\";}}','8','/upload/2015/06/09/23/13_143386283115826.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4703','0','1',NULL,'情侣座','2015-06-09 23:15:12',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4503\";}}','8','/upload/2015/06/09/23/15_143386291029229.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4706','0','1',NULL,'情侣座','2015-06-09 23:15:17',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4503\";}}','8','/upload/2015/06/09/23/15_143386291613532.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4709','0','1',NULL,'情侣座','2015-06-09 23:15:22',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4503\";}}','8','/upload/2015/06/09/23/15_143386292116199.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4712','0','1',NULL,'体育馆座椅','2015-06-09 23:16:33',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_143386299025977.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4715','0','1',NULL,'体育馆座椅','2015-06-09 23:16:38',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_14338629976488.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4718','0','1',NULL,'体育馆座椅','2015-06-09 23:16:43',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_143386300227059.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4721','0','1',NULL,'体育馆座椅','2015-06-09 23:16:48',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_143386300731866.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4724','0','1',NULL,'体育馆座椅','2015-06-09 23:16:53',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_143386301324413.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4727','0','1',NULL,'体育馆座椅','2015-06-09 23:16:59',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4504\";}}','8','/upload/2015/06/09/23/16_143386301726316.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4730','0','1',NULL,'学生桌座椅','2015-06-09 23:18:26',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386310417119.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4733','0','1',NULL,'学生桌座椅','2015-06-09 23:18:32',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386311132342.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4736','0','1',NULL,'学生桌座椅','2015-06-09 23:18:36',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386311515529.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4739','0','1',NULL,'学生桌座椅','2015-06-09 23:18:41',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386312023880.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4742','0','1',NULL,'学生桌座椅','2015-06-09 23:18:46',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_14338631253427.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4745','0','1',NULL,'学生桌座椅','2015-06-09 23:18:55',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386313516106.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4748','0','1',NULL,'学生桌座椅','2015-06-09 23:19:00',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4505\";}}','8','/upload/2015/06/09/23/18_143386313931629.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4751','0','1',NULL,'固定看台','2015-06-09 23:19:54',NULL,NULL,NULL,NULL,'0','product',NULL,'0','a:1:{s:4:\"Dict\";a:1:{i:4329;s:4:\"4506\";}}','8','/upload/2015/06/09/23/19_143386319210561.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4432','0','1',NULL,'销售网络','2015-06-05 22:26:46','公司简介','&lt;p align=&quot;left&quot; style=&quot;color:#555555;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\n	&lt;img src=&quot;/upload/attached/image/20150609/20150609154117_97322.jpg&quot; alt=&quot;&quot; /&gt;\n&lt;/p&gt;',NULL,NULL,'0','about-us',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4434','0','1',NULL,'公司简介','2015-06-05 22:26:46','公司简介','&lt;p style=&quot;color:#000000;font-family:Simsun;font-size:12px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;&quot;&gt;\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 河北恒益诚舞台设备有限公司是专业生产、设计、安装剧场、大专院校多功能厅、体育场馆等场所伸缩看台座椅、公共座椅及专业从事剧场、演播厅等场所舞台机械、灯光音响等工程的设计、安装、调试、培训的专业公司，由舞台工程技术专家及看台座椅技术骨干组成。核心目标：将现代科学技术广泛运用于表演舞台、看台设计、制作，力求达到科学技术与艺术表演完美结合。&lt;br /&gt;\n公司拥有强大的专业人才队伍机构，坚强的技术实力，其专业设计人员和管理人员涉及：活动伸缩看台座椅，舞台机械、电气、灯光音响等专业。由公司技术人员设计制作的活动伸缩看台，已成功的应用于国内众多单位的体育场馆，多功能厅，演播厅，成功的承揽了国内多个大中型剧场、礼堂、艺术中心、多功能厅、演播厅等场所的舞台机械，灯光音响，伸出升降舞台等工程，并在多个技术领域中获得突破。&lt;br /&gt;\n河北恒益诚舞台设备有限公司在专业剧场，体育场馆，多功能厅，演播厅等伸缩看台座椅，舞台机械的技术方面积累了丰富的经验，可以根据客户的需求和场所的功能需要，提供完美的总体设计方案及工艺图，设计制作、安装严格按照国家的标准规范进行。&lt;br /&gt;\n&amp;nbsp;&amp;nbsp; 河北恒益诚舞台设备有限公司具有良好的工程设计、非标准舞台设备制作、安装、调试、维护一条龙服务体系，可以为客户提供技术咨询服务，工程设计和非标专用的设备设计和加工制造，为客户的使用提供可靠的保证。\n&lt;/p&gt;\n&lt;p style=&quot;color:#000000;font-family:Simsun;font-size:12px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;&quot;&gt;\n	&lt;br /&gt;\n&amp;nbsp;\n&lt;/p&gt;\n&lt;p style=&quot;color:#000000;font-family:Simsun;font-size:12px;font-style:normal;font-weight:normal;text-indent:0px;&quot; align=&quot;center&quot;&gt;\n	&lt;img alt=&quot;&quot; src=&quot;http://www.hengyicheng.com/editor/attached/20120205/20120205073044_77744.jpg&quot; style=&quot;border:0px;&quot; /&gt; \n&lt;/p&gt;',NULL,NULL,'0','about-us',NULL,'0','a:0:{}','15','/upload/2015/06/07/09/18_143363992326984.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4754','0','1',NULL,'先进单位','2015-06-09 23:27:35',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/29_14338637938594.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4755','0','1',NULL,'资质证书','2015-06-09 23:30:16',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/30_143386381010095.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4756','0','1',NULL,'营业执照','2015-06-09 23:30:29',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/30_14338638209510.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4757','0','1',NULL,'优秀会员单位','2015-06-09 23:30:45',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/30_143386383524789.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4758','0','1',NULL,'税务登记证','2015-06-09 23:31:08',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/30_143386385022052.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4759','0','1',NULL,'先进单位','2015-06-09 23:31:21',NULL,NULL,NULL,NULL,'0','honor',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/31_143386387428345.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4797','0','1',NULL,'成功案例','2015-06-09 23:39:47',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386438629623.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4798','0','1',NULL,'成功案例','2015-06-09 23:39:53',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386439231374.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4760','0','1',NULL,'成功案例','2015-06-09 23:35:29',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/35_143386412716847.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4761','0','1',NULL,'成功案例','2015-06-09 23:35:35',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/35_143386413412573.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4762','0','1',NULL,'成功案例','2015-06-09 23:35:41',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/35_143386414016268.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4763','0','1',NULL,'成功案例','2015-06-09 23:35:49',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/35_143386414824898.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4764','0','1',NULL,'成功案例','2015-06-09 23:35:54',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/35_143386415312101.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4765','0','1',NULL,'成功案例','2015-06-09 23:36:05',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386416429621.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4766','0','1',NULL,'成功案例','2015-06-09 23:36:12',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386417021636.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4767','0','1',NULL,'成功案例','2015-06-09 23:36:18',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386417621903.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4768','0','1',NULL,'成功案例','2015-06-09 23:36:24',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386418227590.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4769','0','1',NULL,'成功案例','2015-06-09 23:36:34',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386419212249.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4770','0','1',NULL,'成功案例','2015-06-09 23:36:40',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386419911576.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4771','0','1',NULL,'成功案例','2015-06-09 23:36:47',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386420627923.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4772','0','1',NULL,'成功案例','2015-06-09 23:36:53',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386421211610.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4773','0','1',NULL,'成功案例','2015-06-09 23:36:59',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/36_143386421829629.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4774','0','1',NULL,'成功案例','2015-06-09 23:37:05',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_143386422327820.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4775','0','1',NULL,'成功案例','2015-06-09 23:37:11',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_143386422918007.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4776','0','1',NULL,'成功案例','2015-06-09 23:37:17',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_143386423530638.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4777','0','1',NULL,'成功案例','2015-06-09 23:37:22',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_14338642419057.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4778','0','1',NULL,'成功案例','2015-06-09 23:37:34',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_14338642521760.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4779','0','1',NULL,'成功案例','2015-06-09 23:37:40',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_14338642589563.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4780','0','1',NULL,'成功案例','2015-06-09 23:37:47',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_14338642657874.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4781','0','1',NULL,'成功案例','2015-06-09 23:38:04',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/37_143386427425285.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4782','0','1',NULL,'成功案例','2015-06-09 23:38:10',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386428812244.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4783','0','1',NULL,'成功案例','2015-06-09 23:38:15',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_14338642943615.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4784','0','1',NULL,'成功案例','2015-06-09 23:38:24',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386430213974.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4785','0','1',NULL,'成功案例','2015-06-09 23:38:29',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_14338643085609.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4786','0','1',NULL,'成功案例','2015-06-09 23:38:35',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386431323432.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4787','0','1',NULL,'成功案例','2015-06-09 23:38:40',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386431917571.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4788','0','1',NULL,'成功案例','2015-06-09 23:38:46',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_14338643254906.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4789','0','1',NULL,'成功案例','2015-06-09 23:38:52',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386433124781.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4790','0','1',NULL,'成功案例','2015-06-09 23:38:59',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/38_143386433715868.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4791','0','1',NULL,'成功案例','2015-06-09 23:39:09',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386434727193.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4792','0','1',NULL,'成功案例','2015-06-09 23:39:15',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386435328952.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4793','0','1',NULL,'成功案例','2015-06-09 23:39:21',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386435924691.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4794','0','1',NULL,'成功案例','2015-06-09 23:39:27',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_14338643663642.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4795','0','1',NULL,'成功案例','2015-06-09 23:39:35',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_143386437330749.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4796','0','1',NULL,'成功案例','2015-06-09 23:39:41',NULL,NULL,NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/06/09/23/39_14338643798844.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4481','0','1',NULL,'联系方式','2015-06-06 06:35:51',NULL,'&lt;img src=&quot;/upload/attached/image/20150609/20150609154247_85627.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;',NULL,NULL,'0','contact-us',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4483','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4484','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4485','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4486','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4487','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('4488','0','1',NULL,'企业新闻','2015-06-08 06:34:06','企业新闻','企业新闻企业新闻',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构posts_ex_attr
--

DROP TABLE IF EXISTS `posts_ex_attr`;
CREATE TABLE `posts_ex_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT '0',
  `post_ex_attr_key` char(30) DEFAULT NULL,
  `post_ex_attr_value` longblob,
  `ex_attr_parent` bigint(20) DEFAULT '0',
  `ex_attr_time` datetime DEFAULT NULL COMMENT '建立时间',
  `ex_attr_key1` varchar(255) DEFAULT NULL,
  `ex_attr_key2` varchar(255) DEFAULT NULL,
  `ex_attr_key3` varchar(255) DEFAULT NULL,
  `ex_attr_key4` varchar(255) DEFAULT NULL,
  `ex_attr_key5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`) USING BTREE,
  KEY `post_ex_attr_key` (`post_ex_attr_key`) USING BTREE,
  KEY `ex_attr_parent` (`ex_attr_parent`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4754 DEFAULT CHARSET=utf8 COMMENT='内容的附加字段';

--
-- 转存表中的数据 posts_ex_attr
--

INSERT INTO `posts_ex_attr` VALUES('4402','4400','Dict','a:1:{i:4329;s:4:\"4387\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4429','4426','Dict','a:1:{i:4329;s:4:\"4387\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4431','4425','Dict','a:1:{i:4329;s:4:\"4387\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4509','4507','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4512','4510','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4522','4513','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4520','4516','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4525','4523','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4528','4526','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4531','4529','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4534','4532','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4537','4535','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4540','4538','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4543','4541','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4546','4544','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4549','4547','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4552','4550','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4555','4553','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4558','4556','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4561','4559','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4564','4562','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4567','4565','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4570','4568','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4573','4571','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4576','4574','Dict','a:1:{i:4329;s:4:\"4499\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4579','4577','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4582','4580','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4585','4583','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4588','4586','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4591','4589','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4594','4592','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4597','4595','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4600','4598','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4603','4601','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4606','4604','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4609','4607','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4612','4610','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4615','4613','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4618','4616','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4621','4619','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4624','4622','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4627','4625','Dict','a:1:{i:4329;s:4:\"4500\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4630','4628','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4633','4631','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4636','4634','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4639','4637','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4642','4640','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4645','4643','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4648','4646','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4651','4649','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4654','4652','Dict','a:1:{i:4329;s:4:\"4501\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4657','4655','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4660','4658','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4663','4661','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4666','4664','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4669','4667','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4672','4670','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4675','4673','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4678','4676','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4681','4679','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4684','4682','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4687','4685','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4690','4688','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4693','4691','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4696','4694','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4699','4697','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4702','4700','Dict','a:1:{i:4329;s:4:\"4502\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4705','4703','Dict','a:1:{i:4329;s:4:\"4503\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4708','4706','Dict','a:1:{i:4329;s:4:\"4503\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4711','4709','Dict','a:1:{i:4329;s:4:\"4503\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4714','4712','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4717','4715','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4720','4718','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4723','4721','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4726','4724','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4729','4727','Dict','a:1:{i:4329;s:4:\"4504\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4732','4730','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4735','4733','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4738','4736','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4741','4739','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4744','4742','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4747','4745','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4750','4748','Dict','a:1:{i:4329;s:4:\"4505\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts_ex_attr` VALUES('4753','4751','Dict','a:1:{i:4329;s:4:\"4506\";}','0',NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构relationships
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL COMMENT '站点标识',
  PRIMARY KEY (`id`),
  KEY `post_id` (`object_id`) USING BTREE,
  KEY `term_id` (`term_id`) USING BTREE,
  KEY `site_id` (`site_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4753 DEFAULT CHARSET=utf8 COMMENT='分组与信息内容的关联字段';

--
-- 转存表中的数据 relationships
--

INSERT INTO `relationships` VALUES('4401','4400','4387',NULL);
INSERT INTO `relationships` VALUES('4428','4426','4387',NULL);
INSERT INTO `relationships` VALUES('4430','4425','4387',NULL);
INSERT INTO `relationships` VALUES('4508','4507','4499',NULL);
INSERT INTO `relationships` VALUES('4511','4510','4499',NULL);
INSERT INTO `relationships` VALUES('4521','4513','4499',NULL);
INSERT INTO `relationships` VALUES('4519','4516','4499',NULL);
INSERT INTO `relationships` VALUES('4524','4523','4499',NULL);
INSERT INTO `relationships` VALUES('4527','4526','4499',NULL);
INSERT INTO `relationships` VALUES('4530','4529','4499',NULL);
INSERT INTO `relationships` VALUES('4533','4532','4499',NULL);
INSERT INTO `relationships` VALUES('4536','4535','4499',NULL);
INSERT INTO `relationships` VALUES('4539','4538','4499',NULL);
INSERT INTO `relationships` VALUES('4542','4541','4499',NULL);
INSERT INTO `relationships` VALUES('4545','4544','4499',NULL);
INSERT INTO `relationships` VALUES('4548','4547','4499',NULL);
INSERT INTO `relationships` VALUES('4551','4550','4499',NULL);
INSERT INTO `relationships` VALUES('4554','4553','4499',NULL);
INSERT INTO `relationships` VALUES('4557','4556','4499',NULL);
INSERT INTO `relationships` VALUES('4560','4559','4499',NULL);
INSERT INTO `relationships` VALUES('4563','4562','4499',NULL);
INSERT INTO `relationships` VALUES('4566','4565','4499',NULL);
INSERT INTO `relationships` VALUES('4569','4568','4499',NULL);
INSERT INTO `relationships` VALUES('4572','4571','4499',NULL);
INSERT INTO `relationships` VALUES('4575','4574','4499',NULL);
INSERT INTO `relationships` VALUES('4578','4577','4500',NULL);
INSERT INTO `relationships` VALUES('4581','4580','4500',NULL);
INSERT INTO `relationships` VALUES('4584','4583','4500',NULL);
INSERT INTO `relationships` VALUES('4587','4586','4500',NULL);
INSERT INTO `relationships` VALUES('4590','4589','4500',NULL);
INSERT INTO `relationships` VALUES('4593','4592','4500',NULL);
INSERT INTO `relationships` VALUES('4596','4595','4500',NULL);
INSERT INTO `relationships` VALUES('4599','4598','4500',NULL);
INSERT INTO `relationships` VALUES('4602','4601','4500',NULL);
INSERT INTO `relationships` VALUES('4605','4604','4500',NULL);
INSERT INTO `relationships` VALUES('4608','4607','4500',NULL);
INSERT INTO `relationships` VALUES('4611','4610','4500',NULL);
INSERT INTO `relationships` VALUES('4614','4613','4500',NULL);
INSERT INTO `relationships` VALUES('4617','4616','4500',NULL);
INSERT INTO `relationships` VALUES('4620','4619','4500',NULL);
INSERT INTO `relationships` VALUES('4623','4622','4500',NULL);
INSERT INTO `relationships` VALUES('4626','4625','4500',NULL);
INSERT INTO `relationships` VALUES('4629','4628','4501',NULL);
INSERT INTO `relationships` VALUES('4632','4631','4501',NULL);
INSERT INTO `relationships` VALUES('4635','4634','4501',NULL);
INSERT INTO `relationships` VALUES('4638','4637','4501',NULL);
INSERT INTO `relationships` VALUES('4641','4640','4501',NULL);
INSERT INTO `relationships` VALUES('4644','4643','4501',NULL);
INSERT INTO `relationships` VALUES('4647','4646','4501',NULL);
INSERT INTO `relationships` VALUES('4650','4649','4501',NULL);
INSERT INTO `relationships` VALUES('4653','4652','4501',NULL);
INSERT INTO `relationships` VALUES('4656','4655','4502',NULL);
INSERT INTO `relationships` VALUES('4659','4658','4502',NULL);
INSERT INTO `relationships` VALUES('4662','4661','4502',NULL);
INSERT INTO `relationships` VALUES('4665','4664','4502',NULL);
INSERT INTO `relationships` VALUES('4668','4667','4502',NULL);
INSERT INTO `relationships` VALUES('4671','4670','4502',NULL);
INSERT INTO `relationships` VALUES('4674','4673','4502',NULL);
INSERT INTO `relationships` VALUES('4677','4676','4502',NULL);
INSERT INTO `relationships` VALUES('4680','4679','4502',NULL);
INSERT INTO `relationships` VALUES('4683','4682','4502',NULL);
INSERT INTO `relationships` VALUES('4686','4685','4502',NULL);
INSERT INTO `relationships` VALUES('4689','4688','4502',NULL);
INSERT INTO `relationships` VALUES('4692','4691','4502',NULL);
INSERT INTO `relationships` VALUES('4695','4694','4502',NULL);
INSERT INTO `relationships` VALUES('4698','4697','4502',NULL);
INSERT INTO `relationships` VALUES('4701','4700','4502',NULL);
INSERT INTO `relationships` VALUES('4704','4703','4503',NULL);
INSERT INTO `relationships` VALUES('4707','4706','4503',NULL);
INSERT INTO `relationships` VALUES('4710','4709','4503',NULL);
INSERT INTO `relationships` VALUES('4713','4712','4504',NULL);
INSERT INTO `relationships` VALUES('4716','4715','4504',NULL);
INSERT INTO `relationships` VALUES('4719','4718','4504',NULL);
INSERT INTO `relationships` VALUES('4722','4721','4504',NULL);
INSERT INTO `relationships` VALUES('4725','4724','4504',NULL);
INSERT INTO `relationships` VALUES('4728','4727','4504',NULL);
INSERT INTO `relationships` VALUES('4731','4730','4505',NULL);
INSERT INTO `relationships` VALUES('4734','4733','4505',NULL);
INSERT INTO `relationships` VALUES('4737','4736','4505',NULL);
INSERT INTO `relationships` VALUES('4740','4739','4505',NULL);
INSERT INTO `relationships` VALUES('4743','4742','4505',NULL);
INSERT INTO `relationships` VALUES('4746','4745','4505',NULL);
INSERT INTO `relationships` VALUES('4749','4748','4505',NULL);
INSERT INTO `relationships` VALUES('4752','4751','4506',NULL);
--
-- 表的结构terms
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms` (
  `term_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `term_type` char(50) DEFAULT NULL COMMENT '分类类型',
  `term_alias` char(32) DEFAULT NULL COMMENT '分类别名',
  `term_name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `term_parent_id` bigint(20) DEFAULT '0' COMMENT '上一级分类',
  `term_description` text COMMENT '分类描述',
  `site_id` bigint(20) DEFAULT '0' COMMENT '所属的站点',
  `term_status` char(10) DEFAULT '1' COMMENT '当前状态',
  `term_count` bigint(20) DEFAULT '0' COMMENT '分类引用数量',
  `term_order` bigint(20) DEFAULT '0',
  `term_ex_attr` longblob,
  `term_key1` varchar(255) DEFAULT NULL,
  `term_key2` varchar(255) DEFAULT NULL,
  `term_key3` varchar(255) DEFAULT NULL,
  `term_key4` varchar(255) DEFAULT NULL,
  `term_key5` varchar(255) DEFAULT NULL,
  `term_key6` varchar(255) DEFAULT NULL,
  `term_key7` varchar(255) DEFAULT NULL,
  `term_key8` varchar(255) DEFAULT NULL,
  `term_key9` text,
  `term_key10` text,
  PRIMARY KEY (`term_id`),
  KEY `term_type` (`term_type`) USING BTREE,
  KEY `term_parent_id` (`term_parent_id`) USING BTREE,
  KEY `term_alias` (`term_alias`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4507 DEFAULT CHARSET=utf8 COMMENT='类别 组别管理';

--
-- 转存表中的数据 terms
--

INSERT INTO `terms` VALUES('4303','type_post','carousel','轮播图','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:8:\"carousel\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('2256','type_option','site_smtp','邮箱设置','0',NULL,'0','1','0','0','a:17:{s:9:\"option_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"option_key\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"option_value\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:8:\"autoload\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"option_memo\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey00\";a:9:{s:5:\"lable\";s:12:\"暂时没有\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey01\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey02\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey03\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey04\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey05\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey06\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey07\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey08\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey09\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4325','type_post','product','产品中心','0',NULL,'0','1','0','0','a:27:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"名称\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"dict__4329\";a:9:{s:5:\"lable\";s:12:\"产品分类\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"7\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:12:\"产品分类\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:12:\"详细内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:7:\"product\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4326','type_category','product','产品分类','0',NULL,'0','1','0','0','a:21:{s:7:\"term_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_name\";a:9:{s:5:\"lable\";s:6:\"名称\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"term_parent_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:16:\"term_description\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"term_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"term_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4328','type_dict','product','产品分类','0',NULL,'0','1','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4329','type_dict',NULL,'产品分类','4328',NULL,'0','1','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4330','type_post','about-us','公司简介','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:8:\"about-us\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4331','type_post','news','新闻中心','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:6:\"分类\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"7\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:29:\"1=公司新闻\n2=行业资讯\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:4:\"news\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4332','type_post','case','成功案例','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:4:\"case\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4333','type_post','contact-us','联系我们','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:10:\"contact-us\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4460','type_menu',NULL,'系统设置','0',NULL,'0','1','0','80',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4459','type_menu',NULL,'文章列表添加','4457',NULL,'0','1','0','90',NULL,NULL,'/admin.php/post/edit/article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4458','type_menu',NULL,'文章列表列表','4457',NULL,'0','1','0','80',NULL,NULL,'/admin.php/post/list/article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4457','type_menu',NULL,'文章列表','0',NULL,'0','1','0','80',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4456','type_menu',NULL,'资质荣誉添加','4454',NULL,'0','1','0','80',NULL,NULL,'/admin.php/post/edit/honor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4455','type_menu',NULL,'资质荣誉列表','4454',NULL,'0','1','0','70',NULL,NULL,'/admin.php/post/list/honor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4454','type_menu',NULL,'资质荣誉','0',NULL,'0','1','0','70',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4453','type_menu',NULL,'联系我们添加','4451',NULL,'0','1','0','70',NULL,NULL,'/admin.php/post/edit/contact-us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4452','type_menu',NULL,'联系我们列表','4451',NULL,'0','1','0','60',NULL,NULL,'/admin.php/post/list/contact-us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4451','type_menu',NULL,'联系我们','0',NULL,'0','1','0','60',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4450','type_menu',NULL,'成功案例添加','4448',NULL,'0','1','0','60',NULL,NULL,'/admin.php/post/edit/case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4449','type_menu',NULL,'成功案例列表','4448',NULL,'0','1','0','50',NULL,NULL,'/admin.php/post/list/case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4448','type_menu',NULL,'成功案例','0',NULL,'0','1','0','50',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4447','type_menu',NULL,'新闻中心添加','4445',NULL,'0','1','0','50',NULL,NULL,'/admin.php/post/edit/news',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4446','type_menu',NULL,'新闻中心列表','4445',NULL,'0','1','0','40',NULL,NULL,'/admin.php/post/list/news',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4445','type_menu',NULL,'新闻中心','0',NULL,'0','1','0','40',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4444','type_menu',NULL,'公司简介添加','4442',NULL,'0','1','0','40',NULL,NULL,'/admin.php/post/edit/about-us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4442','type_menu',NULL,'公司简介','0',NULL,'0','1','0','30',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4443','type_menu',NULL,'公司简介列表','4442',NULL,'0','1','0','30',NULL,NULL,'/admin.php/post/list/about-us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4441','type_menu',NULL,'产品中心添加','4439',NULL,'0','1','0','30',NULL,NULL,'/admin.php/post/edit/product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4439','type_menu',NULL,'产品中心','0',NULL,'0','1','0','20',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4440','type_menu',NULL,'产品中心列表','4439',NULL,'0','1','0','20',NULL,NULL,'/admin.php/post/list/product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4505','type_dict',NULL,'学生课座椅','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/23_143386340223093.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4506','type_dict',NULL,'固定看台','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/23_14338634156908.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4504','type_dict',NULL,'体育馆座椅','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/23_143386338525708.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4503','type_dict',NULL,'情侣座','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/22_14338633688175.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4502','type_dict',NULL,'礼堂座椅','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/22_143386335426911.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4501','type_dict',NULL,'活动看台座椅','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/22_14338633399422.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4500','type_dict',NULL,'伸缩看台','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/45_14338647396551.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4499','type_dict',NULL,'报告厅座椅','4329',NULL,'0','1','0','0',NULL,'http://localhost:36688/upload/2015/06/09/23/20_143386325917289.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4435','type_post','honor','资质荣誉','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:150px;\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:15:\"contact-us_copy\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4461','type_menu',NULL,'邮箱设置','4460',NULL,'0','1','0','10',NULL,NULL,'/admin.php/option/edit/site_smtp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4462','type_menu',NULL,'站点基本信息','4460',NULL,'0','1','0','20',NULL,NULL,'/admin.php/option/edit/site_setting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4463','type_menu',NULL,'公司简介','4460',NULL,'0','1','0','30',NULL,NULL,'/admin.php/option/edit/about-us1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4464','type_menu',NULL,'区块设置','4460',NULL,'0','1','0','40',NULL,NULL,'/admin.php/option/edit/site_block',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4230','type_post','article','文章列表','0',NULL,'0','1','0','0','a:26:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:260px;\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:12:\"展示图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:30:\"在列表中显示的缩略图\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:12:\"发布日期\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:7:\"article\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('2189','type_option','site_setting','站点基本信息','0',NULL,'0','1','0','0','a:17:{s:9:\"option_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"option_key\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"option_value\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:8:\"autoload\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"option_memo\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey00\";a:9:{s:5:\"lable\";s:12:\"站点名称\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:6:\"okey01\";a:9:{s:5:\"lable\";s:4:\"logo\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:21:\"站点左上角图片\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey02\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:9:\"seo优化\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey03\";a:9:{s:5:\"lable\";s:6:\"描述\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:9:\"seo优化\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey04\";a:9:{s:5:\"lable\";s:12:\"版权信息\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey05\";a:9:{s:5:\"lable\";s:12:\"站内公告\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:6:\"okey06\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey07\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey08\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey09\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4254','type_option','about-us1','公司简介','0',NULL,'0','1','0','0','a:17:{s:9:\"option_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"option_key\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"option_value\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:8:\"autoload\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"option_memo\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey00\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:6:\"标题\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:260px;\";}s:6:\"okey01\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:6:\"okey02\";a:9:{s:5:\"lable\";s:6:\"描述\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:12:\"width:300px;\";}s:6:\"okey03\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey04\";a:9:{s:5:\"lable\";s:9:\"小区块\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"首页小区块\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey05\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey06\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey07\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey08\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey09\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4438','type_menu',NULL,'轮播图添加','4436',NULL,'0','1','0','20',NULL,NULL,'/admin.php/post/edit/carousel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4437','type_menu',NULL,'轮播图列表','4436',NULL,'0','1','0','10',NULL,NULL,'/admin.php/post/list/carousel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('4436','type_menu',NULL,'轮播图','0',NULL,'0','1','0','10',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('2190','type_option','site_block','区块设置','0',NULL,'0','1','0','0','a:17:{s:9:\"option_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"option_key\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"option_value\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:8:\"autoload\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"option_memo\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey02\";a:9:{s:5:\"lable\";s:9:\"右上角\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"右上角区域\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:6:\"okey00\";a:9:{s:5:\"lable\";s:18:\"首页公司简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey01\";a:9:{s:5:\"lable\";s:18:\"右侧联系方式\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey03\";a:9:{s:5:\"lable\";s:12:\"底部区块\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey04\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey05\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey06\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey07\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey08\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey09\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('3803','type_member','super','超级管理员','0',NULL,'0','1','0','0','a:20:{s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:15:\"member_nicename\";a:9:{s:5:\"lable\";s:6:\"昵称\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_name\";a:9:{s:5:\"lable\";s:6:\"账号\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:15:\"member_password\";a:9:{s:5:\"lable\";s:6:\"密码\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"member_mobile\";a:9:{s:5:\"lable\";s:6:\"邮箱\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"member_email\";a:9:{s:5:\"lable\";s:6:\"邮箱\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"member_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"member_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key1\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"member_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"member_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N;',NULL);
--
-- 表的结构wgetlist
--

DROP TABLE IF EXISTS `wgetlist`;
CREATE TABLE `wgetlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `pagetime` datetime DEFAULT NULL,
  `flag` char(2) DEFAULT NULL COMMENT '是否采集过 1,未采集，2采集过',
  `data` longblob,
  `exdata` text,
  `oid` bigint(20) DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `olddata` text,
  `newdata` text,
  `content_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`) USING BTREE,
  KEY `flag` (`flag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37402 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 wgetlist
--

