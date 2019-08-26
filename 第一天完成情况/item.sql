/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : item

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 26/08/2019 20:07:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级分类id',
  `cate_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '一级分类名',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '网站开发');
INSERT INTO `category` VALUES (2, '桌面应用');
INSERT INTO `category` VALUES (3, 'APP');
INSERT INTO `category` VALUES (4, 'UI设计');
INSERT INTO `category` VALUES (5, '数据采集与分析');
INSERT INTO `category` VALUES (6, '嵌入式与智能硬件');
INSERT INTO `category` VALUES (7, '微信开发');
INSERT INTO `category` VALUES (8, '管理系统');
INSERT INTO `category` VALUES (9, '其它分类项目');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `proid` int(11) NOT NULL COMMENT '项目id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '收藏时间',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1 删除',
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `fk_uid`(`uid`) USING BTREE,
  INDEX `fk_proid`(`proid`) USING BTREE,
  CONSTRAINT `fk_proid` FOREIGN KEY (`proid`) REFERENCES `project` (`proid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, 1, 1, '2019-08-26 19:43:09', 0);

-- ----------------------------
-- Table structure for collection2
-- ----------------------------
DROP TABLE IF EXISTS `collection2`;
CREATE TABLE `collection2`  (
  `c2id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏程序猿id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `pid` int(11) NOT NULL COMMENT '程序猿id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1 删除',
  PRIMARY KEY (`c2id`) USING BTREE,
  INDEX `fk_uid2`(`uid`) USING BTREE,
  INDEX `fk_pid2`(`pid`) USING BTREE,
  CONSTRAINT `fk_pid2` FOREIGN KEY (`pid`) REFERENCES `programmer` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_uid2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection2
-- ----------------------------
INSERT INTO `collection2` VALUES (1, 1, 4, '2019-08-26 19:34:20', 0);

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades`  (
  `grades_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评分id',
  `grade1` double(11, 1) NOT NULL COMMENT '专业程度分',
  `grade2` double(11, 1) NOT NULL COMMENT '完成质量分',
  `grade3` double(11, 1) NOT NULL COMMENT '服务态度分',
  `grade4` double(11, 1) NOT NULL COMMENT '反馈速度分',
  `pid` int(11) NOT NULL COMMENT '程序猿id',
  PRIMARY KEY (`grades_id`) USING BTREE,
  INDEX `fk_pid`(`pid`) USING BTREE,
  CONSTRAINT `fk_pid` FOREIGN KEY (`pid`) REFERENCES `programmer` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES (1, 4.7, 4.7, 4.7, 4.7, 4);
INSERT INTO `grades` VALUES (2, 4.2, 4.2, 4.3, 4.3, 5);
INSERT INTO `grades` VALUES (3, 4.8, 4.8, 4.8, 4.8, 6);
INSERT INTO `grades` VALUES (4, 4.2, 4.2, 4.2, 4.2, 7);
INSERT INTO `grades` VALUES (5, 4.2, 4.2, 4.2, 4.2, 8);
INSERT INTO `grades` VALUES (6, 4.8, 4.8, 4.8, 4.8, 9);
INSERT INTO `grades` VALUES (7, 4.9, 4.9, 4.9, 4.9, 10);
INSERT INTO `grades` VALUES (8, 4.7, 4.7, 4.7, 4.7, 11);
INSERT INTO `grades` VALUES (9, 3.8, 3.8, 3.9, 3.9, 12);
INSERT INTO `grades` VALUES (10, 4.5, 4.5, 4.5, 4.5, 13);
INSERT INTO `grades` VALUES (11, 4.5, 4.5, 4.5, 4.5, 14);
INSERT INTO `grades` VALUES (12, 4.5, 4.5, 4.5, 4.5, 15);
INSERT INTO `grades` VALUES (13, 4.4, 4.4, 4.4, 4.4, 16);
INSERT INTO `grades` VALUES (14, 4.7, 4.7, 4.7, 4.7, 17);
INSERT INTO `grades` VALUES (15, 4.0, 4.0, 4.0, 4.0, 18);
INSERT INTO `grades` VALUES (16, 4.0, 4.0, 4.0, 4.0, 19);
INSERT INTO `grades` VALUES (17, 4.4, 4.4, 4.3, 4.3, 20);
INSERT INTO `grades` VALUES (18, 4.1, 4.0, 4.1, 4.1, 21);
INSERT INTO `grades` VALUES (19, 3.9, 3.9, 3.9, 3.9, 22);
INSERT INTO `grades` VALUES (20, 4.2, 4.2, 4.2, 4.2, 23);
INSERT INTO `grades` VALUES (21, 4.5, 4.5, 4.5, 4.4, 24);
INSERT INTO `grades` VALUES (22, 4.3, 4.3, 4.3, 4.3, 25);
INSERT INTO `grades` VALUES (23, 4.3, 4.3, 4.3, 4.3, 26);
INSERT INTO `grades` VALUES (24, 4.1, 4.1, 4.1, 4.1, 27);
INSERT INTO `grades` VALUES (25, 4.7, 4.7, 4.7, 4.7, 28);

-- ----------------------------
-- Table structure for navigation
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation`  (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `nav_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '导航名',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1删除',
  PRIMARY KEY (`nav_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navigation
-- ----------------------------
INSERT INTO `navigation` VALUES (1, '找项目', 0);
INSERT INTO `navigation` VALUES (2, '找接包人', 0);
INSERT INTO `navigation` VALUES (3, '发项目', 0);
INSERT INTO `navigation` VALUES (4, '收藏', 0);

-- ----------------------------
-- Table structure for programmer
-- ----------------------------
DROP TABLE IF EXISTS `programmer`;
CREATE TABLE `programmer`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '程序猿id',
  `pname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '程序猿名字',
  `pimage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片',
  `adept` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '擅长内容',
  `finish` int(11) NOT NULL COMMENT '完成过的项目数',
  `moods` int(11) NOT NULL COMMENT '人气',
  `income` int(11) NOT NULL COMMENT '最近收入',
  `grade` int(11) NOT NULL COMMENT '积分',
  `location` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '简介',
  `cate_id` int(11) NOT NULL COMMENT '一级分类id',
  `menu3_id` int(11) NOT NULL COMMENT '三级分类id',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1 删除',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `fk_cate_id2`(`cate_id`) USING BTREE,
  INDEX `fk_menu3_id2`(`menu3_id`) USING BTREE,
  CONSTRAINT `fk_cate_id2` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_menu3_id2` FOREIGN KEY (`menu3_id`) REFERENCES `sub_menu3` (`menu3_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of programmer
-- ----------------------------
INSERT INTO `programmer` VALUES (4, 'yj460596056', 'https://www.sxsoft.com/uploads/4/05/8f76f0b3440d76d8fb7d333b44798/1446864347.jpg', '网站开发桌面应用', 57, 74066, 274650, 1150, '上海市 市辖区 杨浦区', '\"专业开发“移动应用开发，微信公众号及小程序定制，网站定制开发，商城系统，即时通信系统，音视频直播点播，绘图系统，网络应用开发，网络数据采集，数据库应用，呼叫中心”等应用系统的开发，经验丰富，广受用户好评。\n精通C/C++, C#, PHP，Java，OC，Swift，VB, C++ Builder等多种开发语言及工具。\nQQ: 1340383523\n联系电话：13917140746\n邮箱：james@myipp.cn \"\r\n\"专业开发“移动应用开发，微信公众号及小程序定制，网站定制开发，商城系统，即时通信系统，音视频直播点播，绘图系统，网络应用开发，网络数据采集，数据库应用，呼叫中心”等应用系统的开发，经验丰富，广受用户好评。\n精通C/C++, C#, PHP，Java，OC，Swift，VB, C++ Builder等多种开发语言及工具。\nQQ: 1340383523\n联系电话：13917140746\n邮箱：james@myipp.cn \"\r\n专业开发“移动应用开发，微信公众号及小程序定制，网站定制开发，商城系统，即时通信系统，音视频直播点播，绘图系统，网络应用开发，网络数据采集，数据库应用，呼叫中心”等应用系统的开发，经验丰富，广受用户好评。\r\n精通C/C++, C#, PHP，Java，OC，Swift，VB, C++ Builder等多种开发语言及工具。\r\nQQ: 1340383523\r\n联系电话：13917140746\r\n专业开发“移动应用开发，微信公众号及小程序定制，网站定制开发，商城系统，即时通信系统，音视频直播点播，绘图系统，网络应用开发，网络数据采集，数据库应用，呼叫中心”等应用系统的开发，经验丰富，广受用户好评。\r\n精通C/C++, C#, PHP，Java，OC，Swift，VB, C++ Builder等多种开发语言及工具。\r\nQQ: 1340383523\r\n联系电话：13917140746\r\n邮箱：james@myipp.cn ', 1, 2, 0);
INSERT INTO `programmer` VALUES (5, '楠祥网络科技', 'https://www.sxsoft.com/uploads/9/c6/244a27f470422a741785b2a7d46d3/I_AuAu.jpg', '网站开发', 73, 33511, 59020, 1141, '江苏省 南京市 市辖区', '连云港市楠祥网络科技有限公司是一家专业从事互联网技术服务、各类网站建设及软件开发的技术性互联网企业。我们全心致力于个风格、行业、类型的站开发、软件及电子商务平台的应用及推广。公司注册资金100万。现有员工35名，技术开发人员28名。初期吸纳了四支成熟开发团队。\r\n.net团队：.net程序人员8名，平面设计师2名，平面布局人员1名。均有2年以上的项目开发经验。\r\nPHP团队：PHP程序员5名，平面设计师1名，平面布局人员1名。', 1, 12, 0);
INSERT INTO `programmer` VALUES (6, 'Sundoor', 'https://www.sxsoft.com/uploads/7/6d/45ef9950f43a3eea714d170346b78/4.png', '网站开发桌面应用', 44, 44298, 18750, 820, '江苏省 南京市 秦淮区', ' 本人从1994年开始从事计算机软件开发和维护工作，做的主要都是数据库软件。从DOS环境的DBaseIII一直到现在的SQL Server、Oracle数据库，都非常熟悉。参加过大型ERP系统的开发。熟悉SAP平台。开发的软件还涉及 系统安全、网络安全、办公软件的功能增强等。会使用的开发工具有vc++、Delphi、VB、VFP、VS.net等。', 1, 12, 0);
INSERT INTO `programmer` VALUES (7, 'applesoft', 'https://www.sxsoft.com/uploads/7/c5/2f92b00339336c25ff69944814e17/20131104080611.png', '网站开发APP', 48, 48122, 192210, 808, '辽宁省 沈阳市 不限', '专业流媒体系统解决方案，NVR,IPTV,监控系统解决方案，IM系统解决方案，iOS开发，Android核心开发，播放器开发。', 1, 8, 0);
INSERT INTO `programmer` VALUES (8, '雷老虎设计', 'https://www.sxsoft.com/uploads/9/0a/56eaceb85d60b761378bcd75f0e4a/1436926469.png', 'UI设计', 52, 28427, 64250, 790, '江苏省 南京市 白下区', '雷老虎设计  是一家专业的WEB平面设计、网站前端、网站整站、电商视觉策划工作室，机构创立于2008年，在页面视觉设计领域有着自己的坚持和专注见解，得到客户的广泛认可；\r\n      设计驱动进步！我们热爱设计，我们更忠于设计...\r\n      欢迎企业、机构关于设计方面的需求进行合作联系，请MAIL至1916442110@qq.com', 4, 12, 0);
INSERT INTO `programmer` VALUES (9, '易扬软件', 'https://www.sxsoft.com/uploads/7/aa/50bad4fd22767161f20b90c3cbbe4/1414986284.png', '桌面应用APP', 33, 33823, 86889, 711, '浙江省 宁波市 市辖区', '联系方式： QQ15441689 e我行 10多年软件开发经验 精通C/C++、JAVA、Delphi等，对各种开发语言及编译环境都有所了解.精通网络通讯开发 精通上下位机编程开发，网络通讯、串并口、USB等通讯.精通跨平台开发，Windows、LINUX、ARM Linux 熟悉linux操作系统，各种服务器的搭建、配置.', 2, 15, 0);
INSERT INTO `programmer` VALUES (10, '高手软件', 'https://www.sxsoft.com/uploads/4/e9/14b1601c60dffc8215aaf728ba7dd/-2.jpg', '网站开发桌面应用', 26, 14778, 97900, 628, '北京市 市辖区 朝阳区', '团队由资深技术人员组成。 主要技术和领域：C/C++，JAVA，数据库，Android，Windows等。 承接各种APP、桌面软件、系统软件，办公软件，网站建设的开发。 高手软件，软件高手；尽心尽力，高质高效，提供令您满意的产品和服务！ 联系方式： 手机：13661320256 QQ：173470285（验证：软件） 微信：13661320256 ', 1, 1, 0);
INSERT INTO `programmer` VALUES (11, '翼马腾飞软件工作室', 'https://www.sxsoft.com/uploads/2/4a/ff6c68049d6a3afbdbf6ac56160ae/1494551189.png', '桌面应用APP', 30, 9215, 61923, 574, '北京市北京市 市辖区 海淀区', ' 团队组建于2011年，专业提供各类企业级应用程序、电商应用及互联网应用的开发（包含各种系统软件，办公软件，网站，微信应用，APP应用，桌面软件等)；团队成员平均开发经验6年以上，架构师有10年以上的行业经验。主要技术：JAVA，.Net，PHP，Android，IOS，Oracle，SqlServer，MySQL，Windows，Linux等。 联系方式： 电话：13683266639 QQ：1730379415', 2, 1, 0);
INSERT INTO `programmer` VALUES (12, '百姓网络公司', 'https://www.sxsoft.com/uploads/7/a1/44fc0b7b1c8e642fa923748324f0c/I_AuAu123.jpg', '网站开发微信开发', 38, 43080, 132600, 570, '江苏省 连云港市 市辖区', '百姓网络公司（www.bx321.com）成立于2007年8月14日，具有十多年开发经验。注册资金100万，是一家提供现代网络服务的综合性公司， 百姓网络致力于为企业打开网络大门，投身信息数字化潮流提供专业、便捷的互联网服务。我们拥有一支经验丰富的技术支持力量团队以及丰富的项目开发经验，为江苏千府集团、江苏汉剑酒业有限公司等众多江苏、国内企业做过网站和软件。目前已经做过上千家各类型行业的软件开发和网站建设，包括大型门户网，办公网站等.', 1, 12, 0);
INSERT INTO `programmer` VALUES (13, '湘怡·工作室', 'https://www.sxsoft.com/uploads/3/79/d2e3d184970ad69b307b3840b56f7/1436752896.jpg', '桌面应用', 35, 15622, 52000, 558, '广东省 深圳市 南山区', '工作室宗旨：创新，质量，合作 1、持续创新：打造先进产品 2、竭诚服务：想客户之所想 3、团队合作：共同提升价值 参与项目：省行政办证中心办证审批系统，社区卫生服务系统，SNS系统，搜索系统 专业技能： 1.Java应用程序开发，熟悉JSP技术，ASP技术，java基础扎实，熟悉J2EE技术体系架构 2. 熟悉J2EE架构以及相关应用开发 3. 熟悉Orcale、SQLServer等.', 2, 19, 0);
INSERT INTO `programmer` VALUES (14, '雷驰科技', 'https://www.sxsoft.com/uploads/5/c0/17a9ce63ecad3e777135b211caf50/home____.jpg', '网站开发', 31, 41155, 67350, 544, '四川省', '我们的网站： www.cdleichi.com . 成都雷驰科技有限公司是一家专门从事软件开发和网站开发服务的高科技公司。公司总部坐落于中国西部的最美丽城市——成都。 公司自成立以来一直遵循“以客户为中心，技术作前锋，信誉求发展，员工是财富”的理念，为国内的众多企业和国外的客户提供高质量的软件、网站外包服务。', 1, 22, 0);
INSERT INTO `programmer` VALUES (15, 'Sunqk', 'https://www.sxsoft.com/uploads/1/42/2afc2f10ca9f99a42690c811975d9/20131112092919.png', '网站开发', 25, 24276, 121000, 512, '辽宁省 沈阳市 铁西区', '主要技术：Justep x3(开发工具)、oracle、SQLSERVER、delphi、PB、C# 和Asp.Net等技术。 项目额度：大于500万 工作职责：Justep x3技术支持及相关人员技术培训、业务需求分析、详细设计（包括数据库设计）及开发等工作。 工作成果：项目提前三个月交付并取得较高满意度。', 1, 8, 0);
INSERT INTO `programmer` VALUES (16, 'sikesoft', 'https://www.sxsoft.com/uploads/8/1e/c4d3486a3d73b397ad9af0751e393/1468221451.jpg', '网站开发', 26, 6383, 103600, 488, '山东省 莱芜市 市辖区', '开发经验十年，目前带领团队 成立公司接项目。 成功案例很多，希望能精诚合作~ 电话：0634-6111386 QQ：840500737', 1, 13, 0);
INSERT INTO `programmer` VALUES (17, '龙行天下1', 'https://www.sxsoft.com/uploads/3/3f/e0ed53c6e2933ed165cb323b4d58a/__3.jpg', '网站开发', 25, 38582, 30300, 448, '河北省 石家庄市', '网站开发，软件开发 邮箱地址:296186381@qq.com QQ:296186381 MSN:liuyangvspu@hotmail.com 电话：18732142662 出售：Flash文档阅读器 Flash电子杂志 CMS网站内容管理系统 出售：web进销存财务系统 Web电脑装机管理系统 Web手机批发连锁系统', 1, 5, 0);
INSERT INTO `programmer` VALUES (18, 'ydsoft', 'https://www.sxsoft.com/uploads/7/33/11fe10719d2a1a9d12de478abb3f7/1423960265.jpg', '桌面应用', 27, 26751, 16675, 394, '云南省 昆明市 市辖区', '本团队擅长数据库开发, 各种报表系统开发，管理软件开发，网站开发欢迎洽谈。 java\\delphi\\asp.net\\c++\\vb\\jsp\\asp.net\\c#\\移动终端程序\\开发 联系电话：13887896154 QQ：472356755 Email:472356755@qq.com ', 2, 25, 0);
INSERT INTO `programmer` VALUES (19, 'wengyulijiebao', 'https://www.sxsoft.com/uploads/0/62/206ed6c62f32b5227b03526256375/1540807353500.jpg', '网站开发桌面应用', 29, 1845, 3920, 390, '河南省 郑州市 中原区', '尚未填写！', 1, 7, 0);
INSERT INTO `programmer` VALUES (20, '石域网络工作室', 'https://www.sxsoft.com/uploads/c/6d/572dd6682f0bf924e69e1ab76f86b/logo.jpg', '网站开发', 22, 28782, 16635, 346, '四川省 成都市 新都县', '中文简介 石域网络网址：www.coolerstone.com 成都石域网络工作室成立于2005年，现有员工30余名，其中开发和技术服务人员10余人。销售及行政人员5人。公司是以为社会提供全方位的信息化服务为宗旨，坚持走自主开发的道路，经过坚持不懈的努力，目前我们拥有自主产权的产品覆盖了政府、企业、学校的管理、办公、数据库建设等各个领域。并且都取得了良好的应用效果！ 专业建站，软件开发.', 1, 22, 0);
INSERT INTO `programmer` VALUES (21, '野地', 'https://www.sxsoft.com/images/defaultimg_108.png', '桌面应用', 24, 17776, 22399, 345, '湖北省 十堰市 市辖区', '网站案例 http://www.tbjphui.com/ 淘宝精品汇，特点：多筛选的批量采集....... http://ysdh.tbjphui.com/ 仿2345影视导航 http://hao123.tbjphui.com/ 仿hao123网址导航 http://ly.tbjphui.com/ 大型旅游网站管理系统 http://fl.tbjphui.com/ 分类信息 http://tb.ydxf.cn/ 淘点金导购返利 ...', 2, 17, 0);
INSERT INTO `programmer` VALUES (22, 'Tongzhiwei', 'https://www.sxsoft.com/uploads/e/8e/41bad97256cdeeba717c94e54ef6d/1395733161.jpg', '网站开发', 20, 19128, 12320, 311, '广东省 广州市 市辖区', '尚未填写！', 1, 19, 0);
INSERT INTO `programmer` VALUES (23, '落羽神恋', 'https://www.sxsoft.com/uploads/c/19/0470984a0620428fd0fdf2cd6d67d/A_EY_IO_.jpg', '网站开发桌面应用', 22, 15356, 22550, 308, '广东省 深圳市 南山区', '小团队。', 1, 19, 0);
INSERT INTO `programmer` VALUES (24, '龙泽网络', 'https://www.sxsoft.com/uploads/c/67/7cbc246cf65a9efe4a4b994db5528/11_________.jpg', '网站开发', 17, 15742, 17500, 303, '江苏省 连云港市', '连云港龙泽商务有限公司是一家专门从事互联网技术开发企业，大型网站建设，ERP类软件开发、OA办公协作等服务。龙泽商务有限公司拥有自己的技术研发小组，联合各大高校进行定期技术研讨，跟踪国际，国内市场，开发出更加贴切市场需要和更加人性化的互联网服务新产品. 想立刻拥有一支低成本、高效、技术精湛的美工设计和.net开发团队吗？ 想迅速解决掉手里项目的开发难题以及项目未来的一系列技术支持问题吗？', 1, 12, 0);
INSERT INTO `programmer` VALUES (25, '智能代码', 'https://www.sxsoft.com/images/defaultimg_108.png', '桌面应用', 19, 12874, 58600, 292, '广东省 广州市 市辖区', '尚未填写！', 2, 19, 0);
INSERT INTO `programmer` VALUES (26, '海浪无风', 'https://www.sxsoft.com/uploads/4/5c/16d8a17bfb37f9f5abcdcc5c05350/2.png', '桌面应用', 17, 19502, 57500, 286, '北京市 市辖区 西城区', '1、GIS开发； 2、android开发； 3、IM即时通讯软件（C++,Delphi)； 4、手机回拨采集系统、手机计费系统、手机呼叫语音系统； 5、在线考试系统，学校管理软件； 6、电力呼叫系统； 7、录课系统、抢答器、电子白板', 2, 1, 0);
INSERT INTO `programmer` VALUES (27, 'Hailent', 'https://www.sxsoft.com/uploads/d/39/85a4f01bd9321ffd395d7c92230dd/1507709203.jpg', '桌面应用', 27, 30440, 11240, 286, '浙江省 杭州市 市辖区', '尚未填写！', 2, 15, 0);
INSERT INTO `programmer` VALUES (28, 'beststart', 'https://www.sxsoft.com/images/defaultimg_108.png', '网站开发', 15, 14774, 7300, 280, '江苏省 苏州市', '本人从02年起参与企业软件开发，拥有10年软件行业经验。先后担任过高级软件工程师，高级软件测试工程师，项目经理等职务。 软件开发涉及到最早的ASP,VB,Delphi 语言，COM组件到微软的.NET平台，Sun公司的Java平台，并擅长Flash,Flex,Jquery等Web前端技术. 所开发产品业务涉及在线游戏,采购，销售，物流，供应链，数据挖掘，数据商业智能，人力资源管理等多个领域。', 1, 12, 0);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `proid` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `pro_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目名',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `pro_com` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '发布公司',
  `pro_request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目要求',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '要求时间',
  `cate_id` int(11) NOT NULL COMMENT '一级分类id',
  `menu2_id` int(11) NOT NULL COMMENT '二级分类id',
  `menu3_id` int(11) NOT NULL COMMENT '三级分类id',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1 删除',
  PRIMARY KEY (`proid`) USING BTREE,
  INDEX `fk_menu2_id`(`menu2_id`) USING BTREE,
  INDEX `fk_menu3_id`(`menu3_id`) USING BTREE,
  INDEX `fk_cate_id`(`cate_id`) USING BTREE,
  CONSTRAINT `fk_cate_id` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_menu2_id` FOREIGN KEY (`menu2_id`) REFERENCES `sub_menu2` (`menu2_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_menu3_id` FOREIGN KEY (`menu3_id`) REFERENCES `sub_menu3` (`menu3_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '控制板单片机开发二次开发升级维护', '2019-08-26 19:42:26', 'LETAOTAO', '功能：控制电路电线\r\n\r\n远程的请勿扰，谢谢。\r\n\r\n只找个人接单！可以是兼职，可以是自由工作者。因为需要你来到公司升级维护。\r\n深圳龙华大浪云峰路，所以你也最好在附近。', '13413345678', '10天', 6, 4, 19, 0);
INSERT INTO `project` VALUES (2, '移动端开放', '2019-08-26 19:53:06', 'DS-INFO', '要求处理一个u3d的app,安桌端权限申诉问题\r\n有经验的个人技术人员\r\n移动端界面开发，以数据展现为主，界面低保真设计由发布者提供，承接者需完成高保真设计和界面开发。供应商限南京本地，外地勿投。', '13512345678', '30天', 3, 4, 12, 0);
INSERT INTO `project` VALUES (3, '定制或购买WMS系统', '2019-08-26 19:56:36', 'zsy2411', '主要是针对仓储管理的系统，最好是有现成的系统可以购买使用 ，具体的请联系我详谈。', '15878945623', '30天', 8, 4, 36, 0);
INSERT INTO `project` VALUES (4, '网页手机版转app,苹果签名', '2019-08-26 19:59:08', '桥头充科技', '主要是安卓和苹果手机版网页转app .苹果签名稳定就可以了。。。。。。。。', '13689456231', '1天', 3, 1, 36, 0);
INSERT INTO `project` VALUES (5, '一个账务系统的二次开发', '2019-08-26 20:02:22', '云星软件', '1. 账户结构\r\n账户按用途和性质不同分为三类：资金账户、信用账户、营销账户，资金账户主要用于现金记账交易，信用账户主要用于信贷交易，营销账户主要用于营销活动、资质、积分等场景，因第一阶段主要适配OBU发行需求，因此仅涉及到资金账户。\r\n资金账户分两层：主账户和子账户；为适应业务发展，子账户可根据用途和实际业务场景进行横向扩展，结构如下\r\n\r\n? 主账户：一个主体只有一个主账户，所有子账户归属到其主账户\r\n? 钱包账户：客户的现金账户，可直接用于充值、转账、提现等交易，不可透支。\r\n? ETC账户：高速通行的专用账户，其他交易不可使用。\r\n? 保证金账户：用于承诺某种交易的保证金对应的账户，违约可按协议扣除保证金。\r\n? 担保账户：交易过程中由平台对买卖双方提供的交易担保资金对应的账户。\r\n? 结算账户：平台按照与客户约定的账期进行资金结算的账户，客户可将此账户资金划转至钱包账户。\r\n.......\r\n\r\n7. 对外接口列表\r\n? 账户管理类\r\n1) 开立主账户\r\n2) 启用主账户\r\n3) 停用主账户\r\n4) 注销主账户\r\n5) 开立子账户\r\n6) 启用子账户\r\n7) 停用子账户\r\n8) 注销子账户\r\n9) 冻结止收子账户\r\n10) 冻结止付子账户\r\n11) 完全冻结子账户\r\n12) 解冻子账户', '15852469854', '20天', 8, 7, 1, 0);
INSERT INTO `project` VALUES (6, '场地预约管理软件', '2019-08-26 20:03:34', 'bdbj8901', '场地管理软件\r\n单位对下属的体育场馆、办公楼、会议室、社区医院、社区服务机构等场地进行统一管理。要求能够实现对所有场地进行预约、预定、取消、统一收费等管理。\r\n\r\n技术要求：java、.net、oracle、sqlsever、均可。\r\n具备：PC端、APP、微信、小程序等。\r\n\r\n要求：\r\n\r\n1、要有现成产品或实际项目类似案例。\r\n\r\n2、标准化产品+简单二次开发\r\n\r\n3、合作公司在京津冀\r\n\r\n4、开发实施周期30天\r\n\r\n重新开发的本次不在合作考虑范围内，请不要联系；望见谅！\r\n\r\n项目时间紧，能做的伙伴尽快联系。\r\n\r\n有相关软件产品的公司，请联系', '13856789652', '30天', 8, 7, 36, 0);
INSERT INTO `project` VALUES (7, 'excle数据分析 工具python', '2019-08-26 20:05:22', 'S_308025', '1.用python访问excel数据 n行 每行3列 有3个浮点类型数据 顺序是 a b c 对行的3个数据进行（ a+c）/c 运算 返回数据number 对number进行 取ma ，h 最大 L最小，标准差 运算 结果保存为excel文件 \r\n2.间隔1分钟访问一次excel 保存结果一次', '15698763254', '待商议', 5, 7, 36, 0);
INSERT INTO `project` VALUES (8, '微信端实现3d动画', '2019-08-26 20:06:59', 'S_308021', '基本需求：\r\n1，在微信小程序上实现3d动画。\r\n2，人物已经建模，现在是要将模型绑定骨骼，按照规定的视频动作进行绑定骨骼,。\r\n3，在小程序上面AR识别后展示这个3d动画。', '15985236547', '7天', 9, 4, 36, 0);

-- ----------------------------
-- Table structure for sub_menu2
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu2`;
CREATE TABLE `sub_menu2`  (
  `menu2_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二级分类id',
  `menu2_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '二级分类名',
  PRIMARY KEY (`menu2_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_menu2
-- ----------------------------
INSERT INTO `sub_menu2` VALUES (1, '1千以下');
INSERT INTO `sub_menu2` VALUES (2, '1千~5千');
INSERT INTO `sub_menu2` VALUES (3, '5千~1万');
INSERT INTO `sub_menu2` VALUES (4, '1万~5万');
INSERT INTO `sub_menu2` VALUES (5, '5万~10万');
INSERT INTO `sub_menu2` VALUES (6, '10万以上');
INSERT INTO `sub_menu2` VALUES (7, '待商议');

-- ----------------------------
-- Table structure for sub_menu3
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu3`;
CREATE TABLE `sub_menu3`  (
  `menu3_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '三级分类id',
  `menu3_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '三级分类名',
  PRIMARY KEY (`menu3_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_menu3
-- ----------------------------
INSERT INTO `sub_menu3` VALUES (1, '北京市');
INSERT INTO `sub_menu3` VALUES (2, '上海市');
INSERT INTO `sub_menu3` VALUES (3, '天津市');
INSERT INTO `sub_menu3` VALUES (4, '重庆市');
INSERT INTO `sub_menu3` VALUES (5, '河北省');
INSERT INTO `sub_menu3` VALUES (6, '山西省');
INSERT INTO `sub_menu3` VALUES (7, '河南省');
INSERT INTO `sub_menu3` VALUES (8, '辽宁省');
INSERT INTO `sub_menu3` VALUES (9, '吉林省');
INSERT INTO `sub_menu3` VALUES (10, '黑龙江省');
INSERT INTO `sub_menu3` VALUES (11, '内蒙古');
INSERT INTO `sub_menu3` VALUES (12, '江苏省');
INSERT INTO `sub_menu3` VALUES (13, '山东省');
INSERT INTO `sub_menu3` VALUES (14, '安徽省');
INSERT INTO `sub_menu3` VALUES (15, '浙江省');
INSERT INTO `sub_menu3` VALUES (16, '福建省');
INSERT INTO `sub_menu3` VALUES (17, '湖北省');
INSERT INTO `sub_menu3` VALUES (18, '湖南省');
INSERT INTO `sub_menu3` VALUES (19, '广东省');
INSERT INTO `sub_menu3` VALUES (20, '广西');
INSERT INTO `sub_menu3` VALUES (21, '江西省');
INSERT INTO `sub_menu3` VALUES (22, '四川省');
INSERT INTO `sub_menu3` VALUES (23, '海南省');
INSERT INTO `sub_menu3` VALUES (24, '贵州省');
INSERT INTO `sub_menu3` VALUES (25, '云南省');
INSERT INTO `sub_menu3` VALUES (26, '西藏');
INSERT INTO `sub_menu3` VALUES (27, '陕西省');
INSERT INTO `sub_menu3` VALUES (28, '甘肃省');
INSERT INTO `sub_menu3` VALUES (29, '青海省');
INSERT INTO `sub_menu3` VALUES (30, '宁夏');
INSERT INTO `sub_menu3` VALUES (31, '新疆');
INSERT INTO `sub_menu3` VALUES (32, '台湾');
INSERT INTO `sub_menu3` VALUES (33, '香港');
INSERT INTO `sub_menu3` VALUES (34, '澳门');
INSERT INTO `sub_menu3` VALUES (35, '国外');
INSERT INTO `sub_menu3` VALUES (36, '不限');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `utel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户电话',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '状态,0 存在,1 删除',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '1234567890@163.com', '13712345678', '2019-08-26 19:03:07', 0);

SET FOREIGN_KEY_CHECKS = 1;
