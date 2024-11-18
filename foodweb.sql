/*
Navicat MySQL Data Transfer

Source Server         : db_movies02
Source Server Version : 80100
Source Host           : localhost:3306
Source Database       : foodweb

Target Server Type    : MYSQL
Target Server Version : 80100
File Encoding         : 65001

Date: 2024-05-04 18:42:57
*/


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` char(32) NOT NULL COMMENT '用户ID',
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `identity` varchar(6) NOT NULL DEFAULT '用户' COMMENT '身份',
  `phone` char(11) NOT NULL COMMENT '手机号',
  `admin_avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `email` varchar(120) DEFAULT '' COMMENT '邮箱',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_admin_name_uindex` (`name`),
  UNIQUE KEY `t_admin_email_uindex` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('00000000000000000000000000000001', 'admin', 'admin', '管理员', '13245670789', 'images/用户头像.jpg', '123@qq.com', '2024-04-11 22:37:06', '2024-04-11 22:37:12');
INSERT INTO `t_admin` VALUES ('00000000000000000000000000000002', 'admin02', 'admin', '管理员', '15348965237', 'images/用户头像.jpg', '158@qq.com', '2024-04-15 22:20:47', '2024-04-16 20:03:33');
INSERT INTO `t_admin` VALUES ('00000000000000000000000000000003', 'admin03', 'admin', '管理员', '13245670789', 'images/用户头像.jpg', '456@qq.com', '2024-04-15 22:20:49', '2024-04-15 22:20:50');

-- ----------------------------
-- Table structure for t_classic_food01
-- ----------------------------
DROP TABLE IF EXISTS `t_classic_food01`;
CREATE TABLE `t_classic_food01` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '还没有名字哦',
  `src` varchar(255) NOT NULL DEFAULT 'images/no_image.jpg',
  `detail_id` int NOT NULL DEFAULT '0' COMMENT '菜品详情id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='美食推荐最经典的湘菜';

-- ----------------------------
-- Records of t_classic_food01
-- ----------------------------
INSERT INTO `t_classic_food01` VALUES ('1', '湘西腊肉', 'images/01-湘西腊肉.jpg', '0');
INSERT INTO `t_classic_food01` VALUES ('2', '剁椒鱼头', 'images/02-剁椒鱼头.jpg', '0');
INSERT INTO `t_classic_food01` VALUES ('3', '毛式红烧肉', 'images/03-毛氏红烧肉.jpg', '0');
INSERT INTO `t_classic_food01` VALUES ('4', '常德酱板鸭', 'images/04-常德酱板鸭.jpg', '0');
INSERT INTO `t_classic_food01` VALUES ('5', '口味虾', 'images/05-口味虾.jpg', '0');

-- ----------------------------
-- Table structure for t_food_map
-- ----------------------------
DROP TABLE IF EXISTS `t_food_map`;
CREATE TABLE `t_food_map` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `name` varchar(50) NOT NULL COMMENT '美食名称',
  `src` varchar(255) NOT NULL DEFAULT 'no_image.jpg' COMMENT '美食图片地址',
  `description` varchar(255) NOT NULL DEFAULT '暂时还没有介绍哦！' COMMENT '美食信息详细介绍',
  `star` int NOT NULL DEFAULT '1' COMMENT '美食推荐星级',
  `pre_price` double NOT NULL DEFAULT '0' COMMENT '原价',
  `price` double NOT NULL DEFAULT '0' COMMENT '现价',
  `addressId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='美食地图详细信息表';

