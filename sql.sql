DROP TABLE IF EXISTS `buyers`;
CREATE TABLE `buyers`(
	   `buyers_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '买家ID',
`buyer_number` varchar(64) NOT NULL UNIQUE comment '买家编号',
`buyer_gender` varchar(64) comment '买家性别',
`buyer_age` varchar(64) comment '买家年龄',
`buyer_school` varchar(64) comment '买家学校',
`buyer_address` varchar(64) comment '买家地址',
`buyer_birthday` date comment '买家生日',
`brief_introduction` varchar(64) comment '买家简介',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (buyers_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '买家';

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller`(
	   `seller_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '卖家ID',
`seller_number` varchar(64) NOT NULL UNIQUE comment '卖家编号',
`seller_gender` varchar(64) comment '卖家性别',
`age` varchar(64) comment '卖家年龄',
`seller_school` varchar(64) comment '卖家学校',
`address` varchar(64) comment '卖家地址',
`seller_birthday` date comment '卖家生日',
`brief_introduction` varchar(64) comment '卖家简介',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (seller_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '卖家';

DROP TABLE IF EXISTS `second_hand_mall`;
CREATE TABLE `second_hand_mall`(
	   `second_hand_mall_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二手商城ID',
`seller` int(11) DEFAULT 0 comment '卖家',
`remarks` varchar(64) comment '备注',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`cart_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题：[0,125]用于产品html的标签中',
`cart_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面图：用于显示于产品列表页',
`cart_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
`cart_price_ago` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：[1]',
`cart_price` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '卖价：[1]',
`cart_inventory` int(11) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000 COMMENT '商品库存',
`cart_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
`cart_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：产品的主体内容',
`cart_img_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图1：',
`cart_img_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图2：',
`cart_img_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图3：',
`cart_img_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图4：',
`cart_img_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图5：',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (second_hand_mall_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '二手商城';
insert into `second_hand_mall` values (1,0,'备注1','664','0','商品名称1','点此播放','商品描述1','218','122','441','商品分类1','此处可上传文字、图片、视频、超链接、表格等内容区1','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (2,0,'备注2','202','0','商品名称2','点此播放','商品描述2','944','176','27','商品分类2','此处可上传文字、图片、视频、超链接、表格等内容区2','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (3,0,'备注3','357','0','商品名称3','点此播放','商品描述3','683','658','377','商品分类3','此处可上传文字、图片、视频、超链接、表格等内容区3','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (4,0,'备注4','61','0','商品名称4','点此播放','商品描述4','725','664','186','商品分类4','此处可上传文字、图片、视频、超链接、表格等内容区4','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (5,0,'备注5','305','0','商品名称5','点此播放','商品描述5','531','812','459','商品分类5','此处可上传文字、图片、视频、超链接、表格等内容区5','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (6,0,'备注6','531','0','商品名称6','点此播放','商品描述6','65','373','657','商品分类6','此处可上传文字、图片、视频、超链接、表格等内容区6','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (7,0,'备注7','770','0','商品名称7','点此播放','商品描述7','594','379','573','商品分类7','此处可上传文字、图片、视频、超链接、表格等内容区7','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `second_hand_mall` values (8,0,'备注8','357','0','商品名称8','点此播放','商品描述8','983','42','359','商品分类8','此处可上传文字、图片、视频、超链接、表格等内容区8','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-21 11:10:46','2022-03-21 11:10:46');

DROP TABLE IF EXISTS `sign_in_score`;
CREATE TABLE `sign_in_score`(
	   `sign_in_score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '签收评分ID',
`order_number` varchar(64) comment '订单编号',
`purchase_goods` varchar(64) comment '购买商品',
`commodity_price` varchar(64) comment '商品价格',
`sign_in_status` varchar(64) comment '签收状态',
`star_rating` varchar(64) comment '星级评分',
`purchase_user` int(11) DEFAULT 0 comment '购买用户',
`business` int(11) DEFAULT 0 comment '商家',
`remarks` longtext comment '备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (sign_in_score_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '签收评分';
insert into `sign_in_score` values (1,'订单编号1','购买商品1','商品价格1','签收状态1','星级评分1',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区1','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (2,'订单编号2','购买商品2','商品价格2','签收状态2','星级评分2',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区2','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (3,'订单编号3','购买商品3','商品价格3','签收状态3','星级评分3',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区3','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (4,'订单编号4','购买商品4','商品价格4','签收状态4','星级评分4',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区4','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (5,'订单编号5','购买商品5','商品价格5','签收状态5','星级评分5',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区5','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (6,'订单编号6','购买商品6','商品价格6','签收状态6','星级评分6',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区6','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (7,'订单编号7','购买商品7','商品价格7','签收状态7','星级评分7',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区7','0','2022-03-21 11:10:46','2022-03-21 11:10:46');
insert into `sign_in_score` values (8,'订单编号8','购买商品8','商品价格8','签收状态8','星级评分8',0,0,'此处可上传文字、图片、视频、超链接、表格等内容区8','0','2022-03-21 11:10:46','2022-03-21 11:10:46');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货地址：',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名：',
  `phone` varchar(13) DEFAULT NULL COMMENT '手机：',
  `postcode` varchar(8) DEFAULT NULL COMMENT '邮编：',
  `address` varchar(255) NOT NULL COMMENT '地址：',
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认判断',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收货地址：';
insert into `address` values ('3','田七','13590509090',null,'广州市越秀区东风西路187号','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `state` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态：使用中，已失效',
  `price` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '单价：',
  `price_ago` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `price_count` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `num` int(8) unsigned NOT NULL DEFAULT '1' COMMENT '数量：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车：';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id：[0,8388607]',
  `title` varchar(125) DEFAULT NULL COMMENT '标题：[0,125]用于产品和html的<title>标签中',
  `img` text COMMENT '封面图：用于显示于产品列表页',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `price_ago` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：[1]',
  `price` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '卖价：[1]',
  `customize_field` text COMMENT '自定义字段',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量：[0,1000000000]',
  `inventory` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000' COMMENT '商品库存',
  `type` varchar(64) NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：[0,1000000000]访问这篇产品的人次',
  `content` longtext COMMENT '正文：产品的主体内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `img_1` text COMMENT '主图1：',
  `img_2` text COMMENT '主图2：',
  `img_3` text COMMENT '主图3：',
  `img_4` text COMMENT '主图4：',
  `img_5` text COMMENT '主图5：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `user_id` int(11) DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='商品信息：';
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类ID：',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称：',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述：',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID：',
  `order_number` varchar(64) DEFAULT NULL COMMENT '订单号：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `title` varchar(32) DEFAULT NULL COMMENT '商品标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片：',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格：',
  `price_ago` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `num` int(8) NOT NULL DEFAULT '1' COMMENT '数量：',
  `price_count` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `norms` varchar(255) DEFAULT NULL COMMENT '规格：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `contact_name` varchar(32) DEFAULT NULL COMMENT '联系人姓名：',
  `contact_email` varchar(125) DEFAULT NULL COMMENT '联系人邮箱：',
  `contact_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机：',
  `contact_address` varchar(255) DEFAULT NULL COMMENT '收件地址：',
  `postal_code` varchar(9) DEFAULT NULL COMMENT '邮政编码：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID：',
  `merchant_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商家ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `state` varchar(16) NOT NULL DEFAULT '待付款' COMMENT '订单状态：待付款，待发货，待签收，已签收，待退款，已退款，已拒绝，已完成',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单：';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

insert into `user_group` values ('1','100','游客',null,'','','0','0',"2022-03-21 03:10:46.000 ","2022-03-21 03:10:46.000 ");
insert into `user_group` values ('2','100','管理员',null,'','','0',null,"2022-03-21 03:10:46.000 ","2022-03-21 03:10:46.000 ");
insert into `user_group` values ('3','100','卖家',null,'seller','seller_id','0','2',"2022-03-21 03:10:46.000 ","2022-03-21 03:10:46.000 ");
insert into `user_group` values ('4','100','买家',null,'buyers','buyers_id','0','3',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1645007697724.jpeg','751',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1645007663303.jpeg','801',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1645007697724.jpeg','93',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1645146523671.jpeg','200',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `article` values ('1','好物推荐｜花生、芝麻软糯香甜的网红大黄米汤圆，过节提前囤！','商城','165','0',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ",null,null,null,'<p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/11273939699/0" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">汤圆，有团圆之意，象征一家人团团圆圆、和睦幸福。</p><p class="ql-align-justify">中国人在逢年过节时，一定要吃上几个汤圆，才算是团圆啊！</p><p class="ql-align-justify">往年，临近过节期间，超市里的汤圆几乎都被抢购一空，若是去的晚了或是手慢了，可能都抢不到。今年过节的汤圆，可一定要早早备好。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/14495957865/0" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">这次，一条生活馆早就给你选好了一款网红大黄米汤圆，来自品牌“阅农部落”。共有4种口味可选，分别是：</p><p class="ql-align-justify"><strong>花生馅</strong></p><p class="ql-align-justify"><strong>芝麻馅</strong></p><p class="ql-align-justify"><strong>八宝馅</strong></p><p class="ql-align-justify"><strong>红豆蜜薯馅</strong></p><p class="ql-align-justify">这几种汤圆都是我们选出来的人气款，得到了各位同事的一致好评，跟着买准不会错！</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957866/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">眼尖的朋友肯定已经发现了，“阅农部落”的大黄米汤圆，不同于我们平时常见的的白色汤圆，它的外皮呈黄色。</p><p class="ql-align-justify"><strong>胖乎乎、圆滚滚的样子，配上金灿灿的鸡蛋黄颜色，看着就十分讨喜，而且，个头也很大！</strong></p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957926/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">我们平时吃的汤圆主要以糯米粉为原料，而这款大黄米汤圆在糯米粉的基础上又加入了大黄米。</p><p class="ql-align-justify">大黄米又被称为“软黄米”，是小米的一种，但是比普通小米颗粒更大，米香也更浓郁。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957927/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">不仅如此，大黄米还是一种粘性很强的粗粮，它含有丰富的维生素、矿物质、多种氨基酸等，膳食纤维含量尤其丰富。</p><p class="ql-align-justify">大黄米面吃起来，有一种谷物特有的清甜感，用它做出来的汤圆，软软糯糯，很适合老人、孩子食用。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14495957928/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">煮好的大黄米汤圆，滑滑的、弹弹的，再配上独特的米黄色，看着就诱人无比。</p><p class="ql-align-justify">趁着热乎咬上一口，就像一口咬在棉花糖上一样，柔软黏糯，还有浓浓的黄米香气萦绕鼻腔。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_match/0/11273939708/0" alt="图片"></p><p><br></p>','/api/upload/image_1644290839314.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('2','生活的14种好物推荐','商城','635','0',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ",null,null,null,'<p class="ql-align-justify">科技改变生活这句话放在什么年代都是正确的，近几年经济的高速发展，更是涌现了很多好的产品，没啥好多说的，一切尽在原创中了！</p><h2 class="ql-align-justify"><strong>一、重度依赖：手机&nbsp;</strong></h2><p class="ql-align-justify">二宝出身后，LD作为随身保姆每天陪吃陪睡，早上送大宝上学的任务就由楼主承担了，日复一日生物钟早请习惯了每天在这个时间点准时醒来。醒来后的第一件事就是打开床头柜上面的手机，手机做为人类器官的延伸，扮演着越来越重要的角色，老婆交代的事情可能还会忘记，唯独手机想忘都忘不了。17年从荣耀V9、华为nova 2 Plus、华硕电神4到vivo X20 Plus，看到了国产手机的进步，产品做工、系统优化上面已经能够比肩国际大牌。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/ad3775c34a421f826f123f3dc8831c58.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/342353e0029f939adba155095ed458ad.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">vivo X20 Plus用了有快四个月了，屏幕够大，续航方面做的不错，重度使用的话一整天不会有问题，拍照及Hi-Fi音乐都是不错的卖点，可惜了在这一波手机的涨价潮中，价格也站上了3000+的高位，照这个趋势发展下去，楼主恐怕连国产手机都快用不起了。</p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：相机确实很给力，逆光效果出众，已经具有了相机70%-80%的功力吧。</p><h2 class="ql-align-justify"><strong>二、养成好习惯 ：电动牙刷</strong></h2><p class="ql-align-justify">刷牙洗脸，楼主的第一把电动牙刷是14年买的力博得，89块钱买的先不说不效果怎么样，最大的好处是让楼主养成了良好的刷牙习惯，早起再匆忙也会按时刷完二分钟。第二把还是力博得图中白色那把，用的也不错，特别是自带消毒桶的设计，很有新颖。右侧这把老婆自己买的oralshark声波电动牙刷K117-B，无意见看见李维嘉做的直播买的，用了几个月，使用体验还不错，等有好价的时候入个飞利浦9系的电动牙刷试下，不知道会不会有更好的体验。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/3f642da8d51994cdcee73370725c4413.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：用过电动牙刷以后再也回不去手动刷牙了，使用高效并且能够养成良好的刷牙习惯，飞利浦、欧乐-B等大牌时常有好价，发展了几年的国产声波牙刷也可适当考虑，几十到上千，丰俭由人。</p><h2 class="ql-align-justify"><strong>三、改善生存条件：美的厨宝</strong></h2><p class="ql-align-justify">是不是羡慕宾馆开了水龙头马上就有热水？那是因为宾馆的供水系统设计有热水循环，为了保证马上有热水，整套的循环系统始终在运行。家用的话考虑到经济性就没必要怎么复杂，直接定时循环或者要用的时候开关控制（一般就是开下水龙头），新房装修的话真的可以考虑装个，毕竟早上洗漱分秒必争，开个水龙头就有热水体验上面还是不错的。想要马上就要热水可以用，目前可以考虑二种方案，一种使用即热式水龙头，另外一种就是楼主这样子在洗手盆下面装个小厨宝，管路短热水也是立马就有，再也不用为每天早晚的洗漱用水烦恼。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/880c99131b6e3428caa30e23ba704c6f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：你想要的热水，说有就有，方便，装了后夫妻二个再也没有为谁打热水红过脸了。&nbsp;</p><h2 class="ql-align-justify"><strong>四、冬日里的温暖：智能马桶</strong></h2><p class="ql-align-justify">寒冷的冬天与冰寒的马桶圈亲密接触，相信体验过的滋味都不太好，拉粑粑都拉的不顺畅，有了智能马桶后，被加热的马桶圈让人坐着都不想起来，两个字“舒服”。智能马桶集便圈加热、温水洗净、按摩等多项功能于一体，提供良好的洁身功效和舒适的清洗体验。功能设计多样，提供臀部清洁与女性清洁，清洗到位。智能马桶的除臭功能也是非常的实用，小夜灯的设计对晚上上卫生间非常的有帮助，人体感应开关的存在，拉完粑粑连冲水都自动完成了。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/f81ab25804edcb99b980aad99f23a152.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★★</p><p class="ql-align-justify">推荐理由：经历了日本的智能马桶盖抢购潮，国人对于智能马桶早就有了全新的认识。智能马桶集清洗、按摩、座圈加热等多项功能于一体，你值得拥有。</p><p class="ql-align-justify">使用小贴士：楼主家这个是储水式的，打开清洗开关后，会先出来一截冷水，使用前我会先放掉这一部分冷水。操作也不难，清洗开关先旋转一点点，喷头没有完全伸出以前把冷水放掉，维持几秒后面的就是温水了（品牌及操作不一样这个也不一定有用）。</p><h2 class="ql-align-justify"><strong>五、厨房好伴侣：美的电蒸箱</strong></h2><p class="ql-align-justify">开启早餐模式，电蒸箱绝对算的上是厨房的小神器之一，从买来这东西有什么用，浪费钱到再也离不开的大反转，没有超过一个月，早中晚做的蒸的东西实在是太方便不过了，相比较家用那种几层的小蒸笼，电蒸箱的优势太明显了，腔体大，二层隔板一次能放四个碟子，基本能够满足5口之家一餐所需。对楼主这种平时很少下厨的人来说，电蒸箱就更加的重要了，水箱加满水，选个合适的程式，开点小差，做的别的事情，也不用人为的去多关注，时间到了就等在上桌就行。相比较烤箱，楼主更推荐优先考虑电蒸箱，蒸菜比起其它的做法也更有营养，操作起来也更省事、快捷很多，符合现代人快节奏的生活方式。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/0b82210b1d721844836a8e4d310da34f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p><br></p>','/api/upload/image_1644290965837.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('3','好物推荐第十期主打迷你：家居化电脑，还有iPad mini6','商城','670','0',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ",null,null,null,'<p class="ql-align-justify">这期好物推荐，主打迷你轻量化，但性能卓越的两款产品，一款迷你iPad平板可是手游王者，另一款家居化的迷你PC电脑，可以配置成超强游戏电脑，酷炫又时尚。</p><p class="ql-align-justify"><strong>一、iPad mini第六代</strong></p><p class="ql-align-justify">手上这台ipad mini6 买了两三个月了，是64GWIFI 版。很多人说，这是2021最强游戏机，毕竟A15是真的强。 单从性价比角度来说，ipad mini6 还是挺值，3400左右的价格就能买到最强处理器的优秀屏幕的平板，还是非常不错的，当然，64G的存储空间对于有大容量需求的用户来说可能不够，还是加钱上大容量的更好。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009134/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">来说说我这几个月ipad mini6 的使用体验吧，我这台日常主要是用来看书，看视频，就这两个需求。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009146/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">因为机身小巧，看书的时候一只手就能拿在手里了，非常方便，而且重量轻也不累。</p><p class="ql-align-justify">屏幕素质非常棒，至于网上说ipad mini6 的果冻屏，我没有任何感觉，感觉不出和其他屏幕有任何区别，唯一的感受就是屏幕非常优秀，动画非常流畅。也可能是我本人对屏幕的要求不高吧。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009140/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">看视频的话，一般是Bilibili和腾讯视频，横竖屏适配非常好，屏幕素质也是一如既往的好，没什么可挑的。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009138/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">ipad mini6 续航方面的话，没感觉到什么问题，因为基本上一天用两三个小时，可能三五天才充一次电，对我来说没什么太大影响。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009141/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">对于想MINI的用户呢，我想说说我的建议。</p><p class="ql-align-justify">如果你非常中意小尺寸的平板，那么ipad mini6 绝对是首选，从屏幕和性能外观，直接拉满，比5代不知道高到哪里去了，5代完全不值得买，直接6代用个三五年没有任何问题。 如果仅仅是想省钱，个人不太推荐，因为如果你喜欢大屏幕，mini6你很有可能不习惯。想省钱的朋友，安卓那边小米和华为联想，其实都不错，特别是小米平板5PRO，我用过一段时间，绝对是安卓里强劲机。</p><p class="ql-align-justify"><strong>二、攒台酷酷的迷你游戏主机，不信你不喜欢</strong></p><p class="ql-align-justify">【配置建议1】：b660也更新了，所以弄个ONSBO乔思伯全铝ITX迷你机箱V11立卧两用。V12代+amd的配置参考。主要存储跟显卡可以按需选择，电源功率也是；有机会展示一下……</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009135/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">【配置建议2】：ONSBO乔思伯全铝ITX迷你机箱V11立卧两用更适合【甜品级】配置主机，比如CPU上限 i5-i7/R5-R7级别，GPU别整什么6900\3090之类，其它应该都都OK；</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009173/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">【CPU散热器安装】：CPU散热器：除了乔思伯全铝ITX迷你机箱V11限高70mm，在安装的时候要注意热管方向，就是散热热管末端不要朝向地面，避免对散热效能影响；</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009165/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">【PCIe延长线】：乔思伯全铝ITX迷你机箱V11目前自带的是PCIe3.0延长线，所以尽量规避RX6600 RX6500这类采用PCIe4.0 8x\4x的显卡（要么就要换4.0的线）；其它新的PCIe4.0显卡，主机没核显的话在装机前，记得裸机插卡在BIOS里面设置好显卡插槽的速度（设置为gen3），避免装好之后才发现没设置点不亮；</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009168/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">【理线】：乔思伯全铝ITX迷你机箱V11理线在ITX机箱里面算不难，装好主板之后，先接好所有的IO线、跟散热风扇线。先整理好这些，后面再装电源，然后再走电源线，整理就不会乱了。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009167/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">另外这台机子是有灯光，不过为了规避RGB风扇多余的控制器，所以特意选了支持5VRGB，但不需要额外控制器的风扇，这样整体会简洁许多；</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009178/641" alt="图片"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">【定制线长度】：数据均为含电源接头的长度，直接给找好的店家即可。主板24Pin22cm，CPU8Pin 37cm，显卡8Pin 37cm。如果要求极致点的可以按建议少2cm。</p><p class="ql-align-justify"><img src="http://inews.gtimg.com/newsapp_bt/0/14498009174/641" alt="图片"></p><p><br></p>','/api/upload/image_1644290466622.jpg','2022年03月23日 12:51 新浪网');
insert into `article` values ('4','生活的14种好物推荐','商城','373','0',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ",null,null,null,'<p class="ql-align-justify">科技改变生活这句话放在什么年代都是正确的，近几年经济的高速发展，更是涌现了很多好的产品，没啥好多说的，一切尽在原创中了！</p><h2 class="ql-align-justify"><strong>一、重度依赖：手机&nbsp;</strong></h2><p class="ql-align-justify">二宝出身后，LD作为随身保姆每天陪吃陪睡，早上送大宝上学的任务就由楼主承担了，日复一日生物钟早请习惯了每天在这个时间点准时醒来。醒来后的第一件事就是打开床头柜上面的手机，手机做为人类器官的延伸，扮演着越来越重要的角色，老婆交代的事情可能还会忘记，唯独手机想忘都忘不了。17年从荣耀V9、华为nova 2 Plus、华硕电神4到vivo X20 Plus，看到了国产手机的进步，产品做工、系统优化上面已经能够比肩国际大牌。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/ad3775c34a421f826f123f3dc8831c58.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/342353e0029f939adba155095ed458ad.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">vivo X20 Plus用了有快四个月了，屏幕够大，续航方面做的不错，重度使用的话一整天不会有问题，拍照及Hi-Fi音乐都是不错的卖点，可惜了在这一波手机的涨价潮中，价格也站上了3000+的高位，照这个趋势发展下去，楼主恐怕连国产手机都快用不起了。</p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：相机确实很给力，逆光效果出众，已经具有了相机70%-80%的功力吧。</p><h2 class="ql-align-justify"><strong>二、养成好习惯 ：电动牙刷</strong></h2><p class="ql-align-justify">刷牙洗脸，楼主的第一把电动牙刷是14年买的力博得，89块钱买的先不说不效果怎么样，最大的好处是让楼主养成了良好的刷牙习惯，早起再匆忙也会按时刷完二分钟。第二把还是力博得图中白色那把，用的也不错，特别是自带消毒桶的设计，很有新颖。右侧这把老婆自己买的oralshark声波电动牙刷K117-B，无意见看见李维嘉做的直播买的，用了几个月，使用体验还不错，等有好价的时候入个飞利浦9系的电动牙刷试下，不知道会不会有更好的体验。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/3f642da8d51994cdcee73370725c4413.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：用过电动牙刷以后再也回不去手动刷牙了，使用高效并且能够养成良好的刷牙习惯，飞利浦、欧乐-B等大牌时常有好价，发展了几年的国产声波牙刷也可适当考虑，几十到上千，丰俭由人。</p><h2 class="ql-align-justify"><strong>三、改善生存条件：美的厨宝</strong></h2><p class="ql-align-justify">是不是羡慕宾馆开了水龙头马上就有热水？那是因为宾馆的供水系统设计有热水循环，为了保证马上有热水，整套的循环系统始终在运行。家用的话考虑到经济性就没必要怎么复杂，直接定时循环或者要用的时候开关控制（一般就是开下水龙头），新房装修的话真的可以考虑装个，毕竟早上洗漱分秒必争，开个水龙头就有热水体验上面还是不错的。想要马上就要热水可以用，目前可以考虑二种方案，一种使用即热式水龙头，另外一种就是楼主这样子在洗手盆下面装个小厨宝，管路短热水也是立马就有，再也不用为每天早晚的洗漱用水烦恼。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/880c99131b6e3428caa30e23ba704c6f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★</p><p class="ql-align-justify">推荐理由：你想要的热水，说有就有，方便，装了后夫妻二个再也没有为谁打热水红过脸了。&nbsp;</p><h2 class="ql-align-justify"><strong>四、冬日里的温暖：智能马桶</strong></h2><p class="ql-align-justify">寒冷的冬天与冰寒的马桶圈亲密接触，相信体验过的滋味都不太好，拉粑粑都拉的不顺畅，有了智能马桶后，被加热的马桶圈让人坐着都不想起来，两个字“舒服”。智能马桶集便圈加热、温水洗净、按摩等多项功能于一体，提供良好的洁身功效和舒适的清洗体验。功能设计多样，提供臀部清洁与女性清洁，清洗到位。智能马桶的除臭功能也是非常的实用，小夜灯的设计对晚上上卫生间非常的有帮助，人体感应开关的存在，拉完粑粑连冲水都自动完成了。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/f81ab25804edcb99b980aad99f23a152.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p class="ql-align-justify"><br></p><p class="ql-align-justify">推荐指数：★★★★★</p><p class="ql-align-justify">推荐理由：经历了日本的智能马桶盖抢购潮，国人对于智能马桶早就有了全新的认识。智能马桶集清洗、按摩、座圈加热等多项功能于一体，你值得拥有。</p><p class="ql-align-justify">使用小贴士：楼主家这个是储水式的，打开清洗开关后，会先出来一截冷水，使用前我会先放掉这一部分冷水。操作也不难，清洗开关先旋转一点点，喷头没有完全伸出以前把冷水放掉，维持几秒后面的就是温水了（品牌及操作不一样这个也不一定有用）。</p><h2 class="ql-align-justify"><strong>五、厨房好伴侣：美的电蒸箱</strong></h2><p class="ql-align-justify">开启早餐模式，电蒸箱绝对算的上是厨房的小神器之一，从买来这东西有什么用，浪费钱到再也离不开的大反转，没有超过一个月，早中晚做的蒸的东西实在是太方便不过了，相比较家用那种几层的小蒸笼，电蒸箱的优势太明显了，腔体大，二层隔板一次能放四个碟子，基本能够满足5口之家一餐所需。对楼主这种平时很少下厨的人来说，电蒸箱就更加的重要了，水箱加满水，选个合适的程式，开点小差，做的别的事情，也不用人为的去多关注，时间到了就等在上桌就行。相比较烤箱，楼主更推荐优先考虑电蒸箱，蒸菜比起其它的做法也更有营养，操作起来也更省事、快捷很多，符合现代人快节奏的生活方式。</p><p class="ql-align-justify"><span style="background-color: initial;"><img src="http://sinastorage.com/storage.miaosha.sina.com.cn/products/201803/0b82210b1d721844836a8e4d310da34f.jpg" alt="#好物推荐征稿#影响楼主生活的好物推荐_新浪众测"></span></p><p><br></p>','/api/upload/image_1644290965837.jpg','2022年03月23日 12:51 新浪网');
insert into `article_type` values ('1','100','商城','0',null,null,null,"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
insert into `goods_type` values ('1','0','二手商城','二手商城(second_hand_mall)','','second_hand_mall','second_hand_mall_id',"2022-03-21 03:10:47.000 ","2022-03-21 03:10:47.000 ");
