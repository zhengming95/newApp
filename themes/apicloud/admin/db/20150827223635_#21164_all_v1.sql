--
-- MySQL database dump
-- Created by DBManage class, Power By yanue. 
-- http://yanue.net 
--
-- 主机: localhost:33061
-- 生成日期: 2015 年  08 月 27 日 22:36
-- MySQL版本: 5.5.15
-- PHP 版本: 5.3.18

--
-- 数据库: `apicloud_0827`
--

-- -------------------------------------------------------

--
-- 表的结构member
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户的标识',
  `member_nicename` varchar(255) DEFAULT '',
  `member_name` varchar(255) DEFAULT '' COMMENT '用户登录名称登录帐号',
  `member_password` char(255) DEFAULT '' COMMENT '密码',
  `member_mobile` char(11) DEFAULT '' COMMENT '手机号',
  `member_type` char(20) DEFAULT '' COMMENT '用户类型 1系统管理员 2编辑 3普通用户',
  `member_email` varchar(255) DEFAULT '' COMMENT '邮箱',
  `member_ex_attr` longblob COMMENT '附件属性',
  `site_id` bigint(20) DEFAULT '0' COMMENT '站点的标识',
  `member_status` char(32) DEFAULT '' COMMENT '用户状态',
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

INSERT INTO `member` VALUES('1','admin','admin','$P$BYHIe/tVvCU.NhS2xai/MzURXgNhg7.',NULL,'super','xpjc@foxmail.com',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构member_ex_attr
--

DROP TABLE IF EXISTS `member_ex_attr`;
CREATE TABLE `member_ex_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT '0',
  `member_ex_attr_key` char(30) DEFAULT '',
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
) ENGINE=MyISAM AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8 COMMENT='自动生成id的表\r\n每个表的主键都从这里取得 防止系统id重复';

--
-- 转存表中的数据 oid
--

INSERT INTO `oid` VALUES('1000','2015-06-26 23:06:48','dictsave');
INSERT INTO `oid` VALUES('1001','2015-06-26 23:06:48','dictsave');
INSERT INTO `oid` VALUES('1002','2015-06-26 23:06:48','dictsave');
INSERT INTO `oid` VALUES('1003','2015-06-26 23:06:48','dictsave');
INSERT INTO `oid` VALUES('1004','2015-06-26 23:38:17','dictsave');
INSERT INTO `oid` VALUES('1005','2015-06-26 23:38:17','dictsave');
INSERT INTO `oid` VALUES('1006','2015-06-26 23:38:17','dictsave');
INSERT INTO `oid` VALUES('1007','2015-06-26 23:38:17','dictsave');
INSERT INTO `oid` VALUES('1008','2015-06-26 23:38:17','dictsave');
INSERT INTO `oid` VALUES('1009','2015-06-26 23:38:28','dictsave');
INSERT INTO `oid` VALUES('1010','2015-06-26 23:38:28','dictsave');
INSERT INTO `oid` VALUES('1011','2015-06-26 23:38:28','dictsave');
INSERT INTO `oid` VALUES('1012','2015-06-26 23:38:28','dictsave');
INSERT INTO `oid` VALUES('1013','2015-06-26 23:38:28','dictsave');
INSERT INTO `oid` VALUES('1014','2015-07-24 00:24:15','dictsave');
INSERT INTO `oid` VALUES('1015','2015-07-24 00:24:49','dictsave');
INSERT INTO `oid` VALUES('1016','2015-07-24 00:24:57','dictsave');
INSERT INTO `oid` VALUES('1017','2015-07-24 00:25:07','dictsave');
INSERT INTO `oid` VALUES('1018','2015-07-24 00:25:30','import');
INSERT INTO `oid` VALUES('1019','2015-07-24 00:25:35','import');
INSERT INTO `oid` VALUES('1020','2015-07-26 08:44:18','dictsave');
INSERT INTO `oid` VALUES('1021','2015-07-26 08:44:18','dictsave');
INSERT INTO `oid` VALUES('1022','2015-07-26 08:44:18','dictsave');
INSERT INTO `oid` VALUES('1023','2015-07-26 08:44:18','dictsave');
INSERT INTO `oid` VALUES('1024','2015-07-26 08:44:18','dictsave');
INSERT INTO `oid` VALUES('1025','2015-07-26 22:49:30','post_page');
INSERT INTO `oid` VALUES('1026','2015-08-03 21:56:18','dictsave');
INSERT INTO `oid` VALUES('1027','2015-08-03 21:56:18','dictsave');
INSERT INTO `oid` VALUES('1028','2015-08-03 21:56:18','dictsave');
INSERT INTO `oid` VALUES('1029','2015-08-03 21:56:18','dictsave');
INSERT INTO `oid` VALUES('1030','2015-08-03 21:56:18','dictsave');
INSERT INTO `oid` VALUES('1031','2015-08-03 21:56:19','dictsave');
INSERT INTO `oid` VALUES('1032','2015-08-03 21:56:19','dictsave');
INSERT INTO `oid` VALUES('1033','2015-08-03 21:56:19','dictsave');
INSERT INTO `oid` VALUES('1034','2015-08-03 21:56:19','dictsave');
INSERT INTO `oid` VALUES('1035','2015-08-03 21:56:19','dictsave');
INSERT INTO `oid` VALUES('1036','2015-08-03 21:56:22','dictsave');
INSERT INTO `oid` VALUES('1037','2015-08-03 21:56:22','dictsave');
INSERT INTO `oid` VALUES('1038','2015-08-03 21:56:22','dictsave');
INSERT INTO `oid` VALUES('1039','2015-08-03 21:56:22','dictsave');
INSERT INTO `oid` VALUES('1040','2015-08-03 21:56:22','dictsave');
INSERT INTO `oid` VALUES('1041','2015-08-03 21:56:23','dictsave');
INSERT INTO `oid` VALUES('1042','2015-08-03 21:56:23','dictsave');
INSERT INTO `oid` VALUES('1043','2015-08-03 21:56:23','dictsave');
INSERT INTO `oid` VALUES('1044','2015-08-03 21:56:23','dictsave');
INSERT INTO `oid` VALUES('1045','2015-08-03 21:56:23','dictsave');
INSERT INTO `oid` VALUES('1046','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1047','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1048','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1049','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1050','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1051','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1052','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1053','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1054','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1055','2015-08-03 21:56:28','dictsave');
INSERT INTO `oid` VALUES('1056','2015-08-03 21:56:48','dictsave');
INSERT INTO `oid` VALUES('1057','2015-08-03 21:56:48','dictsave');
INSERT INTO `oid` VALUES('1058','2015-08-03 21:56:48','dictsave');
INSERT INTO `oid` VALUES('1059','2015-08-03 21:56:48','dictsave');
INSERT INTO `oid` VALUES('1060','2015-08-03 21:56:48','dictsave');
INSERT INTO `oid` VALUES('1061','2015-08-03 21:56:52','dictsave');
INSERT INTO `oid` VALUES('1062','2015-08-03 21:56:52','dictsave');
INSERT INTO `oid` VALUES('1063','2015-08-03 21:56:52','dictsave');
INSERT INTO `oid` VALUES('1064','2015-08-03 21:56:52','dictsave');
INSERT INTO `oid` VALUES('1065','2015-08-03 21:56:52','dictsave');
INSERT INTO `oid` VALUES('1066','2015-08-03 21:56:53','dictsave');
INSERT INTO `oid` VALUES('1067','2015-08-03 21:56:53','dictsave');
INSERT INTO `oid` VALUES('1068','2015-08-03 21:56:53','dictsave');
INSERT INTO `oid` VALUES('1069','2015-08-03 21:56:53','dictsave');
INSERT INTO `oid` VALUES('1070','2015-08-03 21:56:53','dictsave');
INSERT INTO `oid` VALUES('1071','2015-08-03 21:56:54','dictsave');
INSERT INTO `oid` VALUES('1072','2015-08-03 21:56:54','dictsave');
INSERT INTO `oid` VALUES('1073','2015-08-03 21:56:54','dictsave');
INSERT INTO `oid` VALUES('1074','2015-08-03 21:56:54','dictsave');
INSERT INTO `oid` VALUES('1075','2015-08-03 21:56:54','dictsave');
INSERT INTO `oid` VALUES('1076','2015-08-03 21:56:55','dictsave');
INSERT INTO `oid` VALUES('1077','2015-08-03 21:56:55','dictsave');
INSERT INTO `oid` VALUES('1078','2015-08-03 21:56:55','dictsave');
INSERT INTO `oid` VALUES('1079','2015-08-03 21:56:55','dictsave');
INSERT INTO `oid` VALUES('1080','2015-08-03 21:56:55','dictsave');
INSERT INTO `oid` VALUES('1081','2015-08-03 21:56:56','dictsave');
INSERT INTO `oid` VALUES('1082','2015-08-03 21:56:56','dictsave');
INSERT INTO `oid` VALUES('1083','2015-08-03 21:56:56','dictsave');
INSERT INTO `oid` VALUES('1084','2015-08-03 21:56:56','dictsave');
INSERT INTO `oid` VALUES('1085','2015-08-03 21:56:56','dictsave');
INSERT INTO `oid` VALUES('1086','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1087','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1088','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1089','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1090','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1091','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1092','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1093','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1094','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1095','2015-08-03 21:56:57','dictsave');
INSERT INTO `oid` VALUES('1096','2015-08-03 21:57:01','dictsave');
INSERT INTO `oid` VALUES('1097','2015-08-03 21:57:01','dictsave');
INSERT INTO `oid` VALUES('1098','2015-08-03 21:57:01','dictsave');
INSERT INTO `oid` VALUES('1099','2015-08-03 21:57:01','dictsave');
INSERT INTO `oid` VALUES('1100','2015-08-03 21:57:01','dictsave');
INSERT INTO `oid` VALUES('1101','2015-08-03 23:16:18','dictcopy');
INSERT INTO `oid` VALUES('1102','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1103','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1104','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1105','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1106','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1107','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1108','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1109','2015-08-03 23:17:02','dictsave');
INSERT INTO `oid` VALUES('1110','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1111','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1112','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1113','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1114','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1115','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1116','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1117','2015-08-03 23:17:45','dictsave');
INSERT INTO `oid` VALUES('1118','2015-08-03 23:18:08','post_news');
INSERT INTO `oid` VALUES('1119','2015-08-03 23:18:24','post_1118');
INSERT INTO `oid` VALUES('1120','2015-08-03 23:18:26','post_1119');
INSERT INTO `oid` VALUES('1121','2015-08-03 23:18:26','post_1118');
INSERT INTO `oid` VALUES('1122','2015-08-03 23:18:27','post_1121');
INSERT INTO `oid` VALUES('1123','2015-08-03 23:18:27','post_1120');
INSERT INTO `oid` VALUES('1124','2015-08-03 23:18:27','post_1118');
INSERT INTO `oid` VALUES('1125','2015-08-03 23:18:27','post_1119');
INSERT INTO `oid` VALUES('1126','2015-08-03 23:18:29','post_1125');
INSERT INTO `oid` VALUES('1127','2015-08-03 23:18:29','post_1123');
INSERT INTO `oid` VALUES('1128','2015-08-03 23:18:29','post_1122');
INSERT INTO `oid` VALUES('1129','2015-08-03 23:18:29','post_1118');
INSERT INTO `oid` VALUES('1130','2015-08-03 23:18:29','post_1121');
INSERT INTO `oid` VALUES('1131','2015-08-03 23:18:29','post_1124');
INSERT INTO `oid` VALUES('1132','2015-08-03 23:18:29','post_1120');
INSERT INTO `oid` VALUES('1133','2015-08-03 23:18:29','post_1119');
INSERT INTO `oid` VALUES('1134','2015-08-03 23:18:31','post_1132');
INSERT INTO `oid` VALUES('1135','2015-08-03 23:18:31','post_1133');
INSERT INTO `oid` VALUES('1136','2015-08-03 23:18:31','post_1130');
INSERT INTO `oid` VALUES('1137','2015-08-03 23:18:31','post_1129');
INSERT INTO `oid` VALUES('1138','2015-08-03 23:18:31','post_1126');
INSERT INTO `oid` VALUES('1139','2015-08-03 23:18:31','post_1128');
INSERT INTO `oid` VALUES('1140','2015-08-03 23:18:31','post_1127');
INSERT INTO `oid` VALUES('1141','2015-08-03 23:18:31','post_1125');
INSERT INTO `oid` VALUES('1142','2015-08-03 23:18:31','post_1124');
INSERT INTO `oid` VALUES('1143','2015-08-03 23:18:31','post_1131');
INSERT INTO `oid` VALUES('1144','2015-08-03 23:18:33','post_1142');
INSERT INTO `oid` VALUES('1145','2015-08-03 23:18:33','post_1143');
INSERT INTO `oid` VALUES('1146','2015-08-03 23:18:33','post_1138');
INSERT INTO `oid` VALUES('1147','2015-08-03 23:18:34','post_1135');
INSERT INTO `oid` VALUES('1148','2015-08-03 23:18:34','post_1136');
INSERT INTO `oid` VALUES('1149','2015-08-03 23:18:34','post_1137');
INSERT INTO `oid` VALUES('1150','2015-08-03 23:18:34','post_1141');
INSERT INTO `oid` VALUES('1151','2015-08-03 23:18:34','post_1134');
INSERT INTO `oid` VALUES('1152','2015-08-03 23:18:34','post_1140');
INSERT INTO `oid` VALUES('1153','2015-08-03 23:18:34','post_1139');
INSERT INTO `oid` VALUES('1154','2015-08-03 23:18:35','post_1153');
INSERT INTO `oid` VALUES('1155','2015-08-03 23:18:36','post_1152');
INSERT INTO `oid` VALUES('1156','2015-08-03 23:18:36','post_1150');
INSERT INTO `oid` VALUES('1157','2015-08-03 23:18:36','post_1149');
INSERT INTO `oid` VALUES('1158','2015-08-03 23:18:36','post_1145');
INSERT INTO `oid` VALUES('1159','2015-08-03 23:18:36','post_1151');
INSERT INTO `oid` VALUES('1160','2015-08-03 23:18:36','post_1144');
INSERT INTO `oid` VALUES('1161','2015-08-03 23:18:36','post_1146');
INSERT INTO `oid` VALUES('1162','2015-08-03 23:18:36','post_1147');
INSERT INTO `oid` VALUES('1163','2015-08-03 23:18:36','post_1148');
INSERT INTO `oid` VALUES('1164','2015-08-27 00:35:07','post_news');
INSERT INTO `oid` VALUES('1165','2015-08-27 13:24:38','post_1164');
INSERT INTO `oid` VALUES('1166','2015-08-27 13:24:39','post_1165');
INSERT INTO `oid` VALUES('1167','2015-08-27 13:24:39','post_1164');
INSERT INTO `oid` VALUES('1168','2015-08-27 13:24:41','post_1166');
INSERT INTO `oid` VALUES('1169','2015-08-27 13:24:41','post_1167');
INSERT INTO `oid` VALUES('1170','2015-08-27 13:24:41','post_1164');
INSERT INTO `oid` VALUES('1171','2015-08-27 13:24:41','post_1165');
INSERT INTO `oid` VALUES('1172','2015-08-27 13:24:43','post_1170');
INSERT INTO `oid` VALUES('1173','2015-08-27 13:24:43','post_1168');
INSERT INTO `oid` VALUES('1174','2015-08-27 13:24:43','post_1165');
INSERT INTO `oid` VALUES('1175','2015-08-27 13:24:43','post_1164');
INSERT INTO `oid` VALUES('1176','2015-08-27 13:24:43','post_1166');
INSERT INTO `oid` VALUES('1177','2015-08-27 13:24:43','post_1169');
INSERT INTO `oid` VALUES('1178','2015-08-27 13:24:43','post_1171');
INSERT INTO `oid` VALUES('1179','2015-08-27 13:24:43','post_1167');
INSERT INTO `oid` VALUES('1180','2015-08-27 13:24:45','post_1176');
INSERT INTO `oid` VALUES('1181','2015-08-27 13:24:45','post_1174');
INSERT INTO `oid` VALUES('1182','2015-08-27 13:24:45','post_1177');
INSERT INTO `oid` VALUES('1183','2015-08-27 13:24:45','post_1178');
INSERT INTO `oid` VALUES('1184','2015-08-27 13:24:45','post_1172');
INSERT INTO `oid` VALUES('1185','2015-08-27 13:24:45','post_1179');
INSERT INTO `oid` VALUES('1186','2015-08-27 13:24:45','post_1175');
INSERT INTO `oid` VALUES('1187','2015-08-27 13:24:45','post_1173');
INSERT INTO `oid` VALUES('1188','2015-08-27 13:24:45','post_1171');
INSERT INTO `oid` VALUES('1189','2015-08-27 13:24:45','post_1170');
INSERT INTO `oid` VALUES('1190','2015-08-27 13:24:47','post_1188');
INSERT INTO `oid` VALUES('1191','2015-08-27 13:24:47','post_1189');
INSERT INTO `oid` VALUES('1192','2015-08-27 13:24:47','post_1186');
INSERT INTO `oid` VALUES('1193','2015-08-27 13:24:47','post_1184');
INSERT INTO `oid` VALUES('1194','2015-08-27 13:24:47','post_1185');
INSERT INTO `oid` VALUES('1195','2015-08-27 13:24:47','post_1187');
INSERT INTO `oid` VALUES('1196','2015-08-27 13:24:47','post_1181');
INSERT INTO `oid` VALUES('1197','2015-08-27 13:24:47','post_1182');
INSERT INTO `oid` VALUES('1198','2015-08-27 13:24:47','post_1180');
INSERT INTO `oid` VALUES('1199','2015-08-27 13:24:47','post_1183');
INSERT INTO `oid` VALUES('1200','2015-08-27 14:22:10','post_page');
INSERT INTO `oid` VALUES('1201','2015-08-27 14:34:19','dictcopy');
INSERT INTO `oid` VALUES('1202','2015-08-27 14:35:25','dictcopy');
INSERT INTO `oid` VALUES('1203','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1204','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1205','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1206','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1207','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1208','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1209','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1210','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1211','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1212','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1213','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1214','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1215','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1216','2015-08-27 14:36:29','dictsave');
INSERT INTO `oid` VALUES('1217','2015-08-27 14:45:53','post_product');
INSERT INTO `oid` VALUES('1218','2015-08-27 14:46:24','post_product');
INSERT INTO `oid` VALUES('1219','2015-08-27 14:46:42','post_1218');
INSERT INTO `oid` VALUES('1220','2015-08-27 14:46:42','post_1217');
INSERT INTO `oid` VALUES('1221','2015-08-27 14:46:43','post_1220');
INSERT INTO `oid` VALUES('1222','2015-08-27 14:46:43','post_1217');
INSERT INTO `oid` VALUES('1223','2015-08-27 14:46:43','post_1219');
INSERT INTO `oid` VALUES('1224','2015-08-27 14:46:43','post_1218');
INSERT INTO `oid` VALUES('1225','2015-08-27 14:46:45','post_1223');
INSERT INTO `oid` VALUES('1226','2015-08-27 14:46:45','post_1219');
INSERT INTO `oid` VALUES('1227','2015-08-27 14:46:45','post_1218');
INSERT INTO `oid` VALUES('1228','2015-08-27 14:46:45','post_1222');
INSERT INTO `oid` VALUES('1229','2015-08-27 14:46:45','post_1220');
INSERT INTO `oid` VALUES('1230','2015-08-27 14:46:45','post_1224');
INSERT INTO `oid` VALUES('1231','2015-08-27 14:46:45','post_1221');
INSERT INTO `oid` VALUES('1232','2015-08-27 14:46:45','post_1217');
INSERT INTO `oid` VALUES('1233','2015-08-27 14:46:47','post_1231');
INSERT INTO `oid` VALUES('1234','2015-08-27 14:46:47','post_1229');
INSERT INTO `oid` VALUES('1235','2015-08-27 14:46:47','post_1232');
INSERT INTO `oid` VALUES('1236','2015-08-27 14:46:47','post_1226');
INSERT INTO `oid` VALUES('1237','2015-08-27 14:46:47','post_1225');
INSERT INTO `oid` VALUES('1238','2015-08-27 14:46:47','post_1224');
INSERT INTO `oid` VALUES('1239','2015-08-27 14:46:47','post_1227');
INSERT INTO `oid` VALUES('1240','2015-08-27 14:46:47','post_1228');
INSERT INTO `oid` VALUES('1241','2015-08-27 14:46:47','post_1230');
INSERT INTO `oid` VALUES('1242','2015-08-27 14:46:47','post_1223');
INSERT INTO `oid` VALUES('1243','2015-08-27 14:46:49','post_1240');
INSERT INTO `oid` VALUES('1244','2015-08-27 14:46:49','post_1239');
INSERT INTO `oid` VALUES('1245','2015-08-27 14:46:49','post_1241');
INSERT INTO `oid` VALUES('1246','2015-08-27 14:46:49','post_1238');
INSERT INTO `oid` VALUES('1247','2015-08-27 14:46:49','post_1237');
INSERT INTO `oid` VALUES('1248','2015-08-27 14:46:49','post_1233');
INSERT INTO `oid` VALUES('1249','2015-08-27 14:46:49','post_1234');
INSERT INTO `oid` VALUES('1250','2015-08-27 14:46:49','post_1242');
INSERT INTO `oid` VALUES('1251','2015-08-27 14:46:49','post_1236');
INSERT INTO `oid` VALUES('1252','2015-08-27 14:46:49','post_1235');
INSERT INTO `oid` VALUES('1253','2015-08-27 14:47:42','post_case');
INSERT INTO `oid` VALUES('1254','2015-08-27 14:47:57','post_case');
INSERT INTO `oid` VALUES('1255','2015-08-27 14:48:01','post_1254');
INSERT INTO `oid` VALUES('1256','2015-08-27 14:48:01','post_1253');
INSERT INTO `oid` VALUES('1257','2015-08-27 14:48:02','post_1256');
INSERT INTO `oid` VALUES('1258','2015-08-27 14:48:02','post_1255');
INSERT INTO `oid` VALUES('1259','2015-08-27 14:48:03','post_1254');
INSERT INTO `oid` VALUES('1260','2015-08-27 14:48:03','post_1253');
INSERT INTO `oid` VALUES('1261','2015-08-27 14:48:04','post_1260');
INSERT INTO `oid` VALUES('1262','2015-08-27 14:48:04','post_1257');
INSERT INTO `oid` VALUES('1263','2015-08-27 14:48:04','post_1259');
INSERT INTO `oid` VALUES('1264','2015-08-27 14:48:04','post_1258');
INSERT INTO `oid` VALUES('1265','2015-08-27 14:48:04','post_1256');
INSERT INTO `oid` VALUES('1266','2015-08-27 14:48:04','post_1254');
INSERT INTO `oid` VALUES('1267','2015-08-27 14:48:04','post_1255');
INSERT INTO `oid` VALUES('1268','2015-08-27 14:48:04','post_1253');
INSERT INTO `oid` VALUES('1269','2015-08-27 14:48:06','post_1265');
INSERT INTO `oid` VALUES('1270','2015-08-27 14:48:06','post_1267');
INSERT INTO `oid` VALUES('1271','2015-08-27 14:48:06','post_1263');
INSERT INTO `oid` VALUES('1272','2015-08-27 14:48:06','post_1264');
INSERT INTO `oid` VALUES('1273','2015-08-27 14:48:06','post_1266');
INSERT INTO `oid` VALUES('1274','2015-08-27 14:48:06','post_1261');
INSERT INTO `oid` VALUES('1275','2015-08-27 14:48:07','post_1259');
INSERT INTO `oid` VALUES('1276','2015-08-27 14:48:07','post_1260');
INSERT INTO `oid` VALUES('1277','2015-08-27 14:48:07','post_1268');
INSERT INTO `oid` VALUES('1278','2015-08-27 14:48:07','post_1262');
INSERT INTO `oid` VALUES('1279','2015-08-27 14:48:08','post_1278');
INSERT INTO `oid` VALUES('1280','2015-08-27 14:48:08','post_1276');
INSERT INTO `oid` VALUES('1281','2015-08-27 14:48:08','post_1274');
INSERT INTO `oid` VALUES('1282','2015-08-27 14:48:08','post_1273');
INSERT INTO `oid` VALUES('1283','2015-08-27 14:48:08','post_1277');
INSERT INTO `oid` VALUES('1284','2015-08-27 14:48:08','post_1272');
INSERT INTO `oid` VALUES('1285','2015-08-27 14:48:08','post_1275');
INSERT INTO `oid` VALUES('1286','2015-08-27 14:48:08','post_1271');
INSERT INTO `oid` VALUES('1287','2015-08-27 14:48:08','post_1270');
INSERT INTO `oid` VALUES('1288','2015-08-27 14:48:08','post_1269');
INSERT INTO `oid` VALUES('1289','2015-08-27 14:48:09','post_1287');
INSERT INTO `oid` VALUES('1290','2015-08-27 14:48:09','post_1283');
INSERT INTO `oid` VALUES('1291','2015-08-27 14:48:09','post_1285');
INSERT INTO `oid` VALUES('1292','2015-08-27 14:48:09','post_1286');
INSERT INTO `oid` VALUES('1293','2015-08-27 14:48:09','post_1282');
INSERT INTO `oid` VALUES('1294','2015-08-27 14:48:09','post_1288');
INSERT INTO `oid` VALUES('1295','2015-08-27 14:48:09','post_1284');
INSERT INTO `oid` VALUES('1296','2015-08-27 14:48:09','post_1280');
INSERT INTO `oid` VALUES('1297','2015-08-27 14:48:09','post_1279');
INSERT INTO `oid` VALUES('1298','2015-08-27 14:48:09','post_1281');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='配置设置参数';

--
-- 转存表中的数据 options
--

INSERT INTO `options` VALUES('1',NULL,NULL,NULL,'0','0',NULL);
INSERT INTO `options` VALUES('2','site_setting','a:1:{s:6:\"okey00\";s:3:\"111\";}',NULL,'0','0',NULL);
--
-- 表的结构posts
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) DEFAULT '0' COMMENT '站点标识',
  `member_id` bigint(20) DEFAULT '0' COMMENT '发布人信息',
  `post_alias` varchar(32) DEFAULT '' COMMENT '别名',
  `post_title` varchar(512) DEFAULT '',
  `post_date` datetime DEFAULT NULL COMMENT '发布时间',
  `post_keyword` varchar(512) DEFAULT '' COMMENT '关键词',
  `post_excerpt` text COMMENT '摘要',
  `post_image` varchar(512) DEFAULT '' COMMENT '图片',
  `post_category` varchar(32) DEFAULT '' COMMENT '分类',
  `post_content` longtext COMMENT '文章内容',
  `post_status` char(32) DEFAULT '' COMMENT '发布状态',
  `post_comment_status` char(32) DEFAULT '' COMMENT '评论状态',
  `post_parent` varchar(20) DEFAULT '0' COMMENT '上一级页面id',
  `post_type` char(32) DEFAULT '' COMMENT '文章的类型',
  `post_mime_type` char(32) DEFAULT '' COMMENT '信息的mime信息',
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
) ENGINE=MyISAM AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8 COMMENT='信息内容表';

--
-- 转存表中的数据 posts
--

INSERT INTO `posts` VALUES('1025','0','1','about','关于我们','2015-07-26 22:49:30',NULL,NULL,NULL,NULL,'关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们',NULL,NULL,'0','page',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1249','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1250','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1248','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1164','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1165','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1166','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1167','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1168','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1169','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1170','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1171','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1172','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1173','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1174','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1175','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1176','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1177','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1178','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1179','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1180','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1181','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1182','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1183','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1184','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1185','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1186','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1187','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1188','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1189','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1190','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1191','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1192','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1193','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1194','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1195','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1196','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1197','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1198','0','1',NULL,'新闻1','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1199','0','1',NULL,'新闻12222222222','2015-08-27 00:35:07','新闻1新闻1','新闻1新闻1',NULL,NULL,'新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1新闻1',NULL,NULL,'0','news',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1200','0','1','contact','联系我们','2015-08-27 14:22:10',NULL,NULL,NULL,NULL,'联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们',NULL,NULL,'0','page',NULL,'0','a:0:{}','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1217','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1218','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1219','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1220','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1221','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1222','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1223','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1224','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1225','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1226','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1227','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1228','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1229','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1230','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1231','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1232','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1233','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1234','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1235','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1236','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1237','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1238','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1239','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1240','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1241','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1242','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1243','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1244','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1245','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1246','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1247','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1251','0','1',NULL,'产品展示1','2015-08-27 14:46:24','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/46_14406579752107.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/46_144065797811096.jpg','/upload/2015/08/27/14/46_144065798229873.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1252','0','1',NULL,'产品展示','2015-08-27 14:45:53','产品展示','产品展示产品展示产品展示产品展示','/upload/2015/08/27/14/45_144065794022263.jpg',NULL,'产品展示产品展示',NULL,NULL,'0','product',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/45_144065794531076.jpg','/upload/2015/08/27/14/45_144065794922477.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1253','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1254','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1255','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1256','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1257','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1258','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1259','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1260','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1261','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1262','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1263','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1264','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1265','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1266','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1267','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1268','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1269','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1270','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1271','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1272','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1273','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1274','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1275','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1276','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1277','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1278','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1279','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1280','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1281','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1282','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1283','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1284','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1285','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1286','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1287','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1288','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1289','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1290','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1291','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1292','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1293','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1294','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1295','0','1',NULL,'产品案例1','2015-08-27 14:47:57','产品案例','产品案例','/upload/2015/08/27/14/47_14406580754285.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1296','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1297','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `posts` VALUES('1298','0','1',NULL,'产品案例','2015-08-27 14:47:42','产品案例','产品案例','/upload/2015/08/27/14/47_144065803512341.jpg',NULL,'产品案例产品案例产品案例',NULL,NULL,'0','case',NULL,'0','a:0:{}','8','/upload/2015/08/27/14/47_144065804023754.jpg','/upload/2015/08/27/14/47_144065806116404.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构posts_ex_attr
--

DROP TABLE IF EXISTS `posts_ex_attr`;
CREATE TABLE `posts_ex_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT '0',
  `post_ex_attr_key` char(30) DEFAULT '',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容的附加字段';

--
-- 转存表中的数据 posts_ex_attr
--

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分组与信息内容的关联字段';

--
-- 转存表中的数据 relationships
--

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
) ENGINE=MyISAM AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8 COMMENT='类别 组别管理';

