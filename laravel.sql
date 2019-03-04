/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 16:22:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '3', '1', '0', '1551333574', '2');
INSERT INTO `cart` VALUES ('2', '100', '1', '0', '1551509168', '1');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '小皮筋');
INSERT INTO `cate` VALUES ('2', '手环');
INSERT INTO `cate` VALUES ('3', '烟草');

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `outtime` int(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('1', '4618', '1550798750', '13133145415', '0');

-- ----------------------------
-- Table structure for lang
-- ----------------------------
DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `is_hot` varchar(20) DEFAULT NULL,
  `is_up` varchar(20) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `is_del` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang
-- ----------------------------
INSERT INTO `lang` VALUES ('1', '兰', '半支烟的柔和', '0', '1', '1', '1');
INSERT INTO `lang` VALUES ('2', '岚2', '呵呵', '1', '0', '2', '1');
INSERT INTO `lang` VALUES ('3', '岚2', '呵呵', '0', '0', '2', '2');
INSERT INTO `lang` VALUES ('4', '岚3', '呵呵', '0', '1', '1', '2');
INSERT INTO `lang` VALUES ('5', '岚5', '呵呵', '1', '0', '2', '1');
INSERT INTO `lang` VALUES ('6', '岚4', '呵呵', '0', '0', '1', '1');
INSERT INTO `lang` VALUES ('7', '兰聪2', '飒飒', '0', '0', '1', '1');
INSERT INTO `lang` VALUES ('8', '电商啊啊啊', '洒洒1111', '0', '1', '3', '1');
INSERT INTO `lang` VALUES ('9', '刷青蛙啊啊', '试试手啊啊', '1', '0', '3', '1');
INSERT INTO `lang` VALUES ('10', '啊啊啊啊', '大萨达撒所多', '0', '1', '3', '2');

-- ----------------------------
-- Table structure for shop_cate
-- ----------------------------
DROP TABLE IF EXISTS `shop_cate`;
CREATE TABLE `shop_cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(20) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `cate_show` tinyint(4) DEFAULT NULL,
  `cate_navshow` tinyint(4) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cate
-- ----------------------------
INSERT INTO `shop_cate` VALUES ('1', '生鲜水果', '0', '1', '1', '1542445107');
INSERT INTO `shop_cate` VALUES ('2', '母婴玩具', '0', '1', '1', '1542445107');
INSERT INTO `shop_cate` VALUES ('3', '家居建材', '0', '1', '1', '1542445107');
INSERT INTO `shop_cate` VALUES ('4', '生活电器', '0', '1', '1', '1542445107');
INSERT INTO `shop_cate` VALUES ('5', '空调', '4', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('6', '冰箱', '4', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('7', '洗衣机', '4', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('8', '卧室家具', '3', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('9', '书房儿童', '3', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('10', '蛋类', '1', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('11', '肉类', '1', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('12', '海鲜', '1', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('13', '三文鱼', '12', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('14', '鸡蛋', '10', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('15', '牛肉', '11', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('16', '电脑桌', '9', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('17', '儿童床', '9', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('18', '衣柜', '8', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('19', '床', '8', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('20', '节能空调', '5', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('21', '三门冰箱', '6', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('22', '滚筒洗衣机', '7', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('23', '微波炉', '4', '1', '2', '1542445107');
INSERT INTO `shop_cate` VALUES ('25', '光波炉', '23', '1', '2', '1542445149');
INSERT INTO `shop_cate` VALUES ('26', '零食', '0', '1', '1', '1542797910');
INSERT INTO `shop_cate` VALUES ('27', '进口食品', '26', '1', '2', '1542797927');
INSERT INTO `shop_cate` VALUES ('28', '女装', '0', '1', '1', '1542933209');
INSERT INTO `shop_cate` VALUES ('29', '医药保健', '0', '1', '1', '1542933224');
INSERT INTO `shop_cate` VALUES ('30', '美妆', '0', '1', '1', '1542933243');
INSERT INTO `shop_cate` VALUES ('31', '数码', '0', '1', '1', '1542933249');
INSERT INTO `shop_cate` VALUES ('32', '儿童玩具', '2', '1', '2', '1542933413');
INSERT INTO `shop_cate` VALUES ('33', '水果', '1', '1', '2', '1542933528');
INSERT INTO `shop_cate` VALUES ('34', '苹果', '33', '1', '2', '1542933542');
INSERT INTO `shop_cate` VALUES ('35', '香蕉', '33', '1', '2', '1542933555');
INSERT INTO `shop_cate` VALUES ('36', '当季流行', '28', '1', '2', '1542943509');
INSERT INTO `shop_cate` VALUES ('37', '精品上装', '28', '1', '2', '1542943536');
INSERT INTO `shop_cate` VALUES ('38', '浪漫裙装', '28', '1', '2', '1542943554');
INSERT INTO `shop_cate` VALUES ('39', '家居服', '28', '1', '2', '1542943587');
INSERT INTO `shop_cate` VALUES ('40', '女装新品', '36', '1', '2', '1542943691');
INSERT INTO `shop_cate` VALUES ('41', '商场同款', '36', '1', '2', '1542943718');
INSERT INTO `shop_cate` VALUES ('42', '童装', '2', '1', '2', '1542943787');
INSERT INTO `shop_cate` VALUES ('43', '童鞋', '2', '1', '2', '1542943800');
INSERT INTO `shop_cate` VALUES ('44', '车床用品', '2', '1', '2', '1542943821');
INSERT INTO `shop_cate` VALUES ('45', '喂养', '2', '1', '2', '1542943843');
INSERT INTO `shop_cate` VALUES ('46', '洗护', '2', '1', '2', '1542943856');
INSERT INTO `shop_cate` VALUES ('47', '亲子装', '42', '1', '2', '1542943877');
INSERT INTO `shop_cate` VALUES ('48', '套装', '42', '1', '2', '1542943904');
INSERT INTO `shop_cate` VALUES ('49', '连体衣', '42', '1', '2', '1542943933');
INSERT INTO `shop_cate` VALUES ('50', '学步鞋', '43', '1', '2', '1542943959');
INSERT INTO `shop_cate` VALUES ('51', '亲子鞋', '43', '1', '2', '1542943973');
INSERT INTO `shop_cate` VALUES ('52', '运动鞋', '43', '1', '2', '1542943984');
INSERT INTO `shop_cate` VALUES ('53', '帆布鞋', '43', '1', '2', '1542944006');
INSERT INTO `shop_cate` VALUES ('54', '婴儿推车', '44', '1', '2', '1542944032');
INSERT INTO `shop_cate` VALUES ('55', '学步车', '44', '1', '2', '1542944048');
INSERT INTO `shop_cate` VALUES ('56', '安全座椅', '44', '1', '2', '1542944078');
INSERT INTO `shop_cate` VALUES ('57', '奶瓶', '45', '1', '2', '1542944097');
INSERT INTO `shop_cate` VALUES ('58', '奶嘴', '45', '1', '2', '1542944110');
INSERT INTO `shop_cate` VALUES ('59', '水杯', '45', '1', '2', '1542944122');
INSERT INTO `shop_cate` VALUES ('60', '洗发水', '46', '1', '2', '1542944145');
INSERT INTO `shop_cate` VALUES ('61', '沐浴乳', '46', '1', '2', '1542944161');
INSERT INTO `shop_cate` VALUES ('62', '湿巾', '46', '1', '2', '1542944180');
INSERT INTO `shop_cate` VALUES ('63', '时髦外套', '36', '1', '2', '1542944221');
INSERT INTO `shop_cate` VALUES ('64', '毛呢外套', '37', '1', '2', '1542944251');
INSERT INTO `shop_cate` VALUES ('65', '棉衣', '37', '1', '2', '1542944277');
INSERT INTO `shop_cate` VALUES ('66', '羽绒服', '37', '1', '2', '1542944298');
INSERT INTO `shop_cate` VALUES ('67', '连衣裙', '38', '1', '2', '1542944324');
INSERT INTO `shop_cate` VALUES ('68', '半身裙', '38', '1', '2', '1542944343');
INSERT INTO `shop_cate` VALUES ('69', 'A子群', '38', '1', '2', '1542944358');
INSERT INTO `shop_cate` VALUES ('70', '春夏家居服', '39', '1', '2', '1542944388');
INSERT INTO `shop_cate` VALUES ('71', '纯棉家居服', '39', '1', '2', '1542944409');
INSERT INTO `shop_cate` VALUES ('72', '真丝家居服', '39', '1', '2', '1542944425');
INSERT INTO `shop_cate` VALUES ('73', '婴儿玩具', '32', '1', '2', '1542944504');
INSERT INTO `shop_cate` VALUES ('74', '毛绒玩具', '32', '1', '2', '1542944529');
INSERT INTO `shop_cate` VALUES ('75', '儿童自行车', '32', '1', '2', '1542944565');
INSERT INTO `shop_cate` VALUES ('76', '鸭蛋', '10', '1', '2', '1542944611');
INSERT INTO `shop_cate` VALUES ('77', '鹌鹑蛋', '10', '1', '2', '1542944625');
INSERT INTO `shop_cate` VALUES ('78', '驴肉', '11', '1', '2', '1542944640');
INSERT INTO `shop_cate` VALUES ('79', '猪肉', '11', '1', '2', '1542944650');
INSERT INTO `shop_cate` VALUES ('80', '鸡肉', '11', '1', '2', '1542944661');
INSERT INTO `shop_cate` VALUES ('81', '带鱼', '12', '1', '2', '1542944678');
INSERT INTO `shop_cate` VALUES ('82', '鲤鱼', '12', '1', '2', '1542944691');
INSERT INTO `shop_cate` VALUES ('83', '鲍鱼', '12', '1', '2', '1542944705');
INSERT INTO `shop_cate` VALUES ('84', '榴莲', '33', '1', '2', '1542944744');
INSERT INTO `shop_cate` VALUES ('85', '椰子', '33', '1', '2', '1542944757');
INSERT INTO `shop_cate` VALUES ('86', '客厅餐厅', '3', '1', '2', '1542944821');
INSERT INTO `shop_cate` VALUES ('87', '家庭主材', '3', '1', '2', '1542944849');
INSERT INTO `shop_cate` VALUES ('88', '厨房卫浴', '3', '1', '2', '1542944880');
INSERT INTO `shop_cate` VALUES ('89', '成套家具', '3', '1', '2', '1542944903');
INSERT INTO `shop_cate` VALUES ('90', '沙发', '86', '1', '2', '1542944935');
INSERT INTO `shop_cate` VALUES ('91', '酒柜', '86', '1', '2', '1542944949');
INSERT INTO `shop_cate` VALUES ('92', '橱柜', '86', '1', '2', '1542944964');
INSERT INTO `shop_cate` VALUES ('93', '客厅成套', '89', '1', '2', '1542944987');
INSERT INTO `shop_cate` VALUES ('94', '餐厅成套', '89', '1', '2', '1542945011');
INSERT INTO `shop_cate` VALUES ('95', '卧室成套', '89', '1', '2', '1542945039');
INSERT INTO `shop_cate` VALUES ('96', '浴霸', '88', '1', '2', '1542945082');
INSERT INTO `shop_cate` VALUES ('97', '马桶', '88', '1', '2', '1542945100');
INSERT INTO `shop_cate` VALUES ('98', '花洒', '88', '1', '2', '1542945118');
INSERT INTO `shop_cate` VALUES ('99', '瓷砖', '87', '1', '2', '1542945177');
INSERT INTO `shop_cate` VALUES ('100', '壁纸', '87', '1', '2', '1542945193');
INSERT INTO `shop_cate` VALUES ('101', '涂鸦', '87', '1', '2', '1542945209');
INSERT INTO `shop_cate` VALUES ('102', '新鲜蔬菜', '1', '1', '2', '1542945246');
INSERT INTO `shop_cate` VALUES ('103', '冰淇淋', '1', '1', '2', '1542945257');
INSERT INTO `shop_cate` VALUES ('104', '土豆', '102', '1', '2', '1542945284');
INSERT INTO `shop_cate` VALUES ('105', '山药', '102', '1', '2', '1542945302');
INSERT INTO `shop_cate` VALUES ('106', '番薯', '102', '1', '2', '1542945312');
INSERT INTO `shop_cate` VALUES ('107', '哈根达斯', '103', '1', '2', '1542945360');
INSERT INTO `shop_cate` VALUES ('108', '本杰瑞', '103', '1', '2', '1542945382');
INSERT INTO `shop_cate` VALUES ('109', '厨房大电', '4', '1', '2', '1542945449');
INSERT INTO `shop_cate` VALUES ('110', '平板电视', '4', '1', '2', '1542945471');
INSERT INTO `shop_cate` VALUES ('111', '全自动洗衣机', '7', '1', '2', '1542945512');
INSERT INTO `shop_cate` VALUES ('112', '变频空调', '5', '1', '2', '1542945527');
INSERT INTO `shop_cate` VALUES ('113', '双开门冰箱', '6', '1', '2', '1542945551');
INSERT INTO `shop_cate` VALUES ('114', '国产', '110', '1', '2', '1542945600');
INSERT INTO `shop_cate` VALUES ('115', '外资', '110', '1', '2', '1542945614');
INSERT INTO `shop_cate` VALUES ('116', '曲面', '110', '1', '2', '1542945626');
INSERT INTO `shop_cate` VALUES ('117', '烟灶套装', '109', '1', '2', '1542945678');
INSERT INTO `shop_cate` VALUES ('118', '洗碗机', '109', '1', '2', '1542945702');
INSERT INTO `shop_cate` VALUES ('119', '消毒柜', '109', '1', '2', '1542945724');
INSERT INTO `shop_cate` VALUES ('120', '数码配件', '31', '1', '2', '1542945933');
INSERT INTO `shop_cate` VALUES ('121', '热门手机', '31', '1', '2', '1542945950');
INSERT INTO `shop_cate` VALUES ('122', '电脑组装', '31', '1', '2', '1542945966');
INSERT INTO `shop_cate` VALUES ('123', '硬件储存', '31', '1', '2', '1542946012');
INSERT INTO `shop_cate` VALUES ('124', '摄影摄像', '31', '1', '2', '1542946025');
INSERT INTO `shop_cate` VALUES ('125', '小米', '121', '1', '2', '1542946093');
INSERT INTO `shop_cate` VALUES ('126', '华为', '121', '1', '2', '1542946105');
INSERT INTO `shop_cate` VALUES ('127', 'iPhone', '121', '1', '2', '1542946141');
INSERT INTO `shop_cate` VALUES ('128', '笔记本', '122', '1', '2', '1542946177');
INSERT INTO `shop_cate` VALUES ('129', '平板', '122', '1', '2', '1542946191');
INSERT INTO `shop_cate` VALUES ('130', '台式', '122', '1', '2', '1542946202');
INSERT INTO `shop_cate` VALUES ('131', '手机配件', '120', '1', '2', '1542946230');
INSERT INTO `shop_cate` VALUES ('132', '笔记本配件', '120', '1', '2', '1542946252');
INSERT INTO `shop_cate` VALUES ('133', '充电宝', '120', '1', '2', '1542946290');
INSERT INTO `shop_cate` VALUES ('134', '显示器', '123', '1', '2', '1542946341');
INSERT INTO `shop_cate` VALUES ('135', 'CPU', '123', '1', '2', '1542946352');
INSERT INTO `shop_cate` VALUES ('136', '硬盘', '123', '1', '2', '1542946364');
INSERT INTO `shop_cate` VALUES ('137', '影音娱乐', '31', '1', '2', '1542946405');
INSERT INTO `shop_cate` VALUES ('138', '天猫魔盒', '137', '1', '2', '1542946444');
INSERT INTO `shop_cate` VALUES ('139', '耳机', '137', '1', '2', '1542946457');
INSERT INTO `shop_cate` VALUES ('140', '家庭影院', '137', '1', '2', '1542946471');
INSERT INTO `shop_cate` VALUES ('141', '相机', '124', '1', '2', '1542946488');
INSERT INTO `shop_cate` VALUES ('142', '单反', '124', '1', '2', '1542946503');
INSERT INTO `shop_cate` VALUES ('143', '摄像机', '124', '1', '2', '1542946521');
INSERT INTO `shop_cate` VALUES ('144', '护肤品', '30', '1', '2', '1542946633');
INSERT INTO `shop_cate` VALUES ('145', '彩妆', '30', '1', '2', '1542946650');
INSERT INTO `shop_cate` VALUES ('146', '美发护发', '30', '1', '2', '1542946694');
INSERT INTO `shop_cate` VALUES ('147', '口腔护理', '30', '1', '2', '1542946710');
INSERT INTO `shop_cate` VALUES ('148', '男士护肤', '30', '1', '2', '1542946742');
INSERT INTO `shop_cate` VALUES ('149', '肤质推选', '30', '1', '2', '1542946775');
INSERT INTO `shop_cate` VALUES ('150', '面膜', '144', '1', '2', '1542946799');
INSERT INTO `shop_cate` VALUES ('151', '身体乳', '144', '1', '2', '1542946822');
INSERT INTO `shop_cate` VALUES ('152', '卸妆', '144', '1', '2', '1542946836');
INSERT INTO `shop_cate` VALUES ('153', '香水', '145', '1', '2', '1542946852');
INSERT INTO `shop_cate` VALUES ('154', 'BB霜', '145', '1', '2', '1542946872');
INSERT INTO `shop_cate` VALUES ('155', '洁面', '148', '1', '2', '1542946910');
INSERT INTO `shop_cate` VALUES ('156', '爽肤水', '148', '1', '2', '1542946973');
INSERT INTO `shop_cate` VALUES ('157', '控油', '148', '1', '2', '1542947007');
INSERT INTO `shop_cate` VALUES ('158', '干性', '149', '1', '2', '1542947034');
INSERT INTO `shop_cate` VALUES ('159', '敏感性', '149', '1', '2', '1542947053');
INSERT INTO `shop_cate` VALUES ('160', '护发素', '146', '1', '2', '1542947100');
INSERT INTO `shop_cate` VALUES ('161', '发膜', '146', '1', '2', '1542947120');
INSERT INTO `shop_cate` VALUES ('162', '牙膏', '147', '1', '2', '1542947161');
INSERT INTO `shop_cate` VALUES ('163', '牙刷', '147', '1', '2', '1542947190');
INSERT INTO `shop_cate` VALUES ('164', '保健品', '29', '1', '2', '1542947470');
INSERT INTO `shop_cate` VALUES ('165', '滋补品', '29', '1', '2', '1542947505');
INSERT INTO `shop_cate` VALUES ('166', '医药', '29', '1', '2', '1542947526');
INSERT INTO `shop_cate` VALUES ('167', '隐形眼睛', '29', '1', '2', '1542947561');
INSERT INTO `shop_cate` VALUES ('168', '医疗器械', '29', '1', '2', '1542947583');
INSERT INTO `shop_cate` VALUES ('169', '医疗服务', '29', '1', '2', '1542947598');
INSERT INTO `shop_cate` VALUES ('170', '芦荟', '164', '1', '2', '1542947614');
INSERT INTO `shop_cate` VALUES ('171', '玛卡', '164', '1', '2', '1542947629');
INSERT INTO `shop_cate` VALUES ('172', '蜂蜜', '165', '1', '2', '1542947651');
INSERT INTO `shop_cate` VALUES ('173', '阿胶', '165', '1', '2', '1542948990');
INSERT INTO `shop_cate` VALUES ('174', '感冒咳嗽', '166', '1', '2', '1542949037');
INSERT INTO `shop_cate` VALUES ('175', '成人用品', '166', '1', '2', '1542949065');
INSERT INTO `shop_cate` VALUES ('176', '制氧机', '168', '1', '2', '1542949103');
INSERT INTO `shop_cate` VALUES ('177', '体温计', '168', '1', '2', '1542949123');
INSERT INTO `shop_cate` VALUES ('178', '强生美瞳', '167', '1', '2', '1542949155');
INSERT INTO `shop_cate` VALUES ('179', '博士伦', '167', '1', '2', '1542949175');
INSERT INTO `shop_cate` VALUES ('180', '爱康国宾', '169', '1', '2', '1542949210');
INSERT INTO `shop_cate` VALUES ('181', '月子中心', '169', '1', '2', '1542949231');
INSERT INTO `shop_cate` VALUES ('182', '女士下装', '28', '1', '2', '1542949352');
INSERT INTO `shop_cate` VALUES ('183', '特色女装', '28', '1', '2', '1542949370');
INSERT INTO `shop_cate` VALUES ('184', '休闲裤', '182', '1', '2', '1542949390');
INSERT INTO `shop_cate` VALUES ('185', '阔腿裤', '182', '1', '2', '1542949408');
INSERT INTO `shop_cate` VALUES ('186', '时尚套装', '183', '1', '2', '1542949432');
INSERT INTO `shop_cate` VALUES ('187', '休闲套装', '183', '1', '2', '1542949454');
INSERT INTO `shop_cate` VALUES ('188', '休闲零食', '26', '1', '2', '1542949632');
INSERT INTO `shop_cate` VALUES ('189', '酒类', '26', '1', '2', '1542949654');
INSERT INTO `shop_cate` VALUES ('190', '茶叶', '26', '1', '2', '1542949686');
INSERT INTO `shop_cate` VALUES ('191', '乳品冲饮', '26', '1', '2', '1542949713');
INSERT INTO `shop_cate` VALUES ('192', '粮油速食', '26', '1', '2', '1542949736');
INSERT INTO `shop_cate` VALUES ('193', '进口巧克力', '27', '1', '2', '1542949776');
INSERT INTO `shop_cate` VALUES ('194', '进口饼干', '27', '1', '2', '1542949799');
INSERT INTO `shop_cate` VALUES ('195', '坚果', '188', '1', '2', '1542949822');
INSERT INTO `shop_cate` VALUES ('196', '饼干', '188', '1', '2', '1542949838');
INSERT INTO `shop_cate` VALUES ('197', '白酒', '189', '1', '2', '1542949857');
INSERT INTO `shop_cate` VALUES ('198', '红酒', '189', '1', '2', '1542949875');
INSERT INTO `shop_cate` VALUES ('199', '西湖龙井', '190', '1', '2', '1542949907');
INSERT INTO `shop_cate` VALUES ('200', '绿茶', '190', '1', '2', '1542949928');
INSERT INTO `shop_cate` VALUES ('201', '牛奶', '191', '1', '2', '1542949949');
INSERT INTO `shop_cate` VALUES ('202', '酸奶', '191', '1', '2', '1542949964');
INSERT INTO `shop_cate` VALUES ('203', '橄榄油', '192', '1', '2', '1542949983');
INSERT INTO `shop_cate` VALUES ('204', '大米', '192', '1', '2', '1542950001');
INSERT INTO `shop_cate` VALUES ('205', '首饰', '0', '1', '2', '1543480550');
INSERT INTO `shop_cate` VALUES ('206', '鱿鱼', '12', '1', '2', '1543481830');
INSERT INTO `shop_cate` VALUES ('207', '黄金首饰', '205', '1', '2', '1543481873');
INSERT INTO `shop_cate` VALUES ('208', '钻石彩宝', '205', '1', '2', '1543481907');
INSERT INTO `shop_cate` VALUES ('209', '珍珠玉翠', '205', '1', '2', '1543481967');
INSERT INTO `shop_cate` VALUES ('210', '腕表', '205', '1', '2', '1543481991');
INSERT INTO `shop_cate` VALUES ('211', '潮流饰品', '205', '1', '2', '1543482022');
INSERT INTO `shop_cate` VALUES ('212', '眼镜', '205', '1', '2', '1543482082');
INSERT INTO `shop_cate` VALUES ('213', '足金饰品', '207', '1', '2', '1543482262');
INSERT INTO `shop_cate` VALUES ('214', '婚嫁套饰', '207', '1', '2', '1543482312');
INSERT INTO `shop_cate` VALUES ('215', '钻石吊坠', '208', '1', '2', '1543486587');
INSERT INTO `shop_cate` VALUES ('216', '红蓝宝石', '208', '1', '2', '1543486605');
INSERT INTO `shop_cate` VALUES ('218', '海水珍珠', '209', '1', '2', '1543486708');
INSERT INTO `shop_cate` VALUES ('219', '和田玉', '209', '1', '2', '1543486805');
INSERT INTO `shop_cate` VALUES ('220', '传统银饰', '211', '1', '2', '1543486842');
INSERT INTO `shop_cate` VALUES ('221', '手链', '211', '1', '2', '1543486862');
INSERT INTO `shop_cate` VALUES ('222', '瑞士名表', '210', '1', '2', '1543486890');
INSERT INTO `shop_cate` VALUES ('223', '经典国表', '210', '1', '2', '1543486931');
INSERT INTO `shop_cate` VALUES ('224', '墨镜', '212', '1', '2', '1543486973');
INSERT INTO `shop_cate` VALUES ('225', '暴龙', '212', '1', '2', '1543486996');
INSERT INTO `shop_cate` VALUES ('226', '烤箱', '23', '1', '2', '1543487111');
INSERT INTO `shop_cate` VALUES ('227', '运动', '0', '1', '2', '1544147972');
INSERT INTO `shop_cate` VALUES ('228', '鞋', '227', '1', '2', '1544148022');
INSERT INTO `shop_cate` VALUES ('229', '运动套装', '227', '1', '2', '1544148044');
INSERT INTO `shop_cate` VALUES ('230', '休闲鞋', '228', '1', '2', '1544148056');
INSERT INTO `shop_cate` VALUES ('231', '跑鞋', '228', '1', '2', '1544148068');

-- ----------------------------
-- Table structure for shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(45) DEFAULT NULL,
  `goods_selfprice` float DEFAULT NULL,
  `goods_marketprice` float DEFAULT NULL,
  `goods_up` tinyint(4) DEFAULT NULL,
  `goods_new` tinyint(4) DEFAULT '2',
  `goods_best` tinyint(4) DEFAULT '2',
  `goods_hot` tinyint(4) DEFAULT '2',
  `goods_num` int(11) DEFAULT NULL,
  `goods_integral` int(11) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_imgs` varchar(255) DEFAULT NULL,
  `goods_desc` text,
  `cate_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `goods_salenum` int(10) DEFAULT NULL,
  `is_tell` varchar(255) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '商品是否推荐',
  PRIMARY KEY (`goods_id`),
  KEY `fk_shop_goods_shop_category_idx` (`cate_id`),
  KEY `fk_shop_goods_shop_brand1_idx` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('1', '亨奇 摇表器 机械手表德国进口全自动', '468', '700', '1', '1', '1', '1', '0', '500', '20181129\\dbad113ee4116ff4748a3588ac55ceb9.jpg', '', null, '223', '28', '2311', '0', '1543487016');
INSERT INTO `shop_goods` VALUES ('2', '弘艺堂首饰盒木质公主欧式韩国 实木多', '398', '536', '1', '1', '1', '2', '183', '666', '20181129\\bad2c3cef7ba9afaad686a1ec01018e1.jpg', '', null, '222', '29', '5546', '0', '1543487201');
INSERT INTO `shop_goods` VALUES ('3', '锦贝传说螺钿漆器结婚礼物首饰盒木质', '599', '999', '1', '2', '2', '1', '1310', '10000', '20181129\\5f80c655572a5b4c1688649c13564662.jpg', '', null, '220', '32', '8978', '0', '1543487378');
INSERT INTO `shop_goods` VALUES ('4', '法缇雅摇表器自动机械手表盒子上弦器', '198', '229', '1', '1', '2', '2', '9000', '3123', '20181129\\e4af8aa23a7133114cf3a56991af9879.jpg', '', null, '222', '33', '1321', '0', '1543487548');
INSERT INTO `shop_goods` VALUES ('5', '摇表器 自动机械表上链器 手表盒收纳', '299', '499', '1', '1', '2', '2', '8888', '100', '20181129\\bab7026ecfca755b7845ce99e2dd03f1.jpg', '', null, '223', '32', '342', '0', '1543487642');
INSERT INTO `shop_goods` VALUES ('6', '乡康佬五香卤蛋乡巴佬卤蛋土鸡蛋喜蛋', '37.3', '42', '1', '1', '1', '2', '184', '20', '20181129\\4fee03213c7822f43f7905b94f0e3927.jpg', '', null, '14', '28', '654', '0', '1543487784');
INSERT INTO `shop_goods` VALUES ('7', '摇表器 德国品质进口马达转表器晃表器 ', '200', '399', '1', '2', '1', '2', '700', '6768', '20181129\\5d70d13c976c401ee09849ec30ee00cf.jpg', '', null, '222', '27', '1414', '0', '1543487812');
INSERT INTO `shop_goods` VALUES ('8', '新品】施华洛世奇2018MAGIC雪花', '1190', '1599', '1', '1', '1', '2', '1190', '14343', '20181129\\12cd58332ca929aa51319ae42e8c7e1b.jpg', '', null, '221', '32', '132', '0', '1543487998');
INSERT INTO `shop_goods` VALUES ('9', '明牌珠宝黄金手镯 足金匠心简约心跳呆口女款手镯AFI0056 工费300', '8983.65', '10000', '1', '1', '2', '1', '127', '6000', '20181129\\2ea1cd8af3e587674241cd352799fce2.jpg', '', null, '221', '31', '5435', '0', '1543488208');
INSERT INTO `shop_goods` VALUES ('10', 'Apple/苹果 iPhone 8 Plus', '5999', '6199', '1', '1', '1', '2', '50', '500', '20181129\\99373568dad2833fcdbc6c4e22c0fceb.jpg', '', null, '127', '36', '34534', '0', '1543488382');
INSERT INTO `shop_goods` VALUES ('11', 'honor/荣耀 荣耀magic 2', '4299', '4599', '1', '1', '1', '2', '47', '400', '20181129\\8de490c092088ff9f94e01782ad5e750.png', '', null, '126', '37', '132214', '0', '1543488492');
INSERT INTO `shop_goods` VALUES ('12', 'Haier/海尔 BCD-206STPA 三门式 206升三门 中门软冷冻 0解冻时间', '1499', '1599', '1', '1', '1', '2', '66', '1314', '20181129\\c4d5a1ce270cdecb12eea9c184ed29fb.jpg', '', null, '113', '1', '42423', '0', '1543488527');
INSERT INTO `shop_goods` VALUES ('13', 'Haier/海尔 BCD-258WDPM 三门式 风冷无霜 杀菌技术 瞬时断电记忆', '2299', '2599', '1', '1', '1', '2', '32423', '4564', '20181129\\5e5cfe50ffd60d0b1c37fa4de5489b1a.jpg', '', null, '21', '1', '4242', '0', '1543488565');
INSERT INTO `shop_goods` VALUES ('14', '科智 20000', '59', '80', '1', '1', '2', '1', '85', '25', '20181129\\58d83e42bb81496cde24c47f2e7b92d0.jpg', '', null, '133', '41', '23424', '0', '1543488593');
INSERT INTO `shop_goods` VALUES ('15', 'Dell/戴尔 G7 GTX1060MQ 6G独显游', '7399', '7599', '1', '1', '1', '2', '34', '740', '20181129\\7b095500adf6c1edd282c30f53074242.jpg', '', null, '128', '44', '54353', '0', '1543488699');
INSERT INTO `shop_goods` VALUES ('16', 'Haier/海尔 BCD-572WDENU1 对开双门式', '3499', '4999', '1', '2', '1', '1', '1314', '1314', '20181129\\66d10eb278de4cc359f9faa1a3ebd9e6.jpg', '', null, '113', '1', '13131', '0', '1543488743');
INSERT INTO `shop_goods` VALUES ('17', 'Midea/美的 BCD-521WKM(E) 对开双门式 风冷无霜 纤薄机身 电脑控温', '2899', '2999', '1', '1', '1', '2', '435', '1334', '20181129\\44b52db925c3b0aed2a3e7d06f8498cc.jpg', '', null, '113', '3', '23424', '0', '1543488796');
INSERT INTO `shop_goods` VALUES ('18', 'Asus/华硕 飞行堡垒5代FX80GE游戏本', '6599', '6798', '1', '1', '2', '1', '22', '650', '20181129\\ba526a911ec60cfa1e054be25aedf012.jpg', '', null, '128', '43', '1314', '0', '1543488801');
INSERT INTO `shop_goods` VALUES ('19', 'Midea/美的 KFR-35GW/WCBD3@', '2299', '3000', '1', '1', '1', '2', '9999', '3123', '20181129\\9e7ee20b8b3b0123d2c861c8b9399354.jpg', '', null, '20', '3', '5435', '0', '1543488951');
INSERT INTO `shop_goods` VALUES ('20', 'Midea/美的 KFR-35GW/WCBD3@', '2299', '3000', '1', '1', '1', '2', '9999', '3123', '20181129\\9e7ee20b8b3b0123d2c861c8b9399354.jpg', '', null, '20', '3', '6546', '0', '1543488951');
INSERT INTO `shop_goods` VALUES ('21', 'Audio Technica/铁三角 ATH-CLR100IS  铁三角官方旗舰店   等', '138', '150', '1', '1', '2', '1', '150', '30', '20181129\\a0211541a450630e28f4fd5dda13fb6c.jpg', '', null, '139', '26', '4234', '0', '1543488964');
INSERT INTO `shop_goods` VALUES ('22', 'Canon/佳能 EOS 5D Mark IV机身 36', '15999', '17499', '1', '1', '2', '1', '10', '1599', '20181129\\7c17fdba7951ddeaeb7eff9e0c022e1f.jpg', '', null, '141', '38', '5546', '0', '1543489046');
INSERT INTO `shop_goods` VALUES ('23', '¥2849.00 Gree/格力 KFR-35GW/NhBaD3', '2849.9', '2999', '1', '1', '1', '2', '3550', '355', '20181129\\80fed78b98d94d09360f098c0c8fb7de.jpg', '', null, '112', '3', '35453', '0', '1543489053');
INSERT INTO `shop_goods` VALUES ('24', '¥3599.00 Haier/海尔 KFR-50GW/13NHA13', '3599', '3799', '1', '1', '1', '1', '3134', '988', '20181129\\e4bc392c25020c4dd560b5756563798a.jpg', '', null, '112', '1', '3123', '0', '1543489123');
INSERT INTO `shop_goods` VALUES ('25', 'Kingston/金士顿 SA400S37/120G 固', '186', '198', '1', '1', '2', '1', '200', '15', '20181129\\1cc85d803f4be6d6e0a6ae6035ace9a9.jpg', '', null, '136', '42', '4322', '0', '1543489168');
INSERT INTO `shop_goods` VALUES ('26', 'Haier/海尔 EG10014B39GU1 10公斤大容量、BLDC变频、消毒洗', '2699', '2999', '1', '1', '1', '2', '7777', '21312', '20181129\\5528777bc2ae96bf1b0a9567e4d483f2.jpg', '', null, '22', '1', '4353', '0', '1543489488');
INSERT INTO `shop_goods` VALUES ('27', 'Midea/美的 MB75-eco11W 美居智能 ', '949', '1000', '1', '1', '2', '2', '432', '1232', '20181129\\8dc2fce412faf0439b0c1b9183d884d8.jpg', '', null, '111', '3', '12313', '0', '1543489552');
INSERT INTO `shop_goods` VALUES ('28', 'Leader/统帅 @G7012B16W', '1499', '1799', '1', '1', '2', '2', '231', '188', '20181129\\723dd40ca7d42342d2e358805940d99b.jpg', '', null, '111', '3', '21313', '0', '1543489639');
INSERT INTO `shop_goods` VALUES ('29', '哥弟秋冬修身显瘦女士裤子 ', '299', '349', '1', '1', '2', '1', '78', '50', '20181129\\056afb56003e05370496f8a4e1c136d0.jpg', '', null, '184', '34', '4241', '0', '1543489757');
INSERT INTO `shop_goods` VALUES ('30', '波司登大毛领宽松保暖粉色少女羽绒服', '539', '599', '1', '1', '1', '1', '47', '100', '20181129\\3ab4f93302364d87f74eec32817f546f.jpg', '', null, '66', '54', '32423', '0', '1543489841');
INSERT INTO `shop_goods` VALUES ('31', '【现摘现发】陕西红富士苹果5斤新鲜', '29.9', '33', '1', '1', '1', '2', '9996', '30', '20181129\\986ca8f470fec9f843295981fe47280d.jpg', '', null, '34', '62', '23432', '0', '1543489861');
INSERT INTO `shop_goods` VALUES ('32', '冬季韩版高端紫色羊绒呢大衣 ', '768', '799', '1', '1', '1', '1', '35', '130', '20181129\\990e2f50f457b70572d9039625a53536.jpg', '', null, '63', '33', '3134', '0', '1543489937');
INSERT INTO `shop_goods` VALUES ('33', '女士加厚加绒秋冬款法兰绒妈妈套装', '138', '169', '1', '1', '1', '1', '26', '56', '20181129\\9ed4d8556daeb8b201a3bab0c1783978.jpg', '', null, '71', '40', '5645', '0', '1543490026');
INSERT INTO `shop_goods` VALUES ('34', '半身裙女高腰冬装2018新款丝绒中长款', '279', '319', '1', '1', '2', '1', '20', '110', '20181129\\109b03fcb6b8b6fa5a12d78cd9695610.jpg', '', null, '68', '49', '8888', '0', '1543490096');
INSERT INTO `shop_goods` VALUES ('35', '果滋岛泰国猫山王榴莲新鲜3-13斤水果', '208', '245', '1', '1', '1', '2', '4999', '300', '20181129\\7a87b13f7f15d86347ac3c388509604f.jpg', '', null, '84', '67', '5675', '0', '1543490143');
INSERT INTO `shop_goods` VALUES ('36', '春秋时尚金丝绒大码加绒休闲两件套 ', '188', '219', '1', '1', '1', '1', '21', '39', '20181129\\05a6715144876a444c6dac275fc27c20.jpg', '', null, '186', '68', '34545', '0', '1543490206');
INSERT INTO `shop_goods` VALUES ('37', '苏洪鲜食泰国椰青椰子9个装原箱大号', '82', '100', '1', '1', '1', '1', '183', '4324', '20181129\\76ecfb1f70075885d7b57cf77339e986.jpg', '', null, '85', '76', '31234', '0', '1543490306');
INSERT INTO `shop_goods` VALUES ('38', '唐狮高腰九分韩版显瘦直筒毛边阔腿裤 ', '119', '149', '1', '1', '2', '1', '111', '32', '20181129\\d5fc161490a6372e7a4ff76c31bb94ed.jpg', '', null, '185', '38', '42441', '0', '1543490308');
INSERT INTO `shop_goods` VALUES ('39', '现摘海南椰青9个装新鲜包邮当季水果', '76.8', '88.8', '1', '1', '1', '2', '312', '3141', '20181129\\009e3e7d0f9ad47033cf0546c8041d26.jpg', '', null, '85', '61', '4234', '0', '1543490447');
INSERT INTO `shop_goods` VALUES ('40', '舒绸坊真丝蚕丝性感春秋家居服 ', '598', '669', '1', '1', '1', '2', '1331', '100', '20181129\\cf06c62062d03ba621705562145242f5.jpg', '', null, '72', '64', '6464', '0', '1543490453');
INSERT INTO `shop_goods` VALUES ('41', '毛绒玩具', '29', '33', '1', '1', '1', '1', '89', '27', '20181129\\4db33fa372444793f9eeae8e5d8d55ec.jpg', '', null, '74', '33', '7474', '0', '1543490643');
INSERT INTO `shop_goods` VALUES ('42', '4斤虾鲜活海鲜水产非青岛超大虾基围虾活虾青虾鲜虾白虾海虾冻虾', '129', '155', '1', '1', '2', '1', '1329', '666', '20181129\\d0c0adadd0a16e429e8904a3af1a470e.jpg', '', null, '13', '60', '6456', '0', '1543490681');
INSERT INTO `shop_goods` VALUES ('43', '三顿饭冰鲜三文鱼腩刺身中段拼盘新鲜', '74.88', '88.8', '1', '1', '1', '2', '8887', '765', '20181129\\a259285e3ea86e008fff5fe5f5390c0a.jpg', '', null, '13', '63', '76867', '0', '1543490851');
INSERT INTO `shop_goods` VALUES ('44', '优贝儿童自行车14/16/18寸男女孩童车', '1298', '1488', '1', '1', '1', '1', '21', '200', '20181129\\9f5ce6e85c59a30d9a1f85fe696fc64e.jpg', '', null, '75', '45', '75675', '0', '1543490865');
INSERT INTO `shop_goods` VALUES ('45', '德瑞鱼食锦鲤鱼饲料金鱼上浮育成小颗', '31', '39', '2', '1', '1', '1', '999', '575', '20181129\\8b49d682195bd45014015b8b86faa34f.jpg', '', null, '82', '62', '109991', '0', '1543490946');
INSERT INTO `shop_goods` VALUES ('46', '亲子装冬装2018新款潮全家装秋装一家', '75', '90', '1', '1', '1', '1', '29', '19', '20181129\\cd5e14dfad18673a452d1cfb03a1609d.jpg', '', null, '47', '39', '131333', '0', '1543490954');
INSERT INTO `shop_goods` VALUES ('47', 'MIKIHOUSE日本制获奖款一二段学步', '729', '759', '1', '1', '1', '1', '23', '50', '20181129\\04c57bf4578e7fe19637803b82c4cf9b.jpg', '', null, '50', '46', '14123', '0', '1543491081');
INSERT INTO `shop_goods` VALUES ('48', '蔬洋 小黄瓜圣女果新鲜包邮组合5斤水', '29.8', '39', '1', '1', '1', '2', '88', '20', '20181129\\ae7c4a68b4cc8ebe8a27c1cf6cfe45a8.jpg', '', null, '106', '62', '42341', '0', '1543491131');
INSERT INTO `shop_goods` VALUES ('49', 'belecoo贝丽可高景观婴儿推车可坐躺', '419', '459', '1', '1', '1', '1', '21', '180', '20181129\\a6e39ee0842b64819905e6f18d4e1bb7.jpg', '', null, '54', '55', '32423', '0', '1543491206');
INSERT INTO `shop_goods` VALUES ('50', 'bestborn宝宝保温奶瓶正品婴儿不锈钢', '79', '88', '1', '1', '2', '1', '54', '22', '20181129\\6b85d5204ffc758f380b7bf401e275d7.jpg', '', null, '57', '52', '43242', '0', '1543491312');
INSERT INTO `shop_goods` VALUES ('51', '德国海蒂诗气撑榻榻米橱柜上翻门液压', '19.9', '25', '1', '1', '1', '2', '600', '66', '20181129\\c3c8133cb9682b306f1ac718ab9fc2c4.jpg', '', null, '93', '83', '43242', '0', '1543491326');
INSERT INTO `shop_goods` VALUES ('52', 'gb好孩子婴儿棉柔巾干湿两用宝宝湿纸', '198', '219', '1', '1', '1', '1', '28', '50', '20181129\\489040fd7a459a5b5439336acb7537fa.jpg', '', null, '62', '51', '12313', '0', '1543491421');
INSERT INTO `shop_goods` VALUES ('53', '全友家居沙发皮布沙发小户型经济型沙发组合现代简约沙发73018', '2499', '3999', '1', '1', '1', '2', '300', '2000', '20181129\\5b3592a4fd32a8ee2e49226a38296967.jpg', '', null, '90', '75', '12313', '0', '1543491459');
INSERT INTO `shop_goods` VALUES ('54', '宝贝第一太空城堡0-4-6岁可躺可坐宝', '1480', '1500', '1', '1', '1', '1', '15', '150', '20181129\\eee365a282360184d22ece137a8028f8.jpg', '', null, '56', '67', '13134', '0', '1543491531');
INSERT INTO `shop_goods` VALUES ('55', '德芙巧克力碗装纯黑牛奶礼盒装送女友', '23.9', '25', '1', '1', '1', '1', '121', '32', '20181129\\07a5c1c7bead1d7bda4ce280edee1116.jpg', '', null, '193', '35', '131341', '0', '1543491849');
INSERT INTO `shop_goods` VALUES ('56', 'Aji酵母减盐味苏打饼干咸味饼干整箱批', '40.9', '43', '1', '1', '1', '2', '20', '40', '20181129\\76fb19b106b723275506ecaa24c59f4b.jpg', '', null, '194', '64', '16546', '0', '1543491977');
INSERT INTO `shop_goods` VALUES ('57', '芝华仕头等舱功能沙发 单人沙发布艺 沙发客厅家具k106', '1499', '1699', '1', '1', '2', '1', '700', '31231', '20181129\\ef2a89b7042820c9e2418041c6d0af76.jpg', '', null, '90', '68', '1345', '0', '1543492045');
INSERT INTO `shop_goods` VALUES ('58', '满减【三只松鼠_夏威夷果185g】零食', '35.9', '38', '1', '1', '1', '1', '57', '25', '20181129\\145b0067052990ec983f7b16bfbcfc48.jpg', '', null, '195', '56', '13145', '0', '1543492094');
INSERT INTO `shop_goods` VALUES ('59', '诺斯清生理盐水洗鼻水生理性海水鼻腔喷雾儿童喷雾海盐水洗鼻器', '59', '67', '1', '1', '1', '1', '54', '14', '20181129\\58148407529daa2b000efd64ad84c604.jpg', '', null, '170', '96', '43255', '0', '1543492211');
INSERT INTO `shop_goods` VALUES ('60', '拉菲红酒 拉菲官方正品原装瓶进口巴斯', '528', '528', '1', '1', '1', '1', '200', '189', '20181129\\2be4192c2bd731ffb5253e6f47a07f69.jpg', '', null, '198', '73', '13134', '0', '1543492231');
INSERT INTO `shop_goods` VALUES ('61', '蔺酷雅后现代简约轻奢不锈钢茶几电视', '2500', '3233', '1', '1', '1', '2', '470', '43232', '20181129\\c380cb00d13a332fa95ea64c4432517f.jpg', '', null, '93', '73', '114234', '0', '1543492294');
INSERT INTO `shop_goods` VALUES ('62', '清承堂绿茶2018新茶叶毛尖茶日照高山', '55', '67', '1', '1', '1', '2', '204', '12', '20181129\\238633d3aa74bc8f6902e027cf14ff95.jpg', '', null, '200', '62', '31213', '0', '1543492308');
INSERT INTO `shop_goods` VALUES ('63', '卧室成套家具套装组合简约现代小户型', '9900', '9999', '1', '1', '1', '1', '666', '1888', '20181129\\3daa63c564e131438fa8f14fc767fc40.jpg', '', null, '95', '76', '14231', '0', '1543492380');
INSERT INTO `shop_goods` VALUES ('64', ' 美国进口dermatix倍舒痕胶祛疤膏贴去疤痕修复凝胶淡化伤疤澳洲', '105', '203', '1', '1', '1', '1', '46', '16', '20181129\\442939b5048a5e8951ea159a79157e63.jpg', '', null, '171', '95', '131334', '0', '1543492385');
INSERT INTO `shop_goods` VALUES ('65', '10月伊利安慕希风味酸奶高端原味畅饮', '56', '89', '1', '1', '1', '1', '121', '34', '20181129\\b8081606b91c0f64da1937dbdd1d8e90.jpg', '', null, '202', '54', '1314', '0', '1543492436');
INSERT INTO `shop_goods` VALUES ('66', '周林频谱仪ws-301家用理疗仪旗舰店多功能烤电烤灯保健治疗仪医用', '152', '204', '1', '1', '1', '1', '54', '49', '20181129\\0b9ccb8ec100864f0556cc0a00f9cf37.jpg', '', null, '173', '50', '4141', '0', '1543492476');
INSERT INTO `shop_goods` VALUES ('67', '逸致钢化玻璃电视柜现代简约地柜小户', '2706', '2890', '1', '1', '1', '2', '5353', '2500', '20181129\\412fccf2fa7d99cf9a0a4452c25fa93a.jpg', '', null, '94', '44', '11414', '0', '1543492531');
INSERT INTO `shop_goods` VALUES ('68', '买4省60元 蓓琳娜新货原装进口PDO特', '179', '199', '1', '1', '1', '1', '54', '56', '20181129\\c6b93b13036df4e375bf66a88ee38f4f.jpg', '', null, '203', '55', '14114', '0', '1543492554');
INSERT INTO `shop_goods` VALUES ('69', '邦列安高效单体银抗菌凝胶慢性前列腺炎治疗男科尿频尿急尿不尽男', '402', '504', '1', '1', '1', '1', '42', '46', '20181129\\044782e0566e111a7a055b957eb1eb4c.jpg', '', null, '175', '99', '13134', '0', '1543492690');
INSERT INTO `shop_goods` VALUES ('70', '雪龙瑞斯 五常稻花香米5KG 五常大米', '55', '69', '1', '1', '1', '1', '34', '24', '20181129\\2720a0ad1e4879288ed3b917224c8a3b.jpg', '', null, '204', '68', '22421', '0', '1543492719');
INSERT INTO `shop_goods` VALUES ('71', '倍舒痕硅凝胶15g去疤痕进口疤痕手术修复凝胶膏祛疤膏淡化医用', '203', '304', '1', '1', '1', '1', '82', '15', '20181129\\f3e35c240c11cd5f4b4e9afe941ed0a4.jpg', '', null, '174', '97', '12432', '0', '1543492799');
INSERT INTO `shop_goods` VALUES ('72', '雅兰卧室套餐 舒伯特真皮床+深睡1200', '6599', '7000', '1', '1', '1', '1', '4900', '3123', '20181129\\289ae010da968f619ef6fd35da31e926.jpg', '', null, '95', '43', '13145', '0', '1543492828');
INSERT INTO `shop_goods` VALUES ('73', '舒痕倍舒痕硅凝胶美国进口Dermatix疤痕修复淡疤伤疤膏淡化医用', '505', '664', '1', '1', '1', '1', '56', '52', '20181129\\18ade0f979af3522e42b88523044f9cf.jpg', '', null, '181', '98', '43534', '0', '1543492889');
INSERT INTO `shop_goods` VALUES ('74', '聚法丽莎欧式电视柜大理石茶几组合小户型客厅成套家具套装地柜G2', '2180', '2200', '1', '1', '1', '2', '1333', '1314', '20181129\\4018a1f3899797dcc58e0a35759e62a4.jpg', '', null, '19', '34', '234131', '0', '1543492896');
INSERT INTO `shop_goods` VALUES ('75', '进口丝芙康去疤痕贴剖腹产手术修复硅凝胶凹凸伤疤祛疤膏医用正品', '509', '769', '1', '1', '2', '1', '15', '89', '20181129\\1ff1be8ab9ddc3be52a16bf0bb180224.jpg', '', null, '180', '96', '13423', '0', '1543493022');
INSERT INTO `shop_goods` VALUES ('76', 'One Leaf/一叶子 清颜净肤炭黑面膜 补', '129', '138', '1', '1', '1', '1', '22', '31', '20181129\\eb9bb97cd8f29d7be1d408c01e46d1c8.jpg', '', null, '150', '43', '13134', '0', '1543493088');
INSERT INTO `shop_goods` VALUES ('77', 'Dermatix倍舒痕美国进口祛疤膏医用去疤痕修复硅凝胶贴澳洲舒痕YM', '907', '1109', '1', '1', '2', '1', '9', '48', '20181129\\2fc4018f8e5f1beea59372370c951c15.jpg', '', null, '173', '95', '32432', '0', '1543493111');
INSERT INTO `shop_goods` VALUES ('78', 'Nivea/妮维雅 男士净油精华抗痘洁面炭', '39.9', '42.9', '1', '1', '1', '1', '79', '90', '20181129\\15419cc80b0ce1ff07f49bc91c73c64b.jpg', '', null, '157', '52', '21312', '0', '1543493647');
INSERT INTO `shop_goods` VALUES ('79', '云南白药牙膏 去口臭美白口气清新缓解口腔 健齿护龈3+2套装535G  云南白药牙膏官方旗', '77', '79', '1', '1', '1', '1', '332', '53', '20181129\\d05a09c00c708345d7a090c635450354.jpg', '', null, '162', '34', '12312', '0', '1543493882');
INSERT INTO `shop_goods` VALUES ('80', '¥18.80 日本原装进口LION狮王儿童宝宝婴儿小', '17', '19.8', '1', '1', '2', '2', '23', '22', '20181129\\69fc242a5672f144a5ebbe002ec34802.jpg', '', null, '163', '40', '43243', '0', '1543493958');
INSERT INTO `shop_goods` VALUES ('81', 'GIORGIO ARMANI/阿玛尼 寄情男士', '820', '850', '1', '1', '1', '1', '21', '314', '20181129\\185ea5f0fd02f378aec6c644d800c1a5.jpg', '', null, '153', '59', '13124', '0', '1543494050');
INSERT INTO `shop_goods` VALUES ('82', 'LA MER/海蓝之谜 精萃液 高机能精华', '1100', '1199', '1', '1', '1', '1', '23', '433', '20181129\\158ae1f2f9c7ae340f4a565fb34d6c72.jpg', '', null, '156', '61', '12313', '0', '1543494125');
INSERT INTO `shop_goods` VALUES ('83', 'Shiseido/资生堂 丝蓓绮发膜 ', '99', '199', '1', '1', '1', '1', '222', '42', '20181129\\9a10688bbeacd9ef1d69b2c1afcfc36c.jpg', '', null, '161', '54', '131233', '0', '1543494183');
INSERT INTO `shop_goods` VALUES ('84', '阿道夫 轻柔丝滑洗发乳液系列 ', '88', '89', '1', '1', '1', '1', '889', '33', '20181129\\3c439011e1c2d0ddbbe17a4106d0e78d.jpg', '', null, '160', '76', '12343', '0', '1543494258');
INSERT INTO `shop_goods` VALUES ('85', 'PUMA彪马女鞋刘雯同款蝴蝶结冬季新款厚底松糕鞋休闲鞋板鞋运动鞋', '600', '600', '1', '1', '1', '1', '200', '300', '20181205\\c6755293bbc317838e57037d546c23b7.jpg', '20181205\\2be4a21f6f82d6356755a317748cfd7b.jpg|20181205\\c9aaed11afec86480fca8ec22b84ac0e.jpg|20181205\\ced0a6226dc580da73d3efa9d4dfeaf8.jpg|', null, '41', '27', '1256', '0', '1543997239');
INSERT INTO `shop_goods` VALUES ('86', 'PUMA彪马官方 女子休闲鞋 SUEDE Platform CORE 363559 米白色', '799', '799', '1', '1', '1', '1', '300', '300', '20181205\\f3f361f0d1005f72e150a3e4e4b9a16b.jpg', '20181205\\9c0b5404ff915ddd65714f723d8170a6.jpg|20181205\\8a15f6e53b67c09cefba6dc4f7f0bb7e.jpg|20181205\\fd0f0067780ed3bcac51a0dd51d6df09.jpg|20181205\\5bc0301bNd67ff017.jpg|', null, '41', '27', '2345', '0', '1543998649');
INSERT INTO `shop_goods` VALUES ('87', '2018冬装新款口袋工装棉服女宽松bf印花外套连帽加厚棉衣潮', '268', '268', '1', '1', '2', '1', '500', '300', '20181205\\70259b66c796859a458d6866aa5dc0cf.jpg', '20181205\\64ae8a7c74592a037cad2a841ca9b01c.jpg|20181205\\99c4d4d81a875596cbcc98357d77e4bd.jpg|20181205\\3423eae6835ecf23fea87f4ec7169f7f.jpg|20181205\\d4f5cf04f9821ec2a4852074c8ce7e78.jpg|', ' ', '65', '53', '1324', '0', '1544010362');
INSERT INTO `shop_goods` VALUES ('88', '慵懒风上衣秋装2018新款韩版宽松加厚ins外套女冬港风加绒卫衣潮', '48.48', '50', '1', '1', '2', '1', '20', '100', '20181205\\45f2b931750e5f648993229ae4e2ea91.jpg', '20181205\\6e64e2b41084dec9b22814f63196a768.jpg|20181205\\b87f42bd4607709ec61a66629036af4f.jpg|20181205\\e32b85bd6094feb1ae568d3ffeae3420.jpg|20181205\\94bc122430cc5ba6341b0daec2998c3f.jpg|', ' ', '40', '57', '1312', '0', '1544023184');
INSERT INTO `shop_goods` VALUES ('89', '网红慵懒风套头毛衣女秋冬2018新款韩版宽松加厚半高领针织衫上衣', '59.98', '60', '1', '1', '2', '1', '298', '80', '20181205\\411bfbdd22ed14a87f3dcd8f595cafa1.jpg', '20181205\\d4deef9c3a4fe53972d6811793ec51e7.jpg|20181205\\f6aec2eaa1a5ed730957b57d7773656b.jpg|20181205\\ac719ec6277a94ebf6a75c69b7c4182c.jpg|20181205\\fe02312235abfc8d305100fd2704e49f.jpg|', ' ', '40', '57', '54353', '0', '1544023627');
INSERT INTO `shop_goods` VALUES ('90', '冬季韩版中长款复古BF风宽松仿羊羔毛加厚翻领学生棉衣棉服外套女', '78.98', '80', '1', '1', '2', '1', '4', '100', '20181206\\c7359c2a94080b7f633b7a5ec053eb37.jpg', '20181206\\f551bc87875e867ea7e2a506405a2fbf.jpg|20181206\\2727899f4dad829c3c6283f04ff0d7a8.jpg|20181206\\fe9f25a6ea448b12f85e4e8697235087.jpg|20181206\\648aa26d54b2d87ebeda42ac44bd06f9.jpg|', ' ', '64', '103', '4234', '0', '1544058262');
INSERT INTO `shop_goods` VALUES ('91', '青蔷薇2018冬季新款茧型bf工装棉衣女连帽学生宽松棉服夹克外套', '209.99', '210', '1', '1', '2', '1', '195', '80', '20181206\\cfee5f24b1505d922e9a3c9423c66203.jpg', '20181206\\2d8bf0be11bde5e677422880d85cf303.jpg|20181206\\2468dae4a6fca14984e47d6fb2762b11.jpg|20181206\\82ddd195ba95c76f444482d8672aee8c.jpg|20181206\\3db1f6409289f21613eab1393af767fd.jpg|', ' ', '65', '103', '242', '0', '1544059092');
INSERT INTO `shop_goods` VALUES ('92', 'Huawei/华为 nova 2s全网通4G智能手机 6G+128G /6G+64G 正品', '2050', '2050', '1', '1', '1', '1', '100', '2000', '20181206\\51a4394aca0f6b9861ebacfa37a90ec2.jpg', '20181206\\c6f1cf38fdd98e6ddeb25127fcf0954f.jpg|20181206\\ee8ac3a1ee8a5d80bf1d3ab1fade2ac9.jpg|20181206\\0354c863386bd3841428659de2930224.jpg|20181206\\a74410d0a13867a84edfa4b1b44586bd.jpg|', ' ', '126', '37', '543', '0', '1544062657');
INSERT INTO `shop_goods` VALUES ('94', '羽绒服女中长款2018新款大毛领连帽宽松加厚棉服女外套棉服', '571', '571', '1', '1', '1', '2', '298', '30', '20181206\\fb51320c95557f9b45b1f518e0bdde14.jpg', '20181206\\c9acbfdebf05baf12ade40a5d61550b1.jpg|20181206\\cf2e5392bf8d430fc766d7e846ae6dec.jpg|20181206\\d9bef302808cbe7d7c7cda1826390159.jpg|20181206\\cee606dc07a6bbc22f5826c8c80e01f9.jpg|', ' ', '66', '103', '43543', '0', '1544095652');
INSERT INTO `shop_goods` VALUES ('95', 'PUMA彪马官方 刘雯同款 女子厚底休闲鞋 Vikky 365314', '649', '649', '1', '1', '1', '1', '499', '500', '20181207\\a924ae09511128ccf849347703f26186.jpg', '20181207\\169dda2e79cfe06679c1267f81757d69.jpg|20181207\\bee746574a0fc7bd7681db7f298cbf7b.jpg|20181207\\79ffa2b2fc6fcaa79ba1d5e171455cca.jpg|20181207\\6af25ad492902047e626c2a6f141d530.jpg|', ' ', '230', '108', '232132', '0', '1544148238');
INSERT INTO `shop_goods` VALUES ('96', 'PUMA彪马官方 刘雯同款 女子厚底休闲鞋 Platform 366707', '869', '869', '1', '1', '1', '2', '200', '600', '20181207\\2c16831408b3681a803644fca1fa5535.jpg', '20181207\\c3aef840102f660efbccf9e42713505d.jpg|20181207\\c8ebe65d5b90648339a54c7523a00a08.jpg|20181207\\375d05991f0800300733168965a5d7b9.jpg|20181207\\dbf5588b14bc6fa5fff3bc74b97c791d.jpg|', ' ', '230', '108', '345', '0', '1544148646');
INSERT INTO `shop_goods` VALUES ('97', 'PUMA彪马官方 女子休闲鞋 SUEDE Heart Satin 362714', '699', '699', '1', '1', '1', '2', '200', '600', '20181207\\287213a67ae131e0bf078349beb6e815.jpg', '20181207\\5172a6b9a3c9b978fbf0673e95e80f2c.jpg|20181207\\4b8ef4498c8bf3350baeae33a7a98ff5.jpg|20181207\\6ea507db534c754f90f137b60ff04bf1.jpg|20181207\\9945d4635ccb53604816c64d50eda10f.jpg|', ' ', '230', '108', '53535', '1', '1544151927');
INSERT INTO `shop_goods` VALUES ('98', 'PUMA彪马官方 娜扎同款 女子厚底休闲鞋 Platform Trace 367980', '869', '869', '1', '1', '1', '2', '184', '700', '20181207\\O1CN011hHSXCSYP5TBZKw_!!734584252.jpg', '20181207\\265d4c401a3e61df327447adbf457d44.jpg|20181207\\a0f37f788f91e3548589c2dd7a88e66e.jpg|20181207\\a2b54b242e8593492caf5db347fef460.jpg|20181207\\31bea75f89be84f3c9065bef2a225c76.jpg|', ' ', '230', '108', '343423', '1', '1544152499');
INSERT INTO `shop_goods` VALUES ('99', 'PUMA彪马官方 娜扎同款女子厚底休闲鞋 Platform 367452', '839', '839', '1', '1', '1', '2', '200', '700', '20181207\\ca0f1379fc3f29d25501fe4b72651413.jpg', '20181207\\e997b28ef50274b16f9c590de5143fac.jpg|20181207\\e8174e6957fbffc328f5682f62c80280.jpg|20181207\\d53a5282409f8aeb428c9a488483c82e.jpg|20181207\\3a80712bf5237765b6d4db5539c23126.jpg|', ' ', '230', '108', '5453', '1', '1544155186');
INSERT INTO `shop_goods` VALUES ('100', 'PUMA彪马官方 女子休闲鞋 SUEDE Platform ANIMAL 365109', '899', '899', '1', '1', '1', '1', '199', '500', '20181207\\f5756aa27afa98be8ff37f91b9cb65c8.jpg', '20181207\\b7bd0447667e9c419ecb0b2813169cc4.jpg|20181207\\f45c4085b9064cb1ef0f8ea6349b0226.jpg|20181207\\ef934511e1a7d9625470ea7452eb5762.jpg|20181207\\dfb05b4750f4992428daa186dc9418b3.jpg|', ' ', '230', '108', '24324', '1', '1544162058');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(30) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL,
  `order_amount` float DEFAULT NULL COMMENT '订单总金额',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式：支付宝支付1，货到付款2，银行卡转账3',
  `pay_status` tinyint(4) DEFAULT '1' COMMENT '支付状态：待支付1，已支付2',
  `order_message` varchar(100) DEFAULT NULL COMMENT '订单留言',
  `order_status` tinyint(4) DEFAULT '1' COMMENT '订单状态：1：未发货，2：已发货，3：已签收',
  `is_order` varchar(255) DEFAULT '1' COMMENT '确认订单：1:未确认，2：已确认，3：已取消',
  `pay_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('1', '155133358056774', '1', '599', null, '1', null, '1', '1', null, '1551333580');
INSERT INTO `shop_order` VALUES ('2', '155150917634422', '1', '899', null, '1', null, '1', '1', null, '1551509176');

-- ----------------------------
-- Table structure for shop_order_address
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_address`;
CREATE TABLE `shop_order_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `add_city` varchar(20) DEFAULT NULL,
  `consignee_name` varchar(255) DEFAULT NULL,
  `consignee_tel` char(255) DEFAULT NULL,
  `detailed_address` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `is_sell` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_address
-- ----------------------------
INSERT INTO `shop_order_address` VALUES ('1', '1', '1', '北京 昌平 沙河镇', '兰聪', '13133145415', '经管学院', '1551333592', '1', '1');

-- ----------------------------
-- Table structure for shop_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_selfprice` decimal(10,0) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `goods_status` tinyint(4) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_detail
-- ----------------------------
INSERT INTO `shop_order_detail` VALUES ('1', '1', '1', '3', '锦贝传说螺钿漆器结婚礼物首饰盒木质', '599', '20181129\\5f80c655572a5b4c1688649c13564662.jpg', '1', '1', '1551333580', '155133358056774');
INSERT INTO `shop_order_detail` VALUES ('2', '1', '2', '100', 'PUMA彪马官方 女子休闲鞋 SUEDE Platform ANIMAL 365109', '899', '20181207\\f5756aa27afa98be8ff37f91b9cb65c8.jpg', '1', '1', '1551509176', '155150917634422');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `user_pwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13133145415', '96e79218965eb72c92a549dd5a330112');