-- ----------------------------
-- Records of t_food_map
-- ----------------------------
INSERT INTO `t_food_map` VALUES ('1', '长沙臭豆腐', 'images/37-长沙臭豆腐.jpg', '外皮酥脆，内里嫩滑多汁', '4', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('2', '糖油粑粑', 'images/25-糖油粑粑.jpg', '外皮金黄酥脆，内里软糯香甜，甜而不腻', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('3', '湖南米粉', 'images/20-湖南米粉.jpg', '腻爽滑、筋道有弹性的口感', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('4', '酱板鸭', 'images/04-常德酱板鸭.jpg', '味道独特，香辣可口，鸭肉鲜嫩，口感滑爽', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('5', '姊妹团子', 'images/menu_img_5.jpg', '精致的造型和独特的口感', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('6', '辣椒炒肉', 'images/menu_img_6.jpg', '香辣可口，餐桌常客', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('7', '龙脂猪血', 'images/44-龙脂猪血.jpg', '口感鲜香爽口，有如龙脂凤肝之细嫩', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('8', '剁椒鱼头', 'images/02-剁椒鱼头.jpg', '色泽红亮、味浓、肉质细嫩，口感肥而不腻、鲜辣适口', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('9', '口味虾', 'images/05-口味虾.jpg', '麻辣鲜香、色泽红亮、质地滑嫩、滋味香辣', '5', '50', '40', '1');
INSERT INTO `t_food_map` VALUES ('10', '湘乡烘糕', 'images/98-湘乡烘糕.jpg', '象牙色、落口溶、火炙香、清纯爽口，且营养丰富', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('11', '毛氏红烧肉', 'images/03-毛氏红烧肉.jpg', '色泽金黄，油而不腻，口感香润可口，且营养丰富', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('12', '湘味啤酒鸭', 'images/99-湘味啤酒鸭.jpg', '结合了啤酒的清香味与鸭肉的鲜美，口感鲜香，肉质软烂', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('13', '乡里腊肉', 'images/75-湘西腊肉.jpg', '色泽红亮，口感坚韧有嚼劲，香气浓郁，令人垂涎欲滴', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('14', '腊八豆', 'images/104-腊八豆.jpg', '口感鲜美，咸甜适中，豆香浓郁，营养丰富', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('15', '桂花糯米藕', 'images/103-桂花糯米藕.jpg', '除了美味可口，桂花糯米藕还融合了养生食材', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('16', '孜然牛肉', 'images/102-孜然牛肉.jpg', '以牛肉为主要食材，以孜然为调料制作而成的美食，口味咸鲜麻辣，非常美味', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('17', '油爆辣子鸡', 'images/101-油爆辣子鸡.jpg', '麻辣的口感和独特的香味', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('18', '红烧鱼头', 'images/100-红烧鱼头.jpg', '以其鲜嫩的鱼肉和浓郁的汤汁而著称，口感鲜美，营养丰富，深受食客喜爱', '5', '45', '30', '2');
INSERT INTO `t_food_map` VALUES ('19', '常宁凉粉', 'images/111-常宁凉粉.jpg', '酸甜可口，质感清澈晶莹', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('20', '茅市烧饼', 'images/62-茅市烧饼.jpg', '皮酥、清晰多层、味道香浓酥软、入口即溶、馅心冰甜', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('21', '排楼汤圆', 'images/110-排楼汤圆.jpg', '不同于传统甜汤圆，其馅料是大米、葱花、白胡椒粉、盐等，色白清亮，口感微辣', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('22', '渣江假羊肉', 'images/109-渣江假羊肉.jpg', '虽用猪肉、红薯淀粉制成，但带有羊肉独特的香味，让人误认为是在吃羊肉', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('23', '衡阳唆螺', 'images/107-衡阳唆螺.jpg', '口感鲜美，辣而不燥，是夏日消暑的最佳小吃之一', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('24', '衡阳蒸菜', 'images/108-衡阳蒸菜.jpg', '做法独特，味道鲜美，营养丰富，被誉为“南方蒸菜之乡', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('25', '玉麟香腰', 'images/105-玉麟香腰.jpg', '层层堆砌，造型美观，色彩艳丽，口感层次丰富，咸甜鲜香，味美可口', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('26', '衡阳鱼粉', 'images/61-衡阳鱼粉.jpg', '味美、清淡营养，汤汁浓稠，食后爽心养胃，具有很强的饱感', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('27', '常宁凉粉', 'images/111-常宁凉粉.jpg', '酸甜可口，质感清澈晶莹', '5', '35', '20', '3');
INSERT INTO `t_food_map` VALUES ('28', '岳阳三蒸', 'images/31-浏阳蒸菜宴.jpg', '不仅美味可口，而且营养丰富。它富含蛋白质、维生素和矿物质等多种营养成分，能够满足人体对营养的需求', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('29', '醋水豆腐', 'images/116-醋水豆腐.jpg', '口感鲜美，韧劲十足，可炒、可蒸、可焖、可炖、可下火锅，食用更健康安全', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('30', '平江酱干', 'images/69-平江酱干.jpg', '以其悠久的历史、独特的制作工艺和美味的口感，成为了平江县乃至湘鄂赣边区的一张美食名片', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('31', '蝴蝶过海', 'images/65-蝴蝶过海.jpg', '以鱼为主要原料，鱼片鲜嫩，口感滑嫩，调料味道鲜香辣味浓郁', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('32', '君山虾饼', 'images/115-君山虾饼.jpg', '其色泽金黄，焦脆的外壳下藏着鲜嫩的虾肉。其口感层次分明，外酥里嫩，香气扑鼻', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('33', '南湖醋溜鱼', 'images/114-南湖醋溜鱼.jpg', '不仅味道美，而且营养丰富，鱼肉富含优质蛋白质，对身体有很好的滋补作用', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('34', '君山银针鸡片', 'images/70-君山银针鸡片.jpg', '其特色在于将君山银针茶与鸡肉巧妙地结合在一起，口感鲜美且富有创意', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('35', '华容团子', 'images/113-华容团子.jpg', '口感软糯、味道鲜美、营养丰富，馅料也非常丰富', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('36', '石磨豆花', 'images/112-石磨豆花.jpg', '口感细腻、爽滑，豆香浓郁，入口即化', '5', '50', '45', '4');
INSERT INTO `t_food_map` VALUES ('38', '血豆腐', 'images/122-血豆腐.jpg', '由新鲜猪血和豆腐制成，外形红亮诱人，口感鲜嫩可口', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('39', '魔芋干', 'images/121-魔芋干.jpg', '非常有嚼劲的小零嘴，有点辣但是很上头', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('40', '熏肉', 'images/86-湘西腊肉攻略04.jpg', '具有独特的香味和味道，是张家界的特色美食之一', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('41', '手工豆腐', 'images/201-手工豆腐.jpg', '以豆腐口感细腻、口感鲜美而著名，是当地人最爱的美食之一', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('42', '岩耳炖土鸡', 'images/120-岩耳炖土鸡.jpg', '汤汁浓郁，口感滑嫩，肉质鲜美', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('43', '张家界三下锅', 'images/119-张家界三下锅.jpg', '将腊肉、豆腐、萝卜一锅炖制而成，口感偏重，又咸又辣，是张家界旅游必吃的招牌菜', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('44', '土家腊肉', 'images/82-湘西腊肉攻略图.jpg', '选用当地优质猪肉为原料，经过精心挑选、切割和处理后，再加入多种调味料进行腌制，口感鲜美', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('45', '土家粉蒸肉', 'images/118-土家粉蒸肉.jpg', '其香奇醇其味奇美，鲜香，色香味俱全，是土家一大特色小吃', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('46', '张家界凉面', 'images/117-张家界凉面.jpg', '调料丰富多样，口感鲜美', '5', '65', '55', '5');
INSERT INTO `t_food_map` VALUES ('47', '梅山板鸭', 'images/124-梅山板鸭.jpg', '皮酥、骨脆、肉嫩、咸淡适中，瘦肉甘香，肥肉不腻，口感独特', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('48', '杯子糕', 'images/123-杯子糕.jpg', '这是一种貌似元宝的糕点，大小与婴儿拳头差不多，颜色透亮，口感香软，是娄底地区的传统美食', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('49', '三合汤', 'images/125-三合汤.jpg', '新化三合汤是湖南新化的特色小吃之一，将新鲜牛肉、牛肚和牛血一起煮熟，再加入调料，口感麻辣鲜香，深受年轻人喜爱', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('50', '白溪腐乳', 'images/126-白溪腐乳.jpg', '娄底地区的一款特色调味品，选用白溪的水豆腐为原材料，经自然发酵后制成，味道鲜美独特', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('51', '雪花丸子', 'images/127-雪花丸子.jpg', '这是娄底新化县的传统名菜，以糯米和五花肉为主要食材，口感软糯香甜，鲜美可口', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('52', '水车鱼冻', 'images/127-水车鱼冻.jpg', '鱼冻晶莹剔透，口感劲道，鲜美无比', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('53', '南粉合菜', 'images/128-南粉合菜.jpg', '以红薯粉丝为主要食材，搭配各种蔬菜和鸡汤烹饪而成，寓意着和谐和睦', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('54', '水车板鸭', 'images/04-常德酱板鸭.jpg', '享有“北烤鸭、南板鸭”的美誉。其独特的制作工艺和口感让人回味无穷', '5', '50', '40', '6');
INSERT INTO `t_food_map` VALUES ('55', '新化猪血粑', 'images/58-猪血丸子.jpg', '这是一道具有浓厚地域特色的菜肴，深受当地人和游客的喜爱', '5', '50', '40', '6');

-- ----------------------------
-- Table structure for t_food_map_address
-- ----------------------------
DROP TABLE IF EXISTS `t_food_map_address`;
CREATE TABLE `t_food_map_address` (
  `addressId` int NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_food_map_address
-- ----------------------------
INSERT INTO `t_food_map_address` VALUES ('1', '长沙');
INSERT INTO `t_food_map_address` VALUES ('2', '湘潭');
INSERT INTO `t_food_map_address` VALUES ('3', '衡阳');
INSERT INTO `t_food_map_address` VALUES ('4', '岳阳');
INSERT INTO `t_food_map_address` VALUES ('5', '张家界');
INSERT INTO `t_food_map_address` VALUES ('6', '娄底');

-- ----------------------------
-- Table structure for t_meal_table01
-- ----------------------------
DROP TABLE IF EXISTS `t_meal_table01`;
CREATE TABLE `t_meal_table01` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '时间段名称',
  `suggested_time` varchar(20) DEFAULT NULL COMMENT '建议时间段',
  `src` varchar(255) NOT NULL DEFAULT 'images/no_image.jpg' COMMENT '时间段食物图位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='美食推荐三餐表';

-- ----------------------------
-- Records of t_meal_table01
-- ----------------------------
INSERT INTO `t_meal_table01` VALUES ('1', '早餐', '07:00 - 08:00', 'images/81-早餐.jpg');
INSERT INTO `t_meal_table01` VALUES ('2', '中餐', '11:30 - 13:00', 'images/80-午餐.jpg');
INSERT INTO `t_meal_table01` VALUES ('3', '晚餐', '17:30 - 18:30', 'images/79-晚餐.jpg');

-- ----------------------------
-- Table structure for t_more_food03
-- ----------------------------
DROP TABLE IF EXISTS `t_more_food03`;
CREATE TABLE `t_more_food03` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '还没有命名哦' COMMENT '地方特色美食',
  `detail_id` int NOT NULL DEFAULT '0' COMMENT '详细页面id绑定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='美食地图更多地方特色';

-- ----------------------------
-- Records of t_more_food03
-- ----------------------------
INSERT INTO `t_more_food03` VALUES ('1', '常德桃源土鸡', '0');
INSERT INTO `t_more_food03` VALUES ('2', '株洲攸县香干', '0');
INSERT INTO `t_more_food03` VALUES ('3', '永州九嶷山兔', '0');
INSERT INTO `t_more_food03` VALUES ('4', '益阳安化砣粉', '0');
INSERT INTO `t_more_food03` VALUES ('5', '郴州酿豆腐', '0');
INSERT INTO `t_more_food03` VALUES ('6', '怀化通道侗家腌肉', '0');

-- ----------------------------
-- Table structure for t_operator
-- ----------------------------
DROP TABLE IF EXISTS `t_operator`;
CREATE TABLE `t_operator` (
  `id` char(32) NOT NULL COMMENT '用户ID',
  `operator_name` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `identity` varchar(6) NOT NULL DEFAULT '用户' COMMENT '身份',
  `phone` char(11) NOT NULL COMMENT '手机号',
  `operator_avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `email` varchar(120) DEFAULT '' COMMENT '邮箱',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_operator_operator_name_uindex` (`operator_name`),
  UNIQUE KEY `t_operator_email_uindex` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_operator
-- ----------------------------
INSERT INTO `t_operator` VALUES ('6d390d28dc2e46a3b419548d21fbb988', 'zs', '12345', '经营者', '18541256325', 'images/用户头像.jpg', '1233@qq.com', '2024-04-18 21:49:10', '2024-04-18 21:49:10');
INSERT INTO `t_operator` VALUES ('b0db2436a3c34ecfa5ac9bdc7908138c', 'ww2', '123', '经营者', '15845679856', 'images/用户头像.jpg', '124@qq.com', '2024-04-13 21:19:38', '2024-04-13 21:19:38');
INSERT INTO `t_operator` VALUES ('c152b83c7472461d8db074e5b8b7f677', 'qq', '1234', '经营者', '15348965237', 'images/用户头像.jpg', '755@qq.com', '2024-04-12 17:41:15', '2024-04-16 19:41:09');

-- ----------------------------
-- Table structure for t_promotion_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_promotion_menu`;
CREATE TABLE `t_promotion_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '菜品id\n',
  `name` varchar(50) NOT NULL COMMENT '菜品名',
  `src` varchar(255) NOT NULL DEFAULT 'images/no_image.jpg' COMMENT '菜品图位置',
  `detail_id` int NOT NULL DEFAULT '0' COMMENT '与美食攻略联系id--- 0为未绑定',
  `description` varchar(255) NOT NULL DEFAULT '还没有详细描述内容' COMMENT '菜品描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='餐厅推广页面菜品';

-- ----------------------------
-- Records of t_promotion_menu
-- ----------------------------
INSERT INTO `t_promotion_menu` VALUES ('1', '口味吓', 'images/05-口味虾.jpg', '0', '口味虾，也被称为麻辣小龙虾、长沙口味虾或香辣小龙虾，是湖南省的一道传统名菜，属于湘菜系。这道菜以小龙虾为主要食材，口味麻辣鲜香,色泽红亮,质地滑嫩，滋味香辣。');
INSERT INTO `t_promotion_menu` VALUES ('2', '红烧鱼头', 'images/100-红烧鱼头.jpg', '0', '红烧鱼头是一道色香味俱佳的汉族传统名吃,具有微辣、咸鲜、香甜的口感。');
INSERT INTO `t_promotion_menu` VALUES ('3', '红烧米豆腐', 'images/30-红烧米豆腐.jpg', '0', '红烧米豆腐不仅口感鲜美,而且营养丰富。米豆腐富含蛋白质、维生素和矿物质等多种营养成分,适量食用可以补充营养、促进生长发育。');
INSERT INTO `t_promotion_menu` VALUES ('4', '浏阳蒸菜宴', 'images/31-浏阳蒸菜宴.jpg', '0', '浏阳蒸菜宴是湖南省浏阳市的一种传统烹饪方式,主要以蒸为主。烹饪手法，结合了湘菜的鲜、香、辣、酸等特点，形成了独特的风味');
INSERT INTO `t_promotion_menu` VALUES ('5', '雪花丸子', 'images/127-雪花丸子.jpg', '0', '雪花丸子是一道具有独特风味的美食,主要原料包括五花肉、糯米以及其他一些辅助材料。它以其甜酥软嫩的口感和形似雪霜的外观而深受人们喜爱。');
INSERT INTO `t_promotion_menu` VALUES ('6', '小炒黄牛肉', 'images/32-小炒黄牛肉.jpg', '0', '小炒黄牛肉是一道美味可口的经典湘菜,其口感细嫩、肉质紧实、肉味丰富香鲜。');
INSERT INTO `t_promotion_menu` VALUES ('7', '擂辣椒皮蛋', 'images/33-擂辣椒皮蛋.jpg', '0', '这道菜的特点是将辣椒与皮蛋完美融合，口感鲜嫩且椒香四溢。擂椒的辣味能够中和皮蛋的咸度，使得口感更加丰富，同时激发食欲，增加食物的风味。');
INSERT INTO `t_promotion_menu` VALUES ('8', '辣椒炒肉', 'images/34-辣椒炒肉.jpg', '0', '辣椒炒肉是一道色香味俱佳的家常菜肴，以辣椒和猪肉为主要食材，口感鲜美且营养丰富。');
INSERT INTO `t_promotion_menu` VALUES ('9', '石锅鱼', 'images/35-石锅鱼.jpg', '0', '石锅不仅具有独特的烹饪效果，还富含对人体有益的铁离子元素，具有防癌、防老祛皱、润肤等作用。石锅炖出的鱼具有明目、养颜、健脑的作用。');
INSERT INTO `t_promotion_menu` VALUES ('10', '永州血鸭', 'images/36-永州血鸭.jpg', '0', '永州血鸭是湘菜系中的一道特色佳肴，以其独特的口感和丰富的营养价值深受人们喜爱。');
INSERT INTO `t_promotion_menu` VALUES ('11', '石磨豆花', 'images/112-石磨豆花.jpg', '0', '石磨豆花是四川及重庆地区常见的汉族小吃，它采用嫩豆花的吃法，与特制的豆花蘸水和大米饭一同食用，口感鲜嫩可口，因此在餐饮文化中占据一席之地。');
INSERT INTO `t_promotion_menu` VALUES ('12', '南湖醋溜鱼', 'images/114-南湖醋溜鱼.jpg', '0', '南湖醋溜鱼是一道具有独特风味的菜品，其特点在于酸甜的口感和鲜嫩的鱼肉。');

-- ----------------------------
-- Table structure for t_restaurant_promotion
-- ----------------------------
DROP TABLE IF EXISTS `t_restaurant_promotion`;
CREATE TABLE `t_restaurant_promotion` (
  `id` char(32) NOT NULL COMMENT '餐厅id',
  `name` varchar(50) NOT NULL COMMENT '餐厅名字',
  `src` varchar(255) DEFAULT 'images/no_image.jpg' COMMENT '餐厅图片地址，默认为感叹号，未上传',
  `phone` varchar(11) NOT NULL COMMENT '餐厅联系电话',
  `email` varchar(120) NOT NULL COMMENT '餐厅联系邮箱',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `weight` int NOT NULL DEFAULT '1' COMMENT '显示权重，权重越高，显示越在前，仅受管理员操作',
  `scan_more` varchar(255) DEFAULT NULL COMMENT '查看更多餐厅信息',
  `star` int NOT NULL DEFAULT '1' COMMENT '餐厅推荐星级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='餐厅推广页面信息表';

-- ----------------------------
-- Records of t_restaurant_promotion
-- ----------------------------
INSERT INTO `t_restaurant_promotion` VALUES ('34c237c4068f4f12a3bcea855cc1122a', '笨萝卜浏阳菜', 'images/96-笨萝卜浏阳菜07.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:44', '2024-04-23 22:14:08', '2', null, '4');
INSERT INTO `t_restaurant_promotion` VALUES ('34c237c4068f4f12a3bdea855cc1122a', '笨萝卜浏阳菜02', 'images/96-笨萝卜浏阳菜07.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:46', '2024-04-23 22:14:10', '1', null, '3');
INSERT INTO `t_restaurant_promotion` VALUES ('81b20c046dba4cbeba46a3d72eb3dae4', '费大厨02', 'images/91-费大厨02.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:52', '2024-04-23 22:14:12', '1', null, '2');
INSERT INTO `t_restaurant_promotion` VALUES ('81b20c046dba4cbeba46acd72eb3dae4', '费大厨', 'images/91-费大厨02.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:48', '2024-04-23 22:14:10', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('95cb10a49ec744b0620292327e5b5cb4', '火宫殿02', 'images/92-火宫殿03.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:51', '2024-04-23 22:14:12', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('95cb10a49ec744b0820292327e5b5cb4', '火宫殿', 'images/92-火宫殿03.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:50', '2024-04-23 22:14:14', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('9ddb28e844cd418e8a5234eb80c85d11', '毛家饭店', 'images/97-毛家饭店08.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:47', '2024-04-23 22:14:17', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('9ddb28e844cd418e8a523peb80c85d11', '毛家饭店02', 'images/97-毛家饭店08.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:56', '2024-04-23 22:14:15', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('a18547e9266447719a622f77b18545da', '炊烟小炒黄牛肉', 'images/90-炊烟小炒黄牛肉01.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:55', '2024-04-23 22:14:18', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('a18547e9266447719a622f77b28545da', '炊烟小炒黄牛肉02', 'images/90-炊烟小炒黄牛肉01.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:55', '2024-04-23 22:14:19', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('c32f9487c0d046938f66308ce034fde2', '我家小院02', 'images/94-我家小院-05.jpg', '18701012323', 'info@163.com', '2024-04-23 22:14:02', '2024-04-23 22:14:22', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('c32f9487c0d046938f66338ce034fde2', '我家小院', 'images/94-我家小院-05.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:58', '2024-04-23 22:14:21', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('ce597d5d95044e30916185bad49b1f7c', '严告夜宵02', 'images/95-严告夜宵06.jpg', '18701012323', 'info@163.com', '2024-04-23 22:14:01', '2024-04-23 22:14:25', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('ce597d5d95044e30916585bad49b1f7c', '严告夜宵', 'images/95-严告夜宵06.jpg', '18701012323', 'info@163.com', '2024-04-23 22:13:57', '2024-04-23 22:14:24', '2', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('f43aa5ee9684431a951c45ce610c36d4', '玉楼东02', 'images/93-玉楼东-04.jpg', '18701012323', 'info@163.com', '2024-04-23 22:14:06', '2024-04-23 22:14:27', '1', null, '5');
INSERT INTO `t_restaurant_promotion` VALUES ('f43aa5ee9684431a9e1c45ce610c36d4', '玉楼东', 'images/93-玉楼东-04.jpg', '18701012323', 'info@163.com', '2024-04-23 22:14:03', '2024-04-23 22:14:26', '2', null, '5');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` char(32) NOT NULL COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `identity` varchar(6) NOT NULL DEFAULT '用户' COMMENT '身份',
  `user_avatar` varchar(120) DEFAULT '' COMMENT '头像',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `email` varchar(120) DEFAULT '' COMMENT '邮箱',
  `phone` char(11) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_username_uindex` (`username`),
  UNIQUE KEY `t_user_email_uindex` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0df1f48d79ed4d358fd5f98d14a11cd4', 'ww', '123', '用户', 'images/用户头像.jpg', '2024-04-14 20:04:27', '2024-04-16 20:15:03', '1234@qq.com', '15348965237');
INSERT INTO `t_user` VALUES ('2f0b423a28d647edacdd78868de3890f', 'ls', '123', '用户', 'images/用户头像.jpg', '2024-04-11 14:53:43', '2024-04-16 21:43:38', '12345678999@qq.com', '15974583412');
INSERT INTO `t_user` VALUES ('4eba8ae927324f6d9394a883abd0493b', '11', '12345', '用户', 'images/用户头像.jpg', '2024-04-19 16:53:35', '2024-04-19 16:53:35', '132@qq.com', '18536521026');
INSERT INTO `t_user` VALUES ('77dd6c7ec6a440ea89a474340c7d9ca2', 'qq', '12345', '用户', 'images/用户头像.jpg', '2024-04-18 21:48:57', '2024-04-18 21:48:57', '1233@qq.com', '18541256325');

-- ----------------------------
-- Table structure for t_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `t_verification_code`;
CREATE TABLE `t_verification_code` (
  `id` char(32) NOT NULL,
  `code` varchar(6) NOT NULL,
  `email` varchar(120) NOT NULL,
  `expiration_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='超时时间';

-- ----------------------------
-- Records of t_verification_code
-- ----------------------------
