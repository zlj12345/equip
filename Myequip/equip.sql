/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : equip

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-26 20:25:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `eq_dynamic`
-- ----------------------------
DROP TABLE IF EXISTS `eq_dynamic`;
CREATE TABLE `eq_dynamic` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `pubdate` varchar(16) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `pic` varchar(64) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `expire` enum('1','0') CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eq_dynamic
-- ----------------------------
INSERT INTO `eq_dynamic` VALUES ('1', '	AI 眼中的人类世界：带着“偏见”，而且审美有些“黑暗”', '2017.01.21', '全部资讯 商城动态', '从一九四九巴黎蒙田大街30号（30 Avenue Montaigne）New Look 的展出开始，Dior就成为高级女装的代名词，继承了发过高级女装传统，始终保持华丽的设计路线，做工精细，迎合上流社会成熟女性的审美品位，象征着发过时装文化的最高精神。', 'img/product/d_001.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('2', '	硅谷AI人才竞争白热化:几年经验年薪就高达50万美元', '2017.05.15', '全部资讯 商城动态', '在担任Saint Laurent创意总监近一年后，Anthony Vaccarello接受了《T》的独家专访。一个合格的接班人需要经受什么样的洗礼才能续写这间法国时装屋的辉煌历史Saint Laurent的三个时装屋。', 'img/product/d_002.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('3', '马斯克:特斯拉车载人工智能将能预测乘客目的地', '2017.02.16', '全部资讯 商城动态', '1月19日晚，享有“时尚教父”之称的皮尔·卡丹在被誉为名流雅致生活之镜的巴黎马克西姆餐厅，首次发布马克西姆品牌高级珠宝。数十件熠熠生辉的奢华珠宝，以“美好时代”为主题，与一百多年历史的马克西姆餐厅风格互为辉映，再现了巴黎19世纪末20世纪初那个被史学界誉为“美好年代”的金色时光。', 'img/product/d_004.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('4', '	AI人才有多贵?年薪三五十万美元起步,高校教授大量投身工业界', '2017.05.24', '全部资讯 商城动态', '起源于欧洲1600年至1750年的巴洛克风格，不仅在艺术层面被广为盛行，同时也影响着当代时装。巴洛克风格与新古典主义的碰撞带来立体丰盈的荷叶边装饰，为张扬的红色带来浓郁的爱意。无论是复古别致的正红色，还是风情万种的亮红色，都让东西方女性演绎出摩登女性的勇敢自信。', 'img/product/d_005.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('5', '微软笔记本SurfaceBook2发售:支持人工智能 AR', '2017.08.27', '全部资讯 商城动态', '2014春夏巴黎时装周期间，海报时尚网应法国高级时装公会和法新时尚国际机构的邀请，与多位时装设计师展开对话。日法混血设计师Kyoko Shimada Yamaji和她的品牌Lavalliere，将马术灵感与异域风情的艺术性一同呈现。', 'img/product/d_003.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('6', '5G打开未来大门，智能物联登堂入室', '2017.03.09', '全部资讯 科技资讯', '随着传统连接价值的下降，运营商已经无法从这种连接中找到发展的动力，5G或许能有改善，依托更加灵活可控的网络提供差异化的服务，这是一个方向，但想象空间有限，更大的价值其实蕴含在5G打开那扇门以后，运营商如何创造更大的价值', 'img/product/d_001.jpg', '0');
INSERT INTO `eq_dynamic` VALUES ('7', '机器人不太听话？人工智能要对人类的非法命令说不', '2016.04.25', '全部资讯 科技资讯', '人类与人工智能互动的未来将会引发焦虑。随着人们开始推动将伦理观念灌输到人工智能体系中，我们必须承认这样一个想法：我们需要制造出可以对命令说不的机器。', 'img/product/d_002.jpg', '0');

-- ----------------------------
-- Table structure for `eq_equip`
-- ----------------------------
DROP TABLE IF EXISTS `eq_equip`;
CREATE TABLE `eq_equip` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `lname` varchar(32) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `expire` enum('0','1') CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `promise` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eq_equip
-- ----------------------------
INSERT INTO `eq_equip` VALUES ('1', '1', '4k智能航拍无人机 入门良选', '5900.00', '四轴航拍无人机B02', '无人机', '245555000', '123456', '1', '0', '正品保证 极速退款 七天无理由退换货');
INSERT INTO `eq_equip` VALUES ('2', '1', '4K智能航拍无人机 入门良选', '10900.00', '四轴智能航拍无人机001', '无人机', '251100330', '1111', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('3', '1', '4K智能航拍无人机 入门良选', '8900.00', '四轴航拍无人机002', '无人机', '122210000', '1234', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('4', '2', '4K智能航拍无人机 入门良选', '2650.00', '飞利达踏板无人车', '电动车', '145012000', '5222', '1', '0', '正品保证 七天无理由退换货 极速退款 ');
INSERT INTO `eq_equip` VALUES ('5', '2', '4K智能航拍无人机 入门良选', '2820.00', '踏板平衡车052', '电动车', '156411200', '231', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('6', '3', '实时监测体温、血压、心率', '2215.00', '智能手表 smartWatchC', '智能手表', '16350521', '2332', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('7', '3', '实时监测体温、血压、心率', '2250.00', 'B3智能手环运动电话手表', '智能手表', '125432000', '325', '1', '0', '正品保证 七天无理由退换货  赠运费险');
INSERT INTO `eq_equip` VALUES ('8', '4', '带给民身临其境的极致体验', '2239.00', 'VR眼镜002B', 'VR眼镜', '2120000', '214', '1', '0', '正品保证 七天无理由退换货  赠运费险');
INSERT INTO `eq_equip` VALUES ('9', '4', '电影手机专用3D虚拟现实智能手柄', '5100.00', 'VR4代头戴眼镜w8', 'VR眼镜', '16501550', '255', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('10', '1', '无人机航拍，高清专业4K智能', '1388.00', '指南针技术跟拍版', '无人机', '123455656', '205', '1', '0', '正品保证 七天无理由退换货 极速退款 ');
INSERT INTO `eq_equip` VALUES ('11', '1', '智能跟随四轴飞行', '1880.00', '奥森马高清航拍无人机', '无人机', '212001222', '103', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('12', '1', '四轴飞行器便携式生日玩具', '398.00', '折叠广角航拍无人机', '无人机', '1221110000', '736', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('13', '2', '电动代步车智能体感带扶杆平衡车', '1299.00', '阿尔郎平衡车', '电动车', '13240000', '3664', '1', '0', '七天无理由退换货 极速退款 赠运费险');
INSERT INTO `eq_equip` VALUES ('14', '2', '平衡车双轮智能体感车', '998.00', '成人越野思维车 儿童代步车', '电动车', '211255400', '9', '1', '0', '七天无理由退换货 极速退款 赠运费险');
INSERT INTO `eq_equip` VALUES ('15', '2', '智能漂移思维代步车车', '459.00', '龙吟双轮体感电动车', '电动车', '212350000', '12611', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('16', '2', '双轮成人体感思维车代步车', '1098.00', '领奥迷你电动自平衡车', '电动车', '24104100', '2409', '1', '0', '正品保证  极速退款 赠运费险');
INSERT INTO `eq_equip` VALUES ('17', '3', '圆屏触屏防水蓝牙智能手环', '358.00', '多功能智能手表', '智能手表', '165200010', '271', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('18', '3', '测心率睡眠健康防水蓝牙智能手表', '199.00', '布鲁迪智能手环女', '智能手表', '213500010', '1460', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('19', '3', '插卡多功能GPS定位通话防水手表', '198.00', '机械智能定位手表', '智能手表', '15200010', '22452', '1', '0', '正品保证 极速退款 七天无理由退换货');
INSERT INTO `eq_equip` VALUES ('20', '3', '防水监测健康睡眠通用苹果', '159.00', '欧瑞特智能运动手环', '智能手表', '1211100120', '3057', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('21', '4', '暴风谷歌眼镜墨镜5代', '168.00', 'VR虚拟现实3D眼镜', 'VR眼镜', '21482000', '7759', '1', '0', '正品保证 七天无理由退换货 极速退款');
INSERT INTO `eq_equip` VALUES ('22', '4', '头戴式游戏机苹果华为4D眼镜', '159.00', '一体机虚拟现实3D眼镜', 'VR眼镜', '16520220', '2168', '1', '0', '正品保证 七天无理由退换货 赠运费险');
INSERT INTO `eq_equip` VALUES ('23', '4', '头戴式虚拟现实游戏VR', '358.00', '魔士奇6代眼镜4D', 'VR眼镜', '1452200021', '7266', '1', '0', '七天无理由退换货 极速退款 赠运费险');
INSERT INTO `eq_equip` VALUES ('24', '4', '手机专用4D爱奇艺一体机', '68.00', 'ugp头盔VR眼镜', 'VR眼镜', '214595800', '6710', '1', '0', '正品保证 七天无理由退换货 赠运费险');

-- ----------------------------
-- Table structure for `eq_family`
-- ----------------------------
DROP TABLE IF EXISTS `eq_family`;
CREATE TABLE `eq_family` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `family` varchar(64) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `pic` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eq_family
-- ----------------------------
INSERT INTO `eq_family` VALUES ('1', '四轴航拍无人机', 'img/index/plane.jpg');
INSERT INTO `eq_family` VALUES ('2', '电动车', 'img/index/car.jpg');
INSERT INTO `eq_family` VALUES ('3', '智能手表', 'img/index/watch.jpg');
INSERT INTO `eq_family` VALUES ('4', 'VR眼镜', 'img/index/vr.jpg');

-- ----------------------------
-- Table structure for `eq_pic`
-- ----------------------------
DROP TABLE IF EXISTS `eq_pic`;
CREATE TABLE `eq_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `eq_id` int(11) DEFAULT NULL,
  `sm` varchar(128) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `md` varchar(128) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `lg` varchar(128) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eq_pic
-- ----------------------------
INSERT INTO `eq_pic` VALUES ('1', '8', 'img/plane/sm/151204103542.jpg', 'img/plane/md/151204103542.jpg', 'img/plane/lg/151204103542.jpg');
INSERT INTO `eq_pic` VALUES ('2', '8', 'img/plane/sm/1512041037915.jpg', 'img/plane/md/1512041037915.jpg', 'img/plane/lg/1512041037915.jpg');
INSERT INTO `eq_pic` VALUES ('3', '8', 'img/plane/sm/1512041045302.jpg', 'img/plane/nd/151204105302.jpg', 'img/plane/lg/151204105302.jpg');
INSERT INTO `eq_pic` VALUES ('4', '8', 'img/plane/sm/15120410335685.jpg', 'img/plane/md/15120410335685.jpg', 'img/plane/lg/15120410335685.jpg');
INSERT INTO `eq_pic` VALUES ('5', '9', 'img/plane/sm/15120410473385.jpg', 'img/plane/md/15120410473385.jpg', 'img/plane/lg/15120410473385.jpg');
INSERT INTO `eq_pic` VALUES ('6', '9', 'img/plane/sm/15120410522355.jpg', 'img/plane/md/15120410522355.jpg', 'img/plane/lg/15120410522355.jpg');
INSERT INTO `eq_pic` VALUES ('7', '9', 'img/plane/sm/15120410533682.jpg', 'img/plane/md/15120410533682.jpg', 'img/plane/lg/15120410533682.jpg');
INSERT INTO `eq_pic` VALUES ('8', '9', 'img/plane/sm/151204105567.jpg', 'img/plane/md/151204105567.jpg', 'img/plane/lg/151204105567.jpg');
INSERT INTO `eq_pic` VALUES ('9', '9', 'img/plane/sm/15120410573330.jpg', 'img/plane/md/15120410573330.jpg', 'img/plane/lg/15120410573330.jpg');
INSERT INTO `eq_pic` VALUES ('10', '21', 'img/plane/sm/15120407928391.jpg', 'img/plane/md/15120407928391.jpg', 'img/plane/lg/15120407928391.jpg');
INSERT INTO `eq_pic` VALUES ('11', '21', 'img/plane/sm/15120409118275.jpg', 'img/plane/md/15120409118275.jpg', 'img/plane/lg/15120409118275.jpg');
INSERT INTO `eq_pic` VALUES ('12', '21', 'img/plane/sm/15120409146137.jpg', 'img/plane/md/15120409118275.jpg', 'img/plane/lg/15120409118275.jpg');
INSERT INTO `eq_pic` VALUES ('13', '21', 'img/plane/sm/15120409244149.jpg', 'img/plane/md/15120409244149.jpg', 'img/plane/lg/15120409244149.jpg');
INSERT INTO `eq_pic` VALUES ('14', '21', 'img/plane/sm/15120409244149.jpg', 'img/plane/md/15120409244149.jpg', 'img/plane/lg/15120409244149.jpg');
INSERT INTO `eq_pic` VALUES ('15', '23', 'img/plane/sm/15120409304295.jpg', 'img/plane/md/15120409304295.jpg', 'img/plane/lg/15120409304295.jpg');
INSERT INTO `eq_pic` VALUES ('16', '23', 'img/plane/sm/15120409405365.jpg', 'img/plane/md/15120409405365.jpg', 'img/plane/lg/15120409405365.jpg');
INSERT INTO `eq_pic` VALUES ('17', '23', 'img/plane/sm/1512041029550.jpg', 'img/plane/md/1512041029550.jpg', 'img/plane/lg/1512041029550.jpg');
INSERT INTO `eq_pic` VALUES ('18', '23', 'img/plane/sm/15120410312393.jpg', 'img/plane/md/15120410312393.jpg', 'img/plane/lg/15120410312393.jpg');
INSERT INTO `eq_pic` VALUES ('19', '23', 'img/plane/sm/15120410312393.jpg', 'img/plane/md/15120410312393.jpg', 'img/plane/lg/15120410312393.jpg');
INSERT INTO `eq_pic` VALUES ('20', '22', 'img/plane/sm/15120410599491.jpg', 'img/plane/md/15120410599491.jpg', 'img/plane/lg/15120410599491.jpg');
INSERT INTO `eq_pic` VALUES ('21', '22', 'img/plane/sm/15120410599491.jpg', 'img/plane/md/15120410599491.jpg', 'img/plane/lg/15120410599491.jpg');
INSERT INTO `eq_pic` VALUES ('22', '22', 'img/plane/sm/15120410646373.jpg', 'img/plane/md/15120410646373.jpg', 'img/plane/lg/15120410646373.jpg');
INSERT INTO `eq_pic` VALUES ('23', '22', 'img/plane/sm/15120410686458.jpg', 'img/plane/md/15120410686458.jpg', 'img/plane/lg/15120410686458.jpg');
INSERT INTO `eq_pic` VALUES ('24', '22', 'img/plane/sm/15120410793641.jpg', 'img/plane/md/15120410793641.jpg', 'img/plane/lg/15120410793641.jpg');
INSERT INTO `eq_pic` VALUES ('25', '24', 'img/plane/sm/15120410932368.jpg', 'img/plane/md/15120410932368.jpg', 'img/plane/lg/15120410932368.jpg');
INSERT INTO `eq_pic` VALUES ('26', '24', 'img/plane/sm/15120410951017.jpg', 'img/plane/md/15120410951017.jpg', 'img/plane/lg/15120410951017.jpg');
INSERT INTO `eq_pic` VALUES ('27', '24', 'img/plane/sm/15120410976724.jpg', 'img/plane/md/15120410976724.jpg', 'img/plane/lg/15120410976724.jpg');
INSERT INTO `eq_pic` VALUES ('28', '24', 'img/plane/sm/15120410992525.jpg', 'img/plane/md/15120410992525.jpg', 'img/plane/lg/15120410992525.jpg');
INSERT INTO `eq_pic` VALUES ('29', '24', 'img/plane/sm/15120411016428.jpg', 'img/plane/md/15120411016428.jpg', 'img/plane/lg/15120411016428.jpg');
INSERT INTO `eq_pic` VALUES ('30', '1', 'img/plane/sm/15120411262668.jpg', 'img/plane/md/15120411262668.jpg', 'img/plane/lg/15120411262668.jpg');
INSERT INTO `eq_pic` VALUES ('31', '1', 'img/plane/sm/15120411286125.jpg', 'img/plane/md/15120411286125.jpg', 'img/plane/lg/15120411286125.jpg');
INSERT INTO `eq_pic` VALUES ('32', '1', 'img/plane/sm/15120411334120.jpg', 'img/plane/md/15120411334120.jpg', 'img/plane/lg/15120411334120.jpg');
INSERT INTO `eq_pic` VALUES ('33', '2', 'img/plane/sm/15120411378282.jpg', 'img/plane/md/15120411378282.jpg', 'img/plane/lg/15120411378282.jpg');
INSERT INTO `eq_pic` VALUES ('34', '2', 'img/plane/sm/15120411394805.jpg', 'img/plane/md/15120411394805.jpg', 'img/plane/lg/15120411394805.jpg');
INSERT INTO `eq_pic` VALUES ('36', '1', 'img/plane/sm/15120411286125.jpg', 'img/plane/md/15120411286125.jpg', 'img/plane/lg/15120411286125.jpg');
INSERT INTO `eq_pic` VALUES ('37', '1', 'img/plane/sm/15120411334120.jpg', 'img/plane/md/15120411334120.jpg', 'img/plane/lg/15120411334120.jpg');
INSERT INTO `eq_pic` VALUES ('38', '2', 'img/plane/sm/15120411417478.jpg', 'img/plane/md/15120411417478.jpg', 'img/plane/lg/15120411417478.jpg');
INSERT INTO `eq_pic` VALUES ('39', '2', 'img/plane/sm/15120411436249.jpg', 'img/plane/md/15120411436249.jpg', 'img/plane/lg/15120411436249.jpg');
INSERT INTO `eq_pic` VALUES ('40', '2', 'img/plane/sm/15120411462764.jpg', 'img/plane/md/15120411462764.jpg', 'img/plane/lg/15120411462764.jpg');
INSERT INTO `eq_pic` VALUES ('41', '3', 'img/plane/sm/15120411513881.jpg', 'img/plane/md/15120411513881.jpg', 'img/plane/lg/15120411513881.jpg');
INSERT INTO `eq_pic` VALUES ('42', '3', 'img/plane/sm/15120411604879.jpg', 'img/plane/md/15120411604879.jpg', 'img/plane/lg/15120411604879.jpg');
INSERT INTO `eq_pic` VALUES ('43', '3', 'img/plane/sm/15120411628596.jpg', 'img/plane/md/15120411628596.jpg', 'img/plane/lg/15120411628596.jpg');
INSERT INTO `eq_pic` VALUES ('44', '3', 'img/plane/sm/15120411684734.jpg', 'img/plane/md/15120411684734.jpg', 'img/plane/lg/15120411684734.jpg');
INSERT INTO `eq_pic` VALUES ('45', '3', 'img/plane/sm/15120411641757.jpg', 'img/plane/md/15120411641757.jpg', 'img/plane/lg/15120411641757.jpg');
INSERT INTO `eq_pic` VALUES ('46', '10', 'img/plane/sm/15120411716011.png', 'img/plane/md/15120411716011.png', 'img/plane/lg/15120411716011.png');
INSERT INTO `eq_pic` VALUES ('47', '10', 'img/plane/sm/15120411737565.png', 'img/plane/md/15120411737565.png', 'img/plane/lg/15120411737565.png');
INSERT INTO `eq_pic` VALUES ('48', '10', 'img/plane/sm/15120411752449.png', 'img/plane/md/15120411752449.png', 'img/plane/lg/15120411752449.png');
INSERT INTO `eq_pic` VALUES ('49', '11', 'img/plane/sm/15120411785561.jpg', 'img/plane/md/15120411785561.jpg', 'img/plane/lg/15120411785561.jpg');
INSERT INTO `eq_pic` VALUES ('50', '11', 'img/plane/sm/15120411804092.jpg', 'img/plane/md/15120411804092.jpg', 'img/plane/lg/15120411804092.jpg');
INSERT INTO `eq_pic` VALUES ('51', '10', 'img/plane/sm/1512041123118.jpg', 'img/plane/md/1512041123118.jpg', 'img/plane/lg/1512041123118.jpg');
INSERT INTO `eq_pic` VALUES ('52', '11', 'img/plane/sm/15120411827027.jpg', 'img/plane/md/15120411827027.jpg', 'img/plane/lg/15120411827027.jpg');
INSERT INTO `eq_pic` VALUES ('53', '11', 'img/plane/sm/1512041185523.jpg', 'img/plane/md/1512041185523.jpg', 'img/plane/lg/1512041185523.jpg');
INSERT INTO `eq_pic` VALUES ('54', '11', 'img/plane/sm/15120411913216.jpg', 'img/plane/md/15120411913216.jpg', 'img/plane/lg/15120411913216.jpg');
INSERT INTO `eq_pic` VALUES ('55', '12', 'img/plane/sm/15120414133749.jpg', 'img/plane/md/15120414133749.jpg', 'img/plane/lg/15120414133749.jpg');
INSERT INTO `eq_pic` VALUES ('56', '12', 'img/plane/sm/15120414106588.jpg', 'img/plane/md/15120414106588.jpg', 'img/plane/lg/15120414106588.jpg');
INSERT INTO `eq_pic` VALUES ('57', '12', 'img/plane/sm/15120414019406.jpg', 'img/plane/md/15120414019406.jpg', 'img/plane/lg/15120414019406.jpg');
INSERT INTO `eq_pic` VALUES ('58', '12', 'img/plane/sm/15120413995684.jpg', 'img/plane/md/15120413995684.jpg', 'img/plane/lg/15120413995684.jpg');
INSERT INTO `eq_pic` VALUES ('59', '12', 'img/plane/sm/1512041406598.jpg', 'img/plane/md/1512041406598.jpg', 'img/plane/lg/1512041406598.jpg');
INSERT INTO `eq_pic` VALUES ('60', '4', 'img/plane/sm/15120413634196.jpg', 'img/plane/md/15120413634196.jpg', 'img/plane/lg/15120413634196.jpg');
INSERT INTO `eq_pic` VALUES ('61', '4', 'img/plane/sm/15120413719317.jpg', 'img/plane/md/15120413719317.jpg', 'img/plane/lg/15120413719317.jpg');
INSERT INTO `eq_pic` VALUES ('62', '4', 'img/plane/sm/15120413392934.gif', 'img/plane/md/15120413392934.gif', 'img/plane/lg/15120413392934.gif');
INSERT INTO `eq_pic` VALUES ('63', '4', 'img/plane/sm/15120413326258.gif', 'img/plane/md/15120413326258.gif', 'img/plane/lg/15120413326258.gif');
INSERT INTO `eq_pic` VALUES ('64', '4', 'img/plane/sm/15120413695746.jpg', 'img/plane/md/15120413695746.jpg', 'img/plane/lg/15120413695746.jpg');
INSERT INTO `eq_pic` VALUES ('65', '5', 'img/plane/sm/15120413672043.jpg', 'img/plane/md/15120413672043.jpg', 'img/plane/lg/15120413672043.jpg');
INSERT INTO `eq_pic` VALUES ('66', '5', 'img/plane/sm/15120413731510.jpg', 'img/plane/md/15120413731510.jpg', 'img/plane/lg/15120413731510.jpg');
INSERT INTO `eq_pic` VALUES ('67', '5', 'img/plane/sm/15120413795434.jpg', 'img/plane/md/15120413795434.jpg', 'img/plane/lg/15120413795434.jpg');
INSERT INTO `eq_pic` VALUES ('68', '5', 'img/plane/sm/15120413811382.jpg', 'img/plane/md/15120413811382.jpg', 'img/plane/lg/15120413811382.jpg');
INSERT INTO `eq_pic` VALUES ('69', '5', 'img/plane/sm/15120413348192.gif', 'img/plane/md/15120413348192.gif', 'img/plane/lg/15120413348192.gif');
INSERT INTO `eq_pic` VALUES ('70', '13', 'img/plane/sm/15120413618228.jpg', 'img/plane/md/15120413618228.jpg', 'img/plane/lg/15120413618228.jpg');
INSERT INTO `eq_pic` VALUES ('71', '13', 'img/plane/sm/15120413591131.jpg', 'img/plane/md/15120413591131.jpg', 'img/plane/lg/15120413591131.jpg');
INSERT INTO `eq_pic` VALUES ('72', '13', 'img/plane/sm/15120413514134.png', 'img/plane/md/15120413514134.png', 'img/plane/lg/15120413514134.png');
INSERT INTO `eq_pic` VALUES ('73', '13', 'img/plane/sm/15120413426627.jpg', 'img/plane/md/15120413426627.jpg', 'img/plane/lg/15120413426627.jpg');
INSERT INTO `eq_pic` VALUES ('74', '13', 'img/plane/sm/15120413392934.gif', 'img/plane/md/15120413392934.gif', 'img/plane/lg/15120413392934.gif');
INSERT INTO `eq_pic` VALUES ('75', '14', 'img/plane/sm/15120413369589.png', 'img/plane/md/15120413369589.png', 'img/plane/lg/15120413369589.png');
INSERT INTO `eq_pic` VALUES ('76', '14', 'img/plane/sm/15120413065256.jpg', 'img/plane/md/15120413065256.jpg', 'img/plane/lg/15120413065256.jpg');
INSERT INTO `eq_pic` VALUES ('77', '14', 'img/plane/sm/15120413085459.jpg', 'img/plane/md/15120413085459.jpg', 'img/plane/lg/15120413085459.jpg');
INSERT INTO `eq_pic` VALUES ('78', '14', 'img/plane/sm/15120413109923.png', 'img/plane/md/15120413109923.png', 'img/plane/lg/15120413109923.png');
INSERT INTO `eq_pic` VALUES ('79', '14', 'img/plane/sm/15120413122014.jpg', 'img/plane/md/15120413122014.jpg', 'img/plane/lg/15120413122014.jpg');
INSERT INTO `eq_pic` VALUES ('80', '15', 'img/plane/sm/15120413145934.jpg', 'img/plane/md/15120413145934.jpg', 'img/plane/lg/15120413145934.jpg');
INSERT INTO `eq_pic` VALUES ('81', '15', 'img/plane/sm/15120413247430.jpg', 'img/plane/md/15120413247430.jpg', 'img/plane/lg/15120413247430.jpg');
INSERT INTO `eq_pic` VALUES ('82', '15', 'img/plane/sm/15120413304014.jpg', 'img/plane/md/15120413304014.jpg', 'img/plane/lg/15120413304014.jpg');
INSERT INTO `eq_pic` VALUES ('83', '15', 'img/plane/sm/15120413005775.jpg', 'img/plane/md/15120413005775.jpg', 'img/plane/lg/15120413005775.jpg');
INSERT INTO `eq_pic` VALUES ('84', '15', 'img/plane/sm/1512041328890.jpg', 'img/plane/md/1512041328890.jpg', 'img/plane/lg/1512041328890.jpg');
INSERT INTO `eq_pic` VALUES ('85', '15', 'img/plane/sm/1512041357302.jpg', 'img/plane/md/1512041357302.jpg', 'img/plane/lg/1512041357302.jpg');
INSERT INTO `eq_pic` VALUES ('86', '16', 'img/plane/sm/1512041364213.jpg', 'img/plane/md/1512041364213.jpg', 'img/plane/lg/1512041364213.jpg');
INSERT INTO `eq_pic` VALUES ('87', '16', 'img/plane/sm/1512041326436.jpg', 'img/plane/md/1512041326436.jpg', 'img/plane/lg/1512041326436.jpg');
INSERT INTO `eq_pic` VALUES ('88', '16', 'img/plane/sm/1512041295656.jpg', 'img/plane/md/1512041295656.jpg', 'img/plane/lg/1512041295656.jpg');
INSERT INTO `eq_pic` VALUES ('89', '16', 'img/plane/sm/15120413145934.jpg', 'img/plane/md/15120413392934.gif', 'img/plane/lg/15120413392934.gif');
INSERT INTO `eq_pic` VALUES ('90', '16', 'img/plane/sm/15120413109923.png', 'img/plane/md/15120413109923.png', 'img/plane/lg/15120413109923.png');
INSERT INTO `eq_pic` VALUES ('91', '6', 'img/plane/sm/1512041219973.jpg', 'img/plane/md/1512041219973.jpg', 'img/plane/lg/1512041219973.jpg');
INSERT INTO `eq_pic` VALUES ('92', '6', 'img/plane/sm/1512041218960.jpg', 'img/plane/md/1512041218960.jpg', 'img/plane/lg/1512041218960.jpg');
INSERT INTO `eq_pic` VALUES ('93', '6', 'img/plane/sm/15120412119670.jpg', 'img/plane/md/15120412119670.jpg', 'img/plane/lg/15120412119670.jpg');
INSERT INTO `eq_pic` VALUES ('94', '6', 'img/plane/sm/15120412136592.jpg', 'img/plane/md/15120412136592.jpg', 'img/plane/lg/15120412136592.jpg');
INSERT INTO `eq_pic` VALUES ('95', '6', 'img/plane/sm/15120412153400.jpg', 'img/plane/md/15120412153400.jpg', 'img/plane/lg/15120412153400.jpg');
INSERT INTO `eq_pic` VALUES ('96', '7', 'img/plane/sm/1512041247453.jpg', 'img/plane/md/1512041247453.jpg', 'img/plane/lg/1512041247453.jpg');
INSERT INTO `eq_pic` VALUES ('97', '7', 'img/plane/sm/15120412523685.jpg', 'img/plane/md/15120412523685.jpg', 'img/plane/lg/15120412523685.jpg');
INSERT INTO `eq_pic` VALUES ('98', '7', 'img/plane/sm/15120412606589.jpg', 'img/plane/md/15120412606589.jpg', 'img/plane/lg/15120412606589.jpg');
INSERT INTO `eq_pic` VALUES ('99', '7', 'img/plane/sm/15120412676003.jpg', 'img/plane/md/15120412676003.jpg', 'img/plane/lg/15120412676003.jpg');
INSERT INTO `eq_pic` VALUES ('100', '7', 'img/plane/sm/15120412606589.jpg', 'img/plane/md/15120412606589.jpg', 'img/plane/lg/15120412606589.jpg');
INSERT INTO `eq_pic` VALUES ('101', '17', 'img/plane/sm/15120412698263.jpg', 'img/plane/md/15120412698263.jpg', 'img/plane/lg/15120412698263.jpg');
INSERT INTO `eq_pic` VALUES ('102', '17', 'img/plane/sm/15120412718802.jpg', 'img/plane/md/15120412718802.jpg', 'img/plane/lg/15120412718802.jpg');
INSERT INTO `eq_pic` VALUES ('103', '17', 'img/plane/sm/15120412727491.jpg', 'img/plane/md/15120412727491.jpg', 'img/plane/lg/15120412727491.jpg');
INSERT INTO `eq_pic` VALUES ('104', '17', 'img/plane/sm/15120412747457.jpg', 'img/plane/md/15120412747457.jpg', 'img/plane/lg/15120412747457.jpg');
INSERT INTO `eq_pic` VALUES ('105', '17', 'img/plane/sm/15120412777358.jpg', 'img/plane/md/15120412777358.jpg', 'img/plane/lg/15120412777358.jpg');
INSERT INTO `eq_pic` VALUES ('106', '18', 'img/plane/sm/15120412858332.jpg', 'img/plane/md/15120412858332.jpg', 'img/plane/lg/15120412858332.jpg');
INSERT INTO `eq_pic` VALUES ('107', '18', 'img/plane/sm/15120412871889.jpg', 'img/plane/md/15120412871889.jpg', 'img/plane/lg/15120412871889.jpg');
INSERT INTO `eq_pic` VALUES ('108', '18', 'img/plane/sm/15120412899985.jpg', 'img/plane/md/15120412899985.jpg', 'img/plane/lg/15120412899985.jpg');
INSERT INTO `eq_pic` VALUES ('109', '18', 'img/plane/sm/15120412923544.jpg', 'img/plane/md/15120412923544.jpg', 'img/plane/lg/15120412923544.jpg');
INSERT INTO `eq_pic` VALUES ('110', '18', 'img/plane/sm/15120412899985.jpg', 'img/plane/md/15120412899985.jpg', 'img/plane/lg/15120412899985.jpg');
INSERT INTO `eq_pic` VALUES ('111', '19', 'img/plane/sm/15120412226688.jpg', 'img/plane/md/15120412226688.jpg', 'img/plane/lg/15120412226688.jpg');
INSERT INTO `eq_pic` VALUES ('112', '19', 'img/plane/sm/15120412381221.jpg', 'img/plane/md/15120412381221.jpg', 'img/plane/lg/15120412381221.jpg');
INSERT INTO `eq_pic` VALUES ('113', '19', 'img/plane/sm/15120412411824.jpg', 'img/plane/md/15120412411824.jpg', 'img/plane/lg/15120412411824.jpg');
INSERT INTO `eq_pic` VALUES ('114', '19', 'img/plane/sm/15120412434931.jpg', 'img/plane/md/15120412434931.jpg', 'img/plane/lg/15120412434931.jpg');
INSERT INTO `eq_pic` VALUES ('115', '19', 'img/plane/sm/15120412454062.jpg', 'img/plane/md/15120412454062.jpg', 'img/plane/lg/15120412454062.jpg');
INSERT INTO `eq_pic` VALUES ('116', '20', 'img/plane/sm/15120412091595.jpg', 'img/plane/md/15120412091595.jpg', 'img/plane/lg/15120412091595.jpg');
INSERT INTO `eq_pic` VALUES ('117', '20', 'img/plane/sm/15120412058572.jpg', 'img/plane/md/15120412058572.jpg', 'img/plane/lg/15120412058572.jpg');
INSERT INTO `eq_pic` VALUES ('118', '20', 'img/plane/sm/15120411997333.jpg', 'img/plane/md/15120411997333.jpg', 'img/plane/lg/15120411997333.jpg');
INSERT INTO `eq_pic` VALUES ('119', '20', 'img/plane/sm/15120411962681.jpg', 'img/plane/md/15120411962681.jpg', 'img/plane/lg/15120411962681.jpg');
INSERT INTO `eq_pic` VALUES ('120', '20', 'img/plane/sm/15120411944116.jpg', 'img/plane/md/15120411944116.jpg', 'img/plane/lg/15120411944116.jpg');

-- ----------------------------
-- Table structure for `eq_shoppingcart_item`
-- ----------------------------
DROP TABLE IF EXISTS `eq_shoppingcart_item`;
CREATE TABLE `eq_shoppingcart_item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eq_shoppingcart_item
-- ----------------------------
INSERT INTO `eq_shoppingcart_item` VALUES ('1', '1', '2', '4', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('2', '1', '1', '1', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('3', '2', '3', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('4', '2', '4', '2', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('5', '3', '2', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('6', '5', '4', '2', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('7', '5', '2', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('8', '6', '1', '2', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('9', '7', '8', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('10', '8', '3', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('11', '8', '7', '6', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('12', '9', '14', '2', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('13', '10', '2', '3', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('14', '11', '3', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('15', '12', '16', '2', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('16', '13', '2', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('17', '13', '5', '2', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('18', '14', '5', '2', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('19', '15', '15', '1', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('20', '16', '18', '2', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('21', '17', '21', '3', '0');
INSERT INTO `eq_shoppingcart_item` VALUES ('22', '18', '23', '4', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('23', '1', '15', '1', null);
INSERT INTO `eq_shoppingcart_item` VALUES ('28', '76', '1', '2', '1');
INSERT INTO `eq_shoppingcart_item` VALUES ('30', '76', '12', '1', '0');

-- ----------------------------
-- Table structure for `eq_user`
-- ----------------------------
DROP TABLE IF EXISTS `eq_user`;
CREATE TABLE `eq_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of eq_user
-- ----------------------------
INSERT INTO `eq_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `eq_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `eq_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `eq_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `eq_user` VALUES ('5', '马云宝宝的淘宝', '111111', '441977193@qq.com', '18357100796', null, '马云', '0');
INSERT INTO `eq_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `eq_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `eq_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `eq_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `eq_user` VALUES ('10', '徐亚', '123456', '123456789@qq.com', '15525623622', null, null, '0');
INSERT INTO `eq_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO `eq_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO `eq_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO `eq_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO `eq_user` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null);
INSERT INTO `eq_user` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null);
INSERT INTO `eq_user` VALUES ('18', '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null, null, null);
INSERT INTO `eq_user` VALUES ('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null, null, null);
INSERT INTO `eq_user` VALUES ('20', '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null);
INSERT INTO `eq_user` VALUES ('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null);
INSERT INTO `eq_user` VALUES ('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null);
INSERT INTO `eq_user` VALUES ('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null);
INSERT INTO `eq_user` VALUES ('24', '123456', '123456', '123456@1.com', '13815668132', null, null, null);
INSERT INTO `eq_user` VALUES ('25', '1234', '111111', '734713428@qq.com', '18061920422', null, null, null);
INSERT INTO `eq_user` VALUES ('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null, null, null);
INSERT INTO `eq_user` VALUES ('27', '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', null, null, null);
INSERT INTO `eq_user` VALUES ('28', 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', null, null, null);
INSERT INTO `eq_user` VALUES ('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null, null, null);
INSERT INTO `eq_user` VALUES ('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null, null, null);
INSERT INTO `eq_user` VALUES ('31', 'tom', '123456', 'tom@tedu.cn', '13801234568', null, null, null);
INSERT INTO `eq_user` VALUES ('32', 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', null, null, null);
INSERT INTO `eq_user` VALUES ('33', 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', null, null, null);
INSERT INTO `eq_user` VALUES ('34', 'yangtao', '123456', '250737026@qq.com', '18256953222', null, null, null);
INSERT INTO `eq_user` VALUES ('35', 'tarena', '123456', '783664829@qq.com', '17711625897', null, null, null);
INSERT INTO `eq_user` VALUES ('36', 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', null, 'lulu', '0');
INSERT INTO `eq_user` VALUES ('37', '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', null, null, null);
INSERT INTO `eq_user` VALUES ('38', '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', null, null, '0');
INSERT INTO `eq_user` VALUES ('39', 'Yeye ', '123456', '1610608370@qq.com', '15062394551', null, null, null);
INSERT INTO `eq_user` VALUES ('40', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `eq_user` VALUES ('41', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `eq_user` VALUES ('42', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `eq_user` VALUES ('43', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `eq_user` VALUES ('44', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `eq_user` VALUES ('45', 'hjh', '958030', 'hjh@126.com', '17812344567', null, null, null);
INSERT INTO `eq_user` VALUES ('46', 'ewq', '123456', '1234567890@qq.com', '12345678909', null, null, null);
INSERT INTO `eq_user` VALUES ('47', 'pipi', '123456', '78@qq.com', '12367889993', null, null, null);
INSERT INTO `eq_user` VALUES ('48', 'Lovica', '309418727', '1684707021@qq.com', '18435130456', null, null, null);
INSERT INTO `eq_user` VALUES ('49', 'htt0908', '19920908', '418720482@qq.com', '15244691033', null, null, null);
INSERT INTO `eq_user` VALUES ('50', 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', null, null, null);
INSERT INTO `eq_user` VALUES ('51', 'zhong', '123456', '123456789@126.com', '13120211111', null, null, null);
INSERT INTO `eq_user` VALUES ('52', '金豆豆', '123456789', '1170363143@qq.com', '15738619097', null, null, null);
INSERT INTO `eq_user` VALUES ('53', 'wangjunfei', '123456', '396225880@qq.com', '13205935797', null, null, null);
INSERT INTO `eq_user` VALUES ('54', 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', null, null, null);
INSERT INTO `eq_user` VALUES ('55', 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', null, null, null);
INSERT INTO `eq_user` VALUES ('56', 'xiaoming123', '123456', '54646@qq.com', '13553688534', null, null, null);
INSERT INTO `eq_user` VALUES ('57', 'yuanzhi', '123456', '270096123@qq.com', '15962573639', null, null, null);
INSERT INTO `eq_user` VALUES ('58', 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', null, null, null);
INSERT INTO `eq_user` VALUES ('59', 'fengkuang', '123456', '113577976@qq.com', '18559132248', null, null, null);
INSERT INTO `eq_user` VALUES ('60', 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', null, null, null);
INSERT INTO `eq_user` VALUES ('61', 'linlei0001', '58874439', '876056078@qq.com', '13390922939', null, null, null);
INSERT INTO `eq_user` VALUES ('62', 'superman', '1314520', '904202099@qq.com', '12345678910', null, null, null);
INSERT INTO `eq_user` VALUES ('63', 'tom222', '123456', '1@163.com', '13456789012', null, null, null);
INSERT INTO `eq_user` VALUES ('64', 'tom1234', '123456', '2@163.com', '13423456789', null, null, null);
INSERT INTO `eq_user` VALUES ('65', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, '左天', '1');
INSERT INTO `eq_user` VALUES ('66', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null);
INSERT INTO `eq_user` VALUES ('67', '李白李白', '123456', '125365@163.com', '13986273022', null, null, null);
INSERT INTO `eq_user` VALUES ('68', 'dingdong', '123456', '15194898156@qq.com', '15112316516', null, null, null);
INSERT INTO `eq_user` VALUES ('69', 'wenjinhua', '236239', '461677613@qq.com', '13516574786', null, null, null);
INSERT INTO `eq_user` VALUES ('70', 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', null, null, null);
INSERT INTO `eq_user` VALUES ('71', 'zhangsan', 'add123456', 'add@qq.com', '12234324223', null, null, null);
INSERT INTO `eq_user` VALUES ('72', '高渐离', '123456', '935263676@qq.com', '18352501250', null, null, null);
INSERT INTO `eq_user` VALUES ('73', 'lifan', '123456', '18092034652@163.com', '18092933456', null, null, null);
INSERT INTO `eq_user` VALUES ('74', 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', null, null, null);
INSERT INTO `eq_user` VALUES ('75', 'tingDING', '123456', '12345678@qq.com', '13548525468', null, null, null);
INSERT INTO `eq_user` VALUES ('76', 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', null, '周周', null);
INSERT INTO `eq_user` VALUES ('77', 'weiyiwei', '123456', '598475405@qq.com', '15923741956', null, '韦祎伟', '1');
INSERT INTO `eq_user` VALUES ('78', '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', null, null, null);
INSERT INTO `eq_user` VALUES ('79', 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', null, null, null);
INSERT INTO `eq_user` VALUES ('80', 'loonchao', '123456', '850248873@qq.com', '13548729051', null, null, null);
INSERT INTO `eq_user` VALUES ('81', 'hushuang', '123456', '850248813@qq.com', '15802507525', null, null, null);
INSERT INTO `eq_user` VALUES ('82', 'test713', '2017713', '12458148@qq.com', '13596542654', null, null, null);
INSERT INTO `eq_user` VALUES ('83', 'fhr9588', '000009588', '111111111@qq.com', '12345666666', null, null, null);
INSERT INTO `eq_user` VALUES ('84', 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', null, null, null);
INSERT INTO `eq_user` VALUES ('85', 'tom10', '123456', '123@163.com', '12323456', null, null, null);
INSERT INTO `eq_user` VALUES ('86', '12121', '121212', '516898@qq.com', '15163222922', null, null, null);
INSERT INTO `eq_user` VALUES ('87', 'qwer', 'qwer123', '519808982@qq.com', '15163222923', null, null, null);
INSERT INTO `eq_user` VALUES ('88', '芳芳。。', '111111', '627265@qq.com', '17704622223', null, null, null);
INSERT INTO `eq_user` VALUES ('89', 'yaya', '123456', null, null, null, null, '1');
INSERT INTO `eq_user` VALUES ('90', 'jj', '766656', null, null, null, null, null);
INSERT INTO `eq_user` VALUES ('91', 'jiajinl', 'jjl', null, null, null, null, null);
INSERT INTO `eq_user` VALUES ('92', 'wal', '456123', null, null, null, null, null);
INSERT INTO `eq_user` VALUES ('93', 'jingjing', '123456', null, null, null, null, null);
INSERT INTO `eq_user` VALUES ('112', 'ding1', '123456', '1321654@153.com', '12346546466', null, null, null);
INSERT INTO `eq_user` VALUES ('113', 'ding2', '123456', '1321654@153.com', '12345658465', null, null, null);
INSERT INTO `eq_user` VALUES ('114', 'dingw', '123456', '1321654@153.com', '12345655555', null, null, null);
INSERT INTO `eq_user` VALUES ('115', '分隔符', '123456', '123@12.com', '12564564685', null, null, null);
INSERT INTO `eq_user` VALUES ('116', 'zlj', '123456', '123@12.com', '12548464554', null, null, null);