--
-- 转存表中的数据 terms
--

INSERT INTO `terms` VALUES('1','type_post','page','单独页面','0',NULL,'0','1','0','0','a:29:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:6:\"别名\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"用于url访问\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_keyword\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:10:\"post_image\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"post_category\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:4:\"page\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:7:\"图片1\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:7:\"图片2\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1101','type_post','news','企业新闻','0',NULL,'0','1','0','0','a:29:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:6:\"别名\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"用于url访问\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_keyword\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:10:\"post_image\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"post_category\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:4:\"news\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:7:\"图片1\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:7:\"图片2\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1211','type_menu',NULL,'产品添加','1209',NULL,'0','1','0','40',NULL,NULL,'/admin.php/post/edit/product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1004','type_option','site_setting','site_setting','0',NULL,'0','1','0','0','a:17:{s:9:\"option_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"option_key\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"option_value\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:8:\"autoload\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"option_memo\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey00\";a:9:{s:5:\"lable\";s:12:\"站点名称\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey01\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey02\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey03\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey04\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey05\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey06\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey07\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey08\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:6:\"okey09\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1210','type_menu',NULL,'产品列表','1209',NULL,'0','1','0','30',NULL,NULL,'/admin.php/post/list/product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1014','type_category','page','page','0',NULL,'0','1','0','0','a:21:{s:7:\"term_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_alias\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_name\";a:9:{s:5:\"lable\";s:6:\"名称\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"term_parent_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:16:\"term_description\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"term_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"term_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key1\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key2\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"term_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"term_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1209','type_menu',NULL,'产品','0',NULL,'0','1','0','30',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1025',NULL,NULL,'检验速度进入“高铁”时代 又快又准','2351',NULL,'0','1','0','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1026',NULL,NULL,'用追溯体系守护食品安全 道阻且长','2351',NULL,'0','1','0','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1027',NULL,NULL,'美众议院欲阻止标记转基因食物','2351',NULL,'0','1','0','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1028',NULL,NULL,'监测水源水质岛城试用无人船','2351',NULL,'0','1','0','12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1029',NULL,NULL,'2000张食品证书背后的制假纵假','2351',NULL,'0','1','0','11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1030',NULL,NULL,'河北空气监测引入第三方','2351',NULL,'0','1','0','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1031',NULL,NULL,'新一代测序技术连接古今人类关系','2351',NULL,'0','1','0','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1032',NULL,NULL,'阿尔茨海默症治疗迎来曙光','2351',NULL,'0','1','0','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1033',NULL,NULL,'高盐饮食的危害','2351',NULL,'0','1','0','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1034',NULL,NULL,'来自实验数据的精确预测 ','2351',NULL,'0','1','0','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1035',NULL,NULL,'粤建首批63个化妆品不良反应监测点','2351',NULL,'0','1','0','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1036',NULL,NULL,'新药研发有望步入规范轨道','2351',NULL,'0','1','0','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1037',NULL,NULL,'“注胶”食品何以流向餐桌？','2351',NULL,'0','1','0','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1038',NULL,NULL,'人工智能“进军”基因检测市场','2351',NULL,'0','1','0','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1039',NULL,NULL,'江苏首个检验检测集聚区落户南京','2351',NULL,'0','1','0','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1040',NULL,NULL,'年中盘点袭来―上半年最受瞩目的研究','2351',NULL,'0','1','0','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1041',NULL,NULL,'创新农业“云农场模式”受热捧','2351',NULL,'0','1','0','12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1042',NULL,NULL,'“十大食品”抽检 早餐安全为“重灾区”','2351',NULL,'0','1','0','11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1043',NULL,NULL,'精确检测和去除肿瘤的新技术','2351',NULL,'0','1','0','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1044',NULL,NULL,'MERS冠状病毒疫苗动物实验成功','2351',NULL,'0','1','0','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1045',NULL,NULL,'新版食品安全国标 安庆并未推行成功','2351',NULL,'0','1','0','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1046',NULL,NULL,'打通药品监测服务“最后一公里”','2351',NULL,'0','1','0','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1047',NULL,NULL,'纳米生物技术可帮助快速诊断白血病','2351',NULL,'0','1','0','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1048',NULL,NULL,'开放免费检测室  市民可自检食品','2351',NULL,'0','1','0','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1049',NULL,NULL,'超标采购的免费水，解了谁的渴？','2351',NULL,'0','1','0','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1050',NULL,NULL,'从源头治理农业面源污染','2351',NULL,'0','1','0','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1051',NULL,NULL,'我国首部锂离子电池安全国家标准实施','2351',NULL,'0','1','0','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1052',NULL,NULL,'147批次产品被查不合格 大品牌也遭殃','2351',NULL,'0','1','0','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1053',NULL,NULL,'“器官芯片”，大势所趋','2351',NULL,'0','1','0','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1054',NULL,NULL,'【图解 】“进口食品”真的更安全？','2351',NULL,'0','1','0','12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1055',NULL,NULL,'国家智能硬件产业技术创新战略联盟成立','2351',NULL,'0','1','0','11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1056',NULL,NULL,'山西：立题“煤轮子”的低碳运转法','2351',NULL,'0','1','0','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1057',NULL,NULL,'食品违法最高可罚货值30倍','2351',NULL,'0','1','0','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1058',NULL,NULL,'风口上的体外诊断','2351',NULL,'0','1','0','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1059',NULL,NULL,'华大基因谱平台：将互联网引入基因领域','2351',NULL,'0','1','0','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1060',NULL,NULL,'广西浦北自创地灾监测“神器”显威力','2351',NULL,'0','1','0','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1061',NULL,NULL,' 广东拟＂收编＂食品摊贩 好地段摆摊摇号','2351',NULL,'0','1','0','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1062',NULL,NULL,'国家食药监局发布127个医械产品分类','2351',NULL,'0','1','0','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1063',NULL,NULL,'硕士奶爸研发软件检测儿童成长','2351',NULL,'0','1','0','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1201','type_post','product','产品','0',NULL,'0','1','0','0','a:29:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:6:\"别名\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"用于url访问\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_keyword\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:10:\"post_image\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"post_category\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:9:\"news_copy\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:7:\"图片1\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:7:\"图片2\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1207','type_menu',NULL,'企业新闻列表','1206',NULL,'0','1','0','20',NULL,NULL,'/admin.php/post/list/news',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1208','type_menu',NULL,'企业新闻添加','1206',NULL,'0','1','0','30',NULL,NULL,'/admin.php/post/edit/news',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1206','type_menu',NULL,'企业新闻','0',NULL,'0','1','0','20',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1205','type_menu',NULL,'单独页面添加','1203',NULL,'0','1','0','20',NULL,NULL,'/admin.php/post/edit/page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1204','type_menu',NULL,'单独页面列表','1203',NULL,'0','1','0','10',NULL,NULL,'/admin.php/post/list/page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1203','type_menu',NULL,'单独页面','0',NULL,'0','1','0','10',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1202','type_post','case','案例','0',NULL,'0','1','0','0','a:29:{s:7:\"post_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:7:\"site_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"member_id\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_alias\";a:9:{s:5:\"lable\";s:6:\"别名\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:15:\"用于url访问\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_title\";a:9:{s:5:\"lable\";s:6:\"标题\";s:6:\"search\";s:1:\"1\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:150px\";}s:9:\"post_date\";a:9:{s:5:\"lable\";s:6:\"时间\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:1:\"1\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_keyword\";a:9:{s:5:\"lable\";s:9:\"关键词\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:12:\"post_excerpt\";a:9:{s:5:\"lable\";s:6:\"简介\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"2\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:11:\"width:300px\";}s:10:\"post_image\";a:9:{s:5:\"lable\";s:6:\"图片\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:13:\"post_category\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_content\";a:9:{s:5:\"lable\";s:6:\"内容\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:19:\"post_comment_status\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:11:\"post_parent\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:12:\"product_copy\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:14:\"post_mime_type\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:18:\"post_comment_count\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:12:\"post_ex_attr\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_order\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key1\";a:9:{s:5:\"lable\";s:7:\"图片1\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key2\";a:9:{s:5:\"lable\";s:7:\"图片2\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:1:\"4\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key3\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key4\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key5\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key6\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key7\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key8\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:9:\"post_key9\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}s:10:\"post_key10\";a:9:{s:5:\"lable\";s:0:\"\";s:6:\"search\";s:0:\"\";s:6:\"islist\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"values\";s:0:\"\";s:8:\"validate\";s:0:\"\";s:5:\"style\";s:0:\"\";}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1212','type_menu',NULL,'案例','0',NULL,'0','1','0','40',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1213','type_menu',NULL,'案例列表','1212',NULL,'0','1','0','40',NULL,NULL,'/admin.php/post/list/case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1214','type_menu',NULL,'案例添加','1212',NULL,'0','1','0','50',NULL,NULL,'/admin.php/post/edit/case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1215','type_menu',NULL,'系统设置','0',NULL,'0','1','0','40',NULL,NULL,'#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `terms` VALUES('1216','type_menu',NULL,'site_setting','1215',NULL,'0','1','0','10',NULL,NULL,'/admin.php/option/edit/site_setting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
--
-- 表的结构wgetlist
--

DROP TABLE IF EXISTS `wgetlist`;
CREATE TABLE `wgetlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT '',
  `pagetime` datetime DEFAULT NULL,
  `flag` char(2) DEFAULT '' COMMENT '是否采集过 1,未采集，2采集过',
  `data` longblob,
  `exdata` text,
  `oid` bigint(20) DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `olddata` text,
  `newdata` text,
  `content_type` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`) USING BTREE,
  KEY `flag` (`flag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 wgetlist
--

