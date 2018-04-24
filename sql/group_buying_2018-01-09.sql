# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: group_buying
# Generation Time: 2018-01-09 06:49:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `permission` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权限',
  `is_super` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '超级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='管理员';

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;

INSERT INTO `admin` (`id`, `username`, `password`, `permission`, `is_super`)
VALUES
	(1,X'61646D696E',X'3231323332663239376135376135613734333839346130653461383031666333',0,1),
	(2,X'74657374',X'3039386636626364343632316433373363616465346538333236323762346636',5119,0);

/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table agency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agency`;

CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '办事处ID',
  `agency_name` varchar(32) NOT NULL DEFAULT '' COMMENT '办事处名称',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `date_modified` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '变更时间',
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;

INSERT INTO `agency` (`agency_id`, `agency_name`, `date_added`, `date_modified`)
VALUES
	(1,'新城办',1510640872,1513823999),
	(2,'宝鸡渭滨办',1510640872,1510640872),
	(3,'户县办',1510640872,1510640872),
	(4,'秦都办',1510640872,1510640872),
	(5,'未央办',1510640872,1510640872),
	(6,'雁塔办',1510640872,1510640872),
	(7,'长安办',1510640872,1510640872),
	(8,'渭城办',1510640872,1510640872),
	(9,'甘泉办',1510640872,1510640872),
	(10,'汉台办',1510640872,1510640872),
	(11,'礼泉办',1510640872,1510640872),
	(12,'蒲城办',1510640872,1510640872),
	(13,'莲湖办',1510640872,1510640872),
	(14,'大荔办',1510640872,1510640872);

/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bank_description
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bank_description`;

CREATE TABLE `bank_description` (
  `bank_id` int(11) NOT NULL COMMENT '银行ID',
  `language_id` int(11) NOT NULL COMMENT '语言ID',
  `bank_name` varchar(255) NOT NULL COMMENT '银行名称',
  `is_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶（0-不置顶1-置顶）',
  `sort_order` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`bank_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bank_description` WRITE;
/*!40000 ALTER TABLE `bank_description` DISABLE KEYS */;

INSERT INTO `bank_description` (`bank_id`, `language_id`, `bank_name`, `is_top`, `sort_order`)
VALUES
	(1,1,'安徽省农村信用社',0,0),
	(2,1,'鞍山银行',0,0),
	(3,1,'北京农商行',0,0),
	(4,1,'渤海银行',0,0),
	(5,1,'包商银行',0,0),
	(6,1,'北京银行',0,0),
	(7,1,'长安银行',0,0),
	(8,1,'长沙银行',0,0),
	(9,1,'沧州银行',0,0),
	(10,1,'常熟农商银行',0,0),
	(11,1,'重庆农商行',0,0),
	(12,1,'重庆银行',0,0),
	(13,1,'承德银行',0,0),
	(14,1,'德阳银行',0,0),
	(15,1,'大连银行',0,0),
	(16,1,'东莞农村商业银行',0,0),
	(17,1,'东莞银行',0,0),
	(18,1,'德州银行',0,0),
	(19,1,'东营银行',0,0),
	(20,1,'鄂尔多斯银行',0,0),
	(21,1,'福建省农村信用社联合社',0,0),
	(22,1,'阜新银行',0,0),
	(23,1,'富滇银行',0,0),
	(24,1,'福建海峡银行',0,0),
	(25,1,'广发银行',0,0),
	(26,1,'贵阳银行',0,0),
	(27,1,'桂林银行',0,0),
	(28,1,'广西北部湾银行',0,0),
	(29,1,'广东华兴银行',0,0),
	(30,1,'广州农村商业银行',0,0),
	(31,1,'赣州银行',0,0),
	(32,1,'广西壮族自治区农村信用社联合社',0,0),
	(33,1,'广东南粤银行',0,0),
	(34,1,'广州银行',0,0),
	(35,1,'恒丰银行',0,0),
	(36,1,'湖北省农村信用合作联社',0,0),
	(37,1,'韩亚银行',0,0),
	(38,1,'韩国企业银行',0,0),
	(39,1,'徽商银行',0,0),
	(40,1,'哈尔滨银行',0,0),
	(41,1,'葫芦岛银行',0,0),
	(42,1,'杭州银行',0,0),
	(43,1,'河北银行',0,0),
	(44,1,'邯郸银行',0,0),
	(45,1,'海南省农村信用社',0,0),
	(46,1,'汉口银行',0,0),
	(47,1,'华夏银行',0,0),
	(48,1,'湖州银行',0,0),
	(49,1,'交通银行',0,0),
	(50,1,'济宁银行',0,0),
	(51,1,'吉林银行',0,0),
	(52,1,'吉林省农村信用社联合社',0,0),
	(53,1,'晋商银行',0,0),
	(54,1,'晋城银行',0,0),
	(55,1,'江苏省农村信用社联合社',0,0),
	(56,1,'江苏银行',0,0),
	(57,1,'九江银行',0,0),
	(58,1,'嘉兴银行',0,0),
	(59,1,'锦州银行',0,0),
	(60,1,'昆仑银行',0,0),
	(61,1,'昆山农村商业银行',0,0),
	(62,1,'开封市商业银行',0,0),
	(63,1,'莱商银行',0,0),
	(64,1,'龙江银行',0,0),
	(65,1,'漯河银行',0,0),
	(66,1,'柳州银行',0,0),
	(67,1,'兰州银行',0,0),
	(68,1,'临商银行',0,0),
	(69,1,'乐山市商业银行',0,0),
	(70,1,'廊坊银行',0,0),
	(71,1,'洛阳银行',0,0),
	(72,1,'绵阳市商业银行',0,0),
	(73,1,'宁波银行',0,0),
	(74,1,'南京银行',0,0),
	(75,1,'宁夏银行',0,0),
	(76,1,'宁夏黄河农村商业银行',0,0),
	(77,1,'宁波东海银行',0,0),
	(78,1,'南阳市商业银行',0,0),
	(79,1,'内蒙古银行',0,0),
	(80,1,'南昌银行',0,0),
	(81,1,'浦发银行',1,8),
	(82,1,'攀枝花市商业银行',0,0),
	(83,1,'齐商银行',0,0),
	(84,1,'青岛银行',0,0),
	(85,1,'泉州银行',0,0),
	(86,1,'青海银行',0,0),
	(87,1,'日照银行',0,0),
	(88,1,'深圳平安银行',0,0),
	(89,1,'绍兴银行',0,0),
	(90,1,'深圳农村商业银行',0,0),
	(91,1,'顺德农商银行',0,0),
	(92,1,'商丘市商业银行',0,0),
	(93,1,'上饶银行',0,0),
	(94,1,'三门峡银行',0,0),
	(95,1,'上海农商银行',0,0),
	(96,1,'上海银行',1,11),
	(97,1,'苏州银行',0,0),
	(98,1,'山东省农村信用社联合社',0,0),
	(99,1,'天津银行',0,0),
	(100,1,'泰安市商业银行',0,0),
	(101,1,'铁岭银行',0,0),
	(102,1,'天津农商银行',0,0),
	(103,1,'台州银行',0,0),
	(104,1,'潍坊银行',0,0),
	(105,1,'乌鲁木齐市商业银行',0,0),
	(106,1,'威海市商业银行',0,0),
	(107,1,'外换银行',0,0),
	(108,1,'温州银行',0,0),
	(109,1,'吴江农村商业银行',0,0),
	(110,1,'兴业银行',0,0),
	(111,1,'邢台银行',0,0),
	(112,1,'厦门银行',0,0),
	(113,1,'西安银行',0,0),
	(114,1,'新韩银行',0,0),
	(115,1,'鄞州银行',0,0),
	(116,1,'烟台银行',0,0),
	(117,1,'友利银行',0,0),
	(118,1,'榆次融信村镇银行',0,0),
	(119,1,'云南省农村信用社',0,0),
	(120,1,'营口银行',0,0),
	(121,1,'中国工商银行',1,1),
	(122,1,'中国农业银行',1,2),
	(123,1,'中国建设银行',1,3),
	(124,1,'中国邮政储蓄银行',1,6),
	(125,1,'中国银行',1,4),
	(126,1,'招商银行',1,5),
	(127,1,'中国光大银行',1,7),
	(128,1,'中信银行',1,9),
	(129,1,'浙江民泰商业银行',0,0),
	(130,1,'浙商银行',0,0),
	(131,1,'中银富登村镇银行',0,0),
	(132,1,'珠海华润银行',0,0),
	(133,1,'郑州银行',0,0),
	(134,1,'张家港农村商业银行',0,0),
	(135,1,'张家口市商业银行',0,0),
	(136,1,'浙江稠州商业银行',0,0),
	(137,1,'浙江泰隆商业银行',0,0),
	(138,1,'浙江省农村信用社联合社',0,0),
	(139,1,'自贡市商业银行',0,0),
	(140,1,'中国民生银行',1,10);

/*!40000 ALTER TABLE `bank_description` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table conf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conf`;

CREATE TABLE `conf` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `car` int(255) NOT NULL COMMENT '90天购车',
  `house` int(11) NOT NULL COMMENT '90天购房',
  `all` int(11) NOT NULL COMMENT '180天购房购车',
  `carnumber` int(11) NOT NULL COMMENT '90天购车团购人数',
  `housenumber` int(11) NOT NULL COMMENT '90天购房团购人数',
  `allnumber` int(11) NOT NULL COMMENT '180天购车购房团购人数',
  `point` int(11) NOT NULL COMMENT '分享云联惠积分',
  `agencypoint1` int(11) NOT NULL COMMENT '办事处返利比例1',
  `agencypoint2` int(11) NOT NULL COMMENT '办事处返利比例2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `conf` WRITE;
/*!40000 ALTER TABLE `conf` DISABLE KEYS */;

INSERT INTO `conf` (`id`, `car`, `house`, `all`, `carnumber`, `housenumber`, `allnumber`, `point`, `agencypoint1`, `agencypoint2`)
VALUES
	(1,4,12,12,5,5,10,30,2,6);

/*!40000 ALTER TABLE `conf` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员ID',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '会员姓名',
  `mobile` varchar(16) NOT NULL COMMENT '手机号码',
  `yun_id` varchar(64) NOT NULL COMMENT '云联惠ID',
  `bind_mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '绑定手机号码',
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '汇款金额',
  `charge_date` int(11) NOT NULL COMMENT '汇款日期',
  `payment` varchar(255) NOT NULL DEFAULT '' COMMENT '汇款方式',
  `idcard` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证',
  `bank_username` varchar(255) NOT NULL DEFAULT '' COMMENT '开户名',
  `bank_name` int(3) NOT NULL COMMENT '开户行',
  `bank_account_number` varchar(255) NOT NULL DEFAULT '' COMMENT '银行账号',
  `agency_id` int(11) NOT NULL COMMENT '办事处',
  `share_username` varchar(255) NOT NULL DEFAULT '' COMMENT '直接分享人',
  `share_yun_id` varchar(255) NOT NULL DEFAULT '' COMMENT '分享人云联惠ID',
  `share_usermobile` varchar(255) NOT NULL DEFAULT '' COMMENT '分享人绑定手机号',
  `type` int(1) NOT NULL COMMENT '购买类型',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 等待排单 2已排单',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '变更时间',
  `is_rebate` int(1) NOT NULL DEFAULT '0' COMMENT '是否返等额积分，目前只有180天的订单有此状态',
  `is_full` int(1) NOT NULL DEFAULT '0' COMMENT '是否已满资格',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `yun_id` (`yun_id`),
  KEY `idcard` (`idcard`),
  KEY `share_yun_id` (`share_yun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;

INSERT INTO `member` (`id`, `name`, `mobile`, `yun_id`, `bind_mobile`, `amount`, `charge_date`, `payment`, `idcard`, `bank_username`, `bank_name`, `bank_account_number`, `agency_id`, `share_username`, `share_yun_id`, `share_usermobile`, `type`, `status`, `add_time`, `update_time`, `is_rebate`, `is_full`, `remarks`)
VALUES
	(1,'张三','13700000000','张三','13700000000',35000,1514822400,'转账','622848000000000000','张三',121,'622848000000000000',1,'李四','李四','13500000000',1,1,1514867848,1514886375,0,1,''),
	(2,'张三','13700000000','张三','13700000000',35000,1514867793,'转账','622848000000000000','张三',121,'622848000000000000',1,'李四','李四','13500000000',1,1,1514867848,1514867848,0,1,''),
	(3,'张三','13700000000','张三','13700000000',35000,1514867793,'转账','622848000000000000','张三',121,'622848000000000000',1,'李四','李四','13500000000',1,1,1514867848,1514867848,0,1,''),
	(4,'李四','13500000000','李四','13500000000',30000,1514867853,'转账','622858000000000000','李四',121,'622848000000000000',1,'王五','王五','18700000000',2,1,1514867916,1514867916,0,0,''),
	(5,'李四','13500000000','李四','13500000000',30000,1514867853,'转账','622858000000000000','李四',121,'622848000000000000',1,'王五','王五','18700000000',2,1,1514867916,1514867916,0,0,''),
	(6,'李四','13500000000','李四','13500000000',30000,1514867853,'转账','622858000000000000','李四',121,'622848000000000000',1,'王五','王五','18700000000',2,1,1514867916,1514867916,0,1,''),
	(7,'李四','13500000000','李四','13500000000',35000,1514868073,'转账','622848000000000000','转账',121,'622848000000000000',1,'王五','王五','18700000000',1,1,1514868151,1514868151,0,1,''),
	(8,'李四','13500000000','李四','13500000000',35000,1514868073,'转账','622848000000000000','转账',121,'622848000000000000',1,'王五','王五','18700000000',1,1,1514868151,1514868151,0,1,''),
	(9,'赵六','15800000000','赵六','15800000000',30000,1514879520,'转账','622322000000000000','赵六',121,'6223220000000000000',1,'李四','李四','13500000000',2,1,1514879570,1514879570,0,0,''),
	(10,'赵六','15800000000','赵六','15800000000',30000,1514879520,'转账','622322000000000000','赵六',121,'6223220000000000000',1,'李四','李四','13500000000',2,1,1514879570,1514879570,0,0,''),
	(11,'sad','13500000000','sad','13500000000',35000,1514886620,'sdad','610324100000000000','',121,'610324100000000000',1,'sda','sad','13400000000',1,1,1514886809,1514886809,0,0,''),
	(23,'sad','18700990442','sad','18700990442',35000,1514943752,'sdada','622322000000000000','sad',121,'622322000000000000',5,'李四','sad','13500000000',1,1,1514944095,1514944095,0,0,''),
	(25,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(26,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(27,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(28,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(29,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(30,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(31,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(32,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(33,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(34,'测试','13400000000','测试','13400000000',35000,1514944472,'转账','610329000000000000','测试',121,'610329000000000000',1,'李四','李四','13500000000',1,1,1514944541,1514944541,0,0,''),
	(40,'测试','13400000000','测试','13400000000',20000,1515036961,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037008,1515037008,0,1,''),
	(41,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(42,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(43,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(44,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(45,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(46,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,1,''),
	(47,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(48,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(49,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(50,'测试','13400000000','测试','13400000000',20000,1515037032,'转账','610314000000000000','哈哈',121,'610324000000000000',4,'李四','李四','13500000000',3,1,1515037071,1515037071,0,0,''),
	(51,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(52,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(53,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(54,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(55,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(56,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(57,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(58,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(59,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(60,'哈哈','18700990442','哈哈','18700990442',20000,1515037141,'转账','610324000000000000','测试',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515037199,1515037199,0,0,''),
	(63,'哈哈','18700990442','哈哈','18700990442',20000,1515037391,'转账','610314000000000000','哈哈',121,'610324000000000000',7,'李四','李四','13500000000',3,1,1515040453,1515040453,0,0,''),
	(73,'哈哈','13400000000','哈哈','13400000000',20000,1515040982,'转账','610324000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515041136,1515041136,0,0,''),
	(78,'哈哈','13400000000','哈哈','13400000000',20000,1515041330,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',3,1,1515041410,1515041410,0,0,''),
	(79,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(80,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(81,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(82,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(83,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(84,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(85,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(86,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(87,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,''),
	(88,'哈哈','13400000000','哈哈','13400000000',35000,1515134696,'转账','610314000000000000','哈哈',121,'610324000000000000',1,'李四','李四','13500000000',1,1,1515134725,1515134725,0,0,'');

/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table share
# ------------------------------------------------------------

DROP TABLE IF EXISTS `share`;

CREATE TABLE `share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `share_yun_id` varchar(64) NOT NULL DEFAULT '',
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `share_yun_id` (`share_yun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;

INSERT INTO `share` (`id`, `share_yun_id`, `point`)
VALUES
	(1,'李四',403500),
	(2,'王五',48000),
	(3,'sad',21000);

/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `yun_id` varchar(255) NOT NULL DEFAULT '',
  `point` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`yun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `yun_id`, `point`)
VALUES
	(3,'测试',0),
	(4,'哈哈',0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wait_time
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wait_time`;

CREATE TABLE `wait_time` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `wait_time` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `str_code` int(11) NOT NULL COMMENT '排单号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mid` (`mid`),
  KEY `wait_time` (`wait_time`),
  KEY `str_code` (`str_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wait_time` WRITE;
/*!40000 ALTER TABLE `wait_time` DISABLE KEYS */;

INSERT INTO `wait_time` (`id`, `mid`, `wait_time`, `type`, `str_code`)
VALUES
	(1,1,1514867848,1,1),
	(2,2,1514867848,1,2),
	(3,3,1514867848,1,3),
	(4,4,1514867916,2,1),
	(5,5,1514867916,2,2),
	(6,6,1514867916,2,3),
	(7,7,1514868151,1,4),
	(8,8,1514868151,1,5),
	(9,9,1514879570,2,4),
	(10,10,1514879570,2,5),
	(11,11,1514886809,1,6),
	(23,23,1514944095,1,7),
	(25,25,1514944541,1,8),
	(26,26,1514944541,1,9),
	(27,27,1514944541,1,10),
	(28,28,1514944541,1,11),
	(29,29,1515030941,1,12),
	(30,30,1515030941,1,13),
	(31,31,1515030941,1,14),
	(32,32,1515030941,1,15),
	(33,33,1515117341,1,16),
	(34,34,1515117341,1,17),
	(40,40,1515037008,3,1),
	(41,41,1515037071,3,2),
	(42,42,1515037071,3,3),
	(43,43,1515037071,3,4),
	(44,44,1515037071,3,5),
	(45,45,1515037071,3,6),
	(46,46,1515037071,3,7),
	(47,47,1515037071,3,8),
	(48,48,1515037071,3,9),
	(49,49,1515037071,3,10),
	(50,50,1515037071,3,11),
	(51,51,1515037199,3,12),
	(52,52,1515037199,3,13),
	(53,53,1515037199,3,14),
	(54,54,1515037199,3,15),
	(55,55,1515037199,3,16),
	(56,56,1515037199,3,17),
	(57,57,1515037199,3,18),
	(58,58,1515037199,3,19),
	(59,59,1515037199,3,20),
	(60,60,1515037199,3,21),
	(61,63,1515037199,3,22),
	(62,73,1514995200,3,23),
	(63,78,1515081600,3,24),
	(64,79,1515081600,1,18),
	(65,80,1515081600,1,19),
	(66,81,1515168000,1,20),
	(67,82,1515168000,1,21),
	(68,83,1515168000,1,22),
	(69,84,1515168000,1,23),
	(70,85,1515254400,1,24),
	(71,86,1515254400,1,25),
	(72,87,1515254400,1,26),
	(73,88,1515254400,1,27);

/*!40000 ALTER TABLE `wait_time` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;