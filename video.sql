/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : video

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 21/09/2021 00:05:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', '123456', 'static/images/我.png');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '电影', 0);
INSERT INTO `category` VALUES (2, '动漫', 0);
INSERT INTO `category` VALUES (3, '电视剧', 0);
INSERT INTO `category` VALUES (4, 'IT学习', 0);
INSERT INTO `category` VALUES (5, '爱情', 1);
INSERT INTO `category` VALUES (6, '动作', 1);
INSERT INTO `category` VALUES (7, '喜剧', 1);
INSERT INTO `category` VALUES (8, '战争', 1);
INSERT INTO `category` VALUES (9, '科幻', 1);
INSERT INTO `category` VALUES (10, '剧情', 1);
INSERT INTO `category` VALUES (11, '武侠', 1);
INSERT INTO `category` VALUES (12, '冒险', 1);
INSERT INTO `category` VALUES (13, '枪战', 1);
INSERT INTO `category` VALUES (14, '恐怖', 1);
INSERT INTO `category` VALUES (15, '悬疑', 1);
INSERT INTO `category` VALUES (16, '奇幻', 1);
INSERT INTO `category` VALUES (17, '动画', 1);
INSERT INTO `category` VALUES (18, '惊悚', 1);
INSERT INTO `category` VALUES (19, '经典', 1);
INSERT INTO `category` VALUES (20, '青春', 1);
INSERT INTO `category` VALUES (21, '古装', 1);
INSERT INTO `category` VALUES (22, '文艺', 1);
INSERT INTO `category` VALUES (23, '热血', 2);
INSERT INTO `category` VALUES (24, '爱情', 2);
INSERT INTO `category` VALUES (25, '搞笑', 2);
INSERT INTO `category` VALUES (26, '少儿', 2);
INSERT INTO `category` VALUES (27, '亲子', 2);
INSERT INTO `category` VALUES (28, '魔法', 2);
INSERT INTO `category` VALUES (29, '运动', 2);
INSERT INTO `category` VALUES (30, '机战', 2);
INSERT INTO `category` VALUES (31, '科幻', 2);
INSERT INTO `category` VALUES (32, '校园', 2);
INSERT INTO `category` VALUES (33, '动物', 2);
INSERT INTO `category` VALUES (34, '冒险', 2);
INSERT INTO `category` VALUES (35, '神话', 2);
INSERT INTO `category` VALUES (36, '推理', 2);
INSERT INTO `category` VALUES (37, '剧情', 2);
INSERT INTO `category` VALUES (38, '战争', 2);
INSERT INTO `category` VALUES (39, '经典', 2);
INSERT INTO `category` VALUES (40, '男性向', 2);
INSERT INTO `category` VALUES (41, '女性向', 2);
INSERT INTO `category` VALUES (42, 'java', 4);
INSERT INTO `category` VALUES (43, 'javaScript', 4);
INSERT INTO `category` VALUES (44, 'html+css', 4);
INSERT INTO `category` VALUES (45, 'mybatis', 4);
INSERT INTO `category` VALUES (46, 'spring', 4);
INSERT INTO `category` VALUES (47, 'springmvc', 4);
INSERT INTO `category` VALUES (48, 'layui', 4);
INSERT INTO `category` VALUES (49, 'android', 4);
INSERT INTO `category` VALUES (50, '悬疑', 3);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `episode` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (9, 1, 1, '鬼灭之刃', '2021-09-18 14:41:15', 'file/video/images/鬼灭之刃.jpg', '动物哈哈哈', 2);
INSERT INTO `history` VALUES (10, 2, 1, '左耳', '2021-09-18 10:38:00', 'file/video/images/左耳.jpg', '哈哈哈', 1);
INSERT INTO `history` VALUES (11, 1, 3, '鬼灭之刃', '2021-09-17 11:54:03', 'file/video/images/鬼灭之刃.jpg', '动物哈哈哈', 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张子龙', '12345678912', '123456', 'file/user/avatar/张子龙-1631946735597.png', 21, '2000-03-25', '男');
INSERT INTO `user` VALUES (2, 'tom', '15235231253', '111111', 'file/user/avatar/16b17c04-86b7-41db-ba00-23504ddf554c.png', 0, NULL, NULL);

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS `user_collection`;
CREATE TABLE `user_collection`  (
  `uid` int(11) NULL DEFAULT NULL,
  `vid` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_collection
-- ----------------------------
INSERT INTO `user_collection` VALUES (3, 10);
INSERT INTO `user_collection` VALUES (3, 9);
INSERT INTO `user_collection` VALUES (3, 5);
INSERT INTO `user_collection` VALUES (3, 7);
INSERT INTO `user_collection` VALUES (3, 4);
INSERT INTO `user_collection` VALUES (4, 9);
INSERT INTO `user_collection` VALUES (4, 7);
INSERT INTO `user_collection` VALUES (1, 10);
INSERT INTO `user_collection` VALUES (1, 7);
INSERT INTO `user_collection` VALUES (1, 5);

-- ----------------------------
-- Table structure for video_category
-- ----------------------------
DROP TABLE IF EXISTS `video_category`;
CREATE TABLE `video_category`  (
  `video_id` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video_category
-- ----------------------------
INSERT INTO `video_category` VALUES (9, 15);
INSERT INTO `video_category` VALUES (10, 7);
INSERT INTO `video_category` VALUES (10, 5);
INSERT INTO `video_category` VALUES (7, 10);
INSERT INTO `video_category` VALUES (7, 7);
INSERT INTO `video_category` VALUES (5, 5);
INSERT INTO `video_category` VALUES (5, 17);
INSERT INTO `video_category` VALUES (20, 25);
INSERT INTO `video_category` VALUES (20, 32);
INSERT INTO `video_category` VALUES (20, 28);
INSERT INTO `video_category` VALUES (18, 5);
INSERT INTO `video_category` VALUES (18, 10);
INSERT INTO `video_category` VALUES (24, 23);
INSERT INTO `video_category` VALUES (24, 35);
INSERT INTO `video_category` VALUES (24, 34);
INSERT INTO `video_category` VALUES (23, 10);
INSERT INTO `video_category` VALUES (23, 18);
INSERT INTO `video_category` VALUES (26, 6);
INSERT INTO `video_category` VALUES (26, 11);
INSERT INTO `video_category` VALUES (26, 7);
INSERT INTO `video_category` VALUES (6, 19);
INSERT INTO `video_category` VALUES (6, 8);
INSERT INTO `video_category` VALUES (4, 6);
INSERT INTO `video_category` VALUES (4, 7);
INSERT INTO `video_category` VALUES (4, 11);
INSERT INTO `video_category` VALUES (2, 5);
INSERT INTO `video_category` VALUES (2, 22);
INSERT INTO `video_category` VALUES (2, 20);
INSERT INTO `video_category` VALUES (8, 5);
INSERT INTO `video_category` VALUES (8, 19);
INSERT INTO `video_category` VALUES (12, 5);
INSERT INTO `video_category` VALUES (14, 14);
INSERT INTO `video_category` VALUES (3, 50);
INSERT INTO `video_category` VALUES (16, 23);
INSERT INTO `video_category` VALUES (17, 21);
INSERT INTO `video_category` VALUES (17, 6);
INSERT INTO `video_category` VALUES (18, 10);
INSERT INTO `video_category` VALUES (20, 49);
INSERT INTO `video_category` VALUES (11, 19);
INSERT INTO `video_category` VALUES (15, 34);

-- ----------------------------
-- Table structure for video_detail
-- ----------------------------
DROP TABLE IF EXISTS `video_detail`;
CREATE TABLE `video_detail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `episode` int(10) NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_date` datetime NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video_detail
-- ----------------------------
INSERT INTO `video_detail` VALUES (20, '哈哈哈', 1, '鬼灭之刃-02.mp4', '2021-09-16 15:36:19', 1);
INSERT INTO `video_detail` VALUES (21, '哈哈哈', 1, '左耳-01.mp4', '2021-09-16 15:42:39', 2);

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `current_episode` int(4) NULL DEFAULT NULL,
  `total_episode` int(4) NULL DEFAULT NULL,
  `img_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `starring` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(10) NULL DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_date` year(4) NULL DEFAULT NULL,
  `finished` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES (1, '代码大全', 1, 1, 'file/video/images/代码大全.jpg', '史蒂夫·迈克康奈尔', '这也是一本完整的软件构建手册，涵盖了软件构建过程中的所有细节。它从软件质量和编程思想等方面论述了软件构建的各个问题，并详细论述了紧跟潮流的新技术、高屋建瓴的观点、通用的概念，还含有丰富而典型的程序示例。本书中所论述的技术不仅填补 了初级与高级编程技术之间的空白，而且也为程序员们提供了一个有关编程技巧的信息来源。本书对经验丰富的程序员、技术带头人、自学的程序员及几乎不懂太多编程技巧的学生们都是大有裨益的。可以说，无论你是什么背景，阅读本书都会让你在更短的时间内、更容易地写出更好的程序。', 4, '美国', 2021, 1);
INSERT INTO `videos` VALUES (2, '分手大师', 1, 1, 'file/video/images/分手大师.jpg', '邓超   杨幂   梁超   古力娜扎  柳岩', '梅远贵（邓超 饰）是一个情感经历极为丰富的男人，虽然有过这样那样的失败恋情，却也帮他铺就了一条通往荣华复归的康庄大道。现如今的梅远贵生活在首都北京，与其精英团队操办起帮人分手的奇葩业务，无论你有着怎样的感情和生活，只要票子给足，他总会高效率地完成任务。爱情那么虚幻的东西太不可靠，还是钱最让他放心。这一天，梅照例接了一单生意，那就是帮客户甩掉美丽女孩叶小春（杨幂 饰）。小春是一个自强不息的北漂姑娘，她渴望可以让之依靠休息的港湾，同时也为了美好的明天奋力打拼。原本踌躇满志的梅远贵，从和小春接触的第一天起，他们彼此的人生就发生了改变……\r\n　　本片根据同名人气话剧改编。', 1, '内地', 2014, 1);
INSERT INTO `videos` VALUES (3, '功夫', 1, 1, 'file/video/images/功夫.jpg', '周星驰   元秋   元华   黄圣依   梁小龙', '1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。\r\n　　阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者（元华、梁小龙等），他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。', 1, '内地', 2004, 1);
INSERT INTO `videos` VALUES (4, '十二个想死的孩子', 1, 1, 'file/video/images/十二个想死的孩子.jpg', '杉咲花  新田真剑佑', '當活着比死更需勇氣，十二個少年來到荒廢醫院，進行本以為是12 比0 的投票，通過後便可集體自殺，卻發現房間多了一具屍體，必須找出兇手和企圖破壞契約的潛入者。劇情以新本格派推理展開，同時進行「十二怒漢」式針鋒相對。原來再厭世，內心極渴望別人聆聽自己故事。每一個都可疑，每一個都隨時被說服，結局示範最令人心悅誠服的反轉。《20 世紀少年》（2008-09）、《愛的成人式》（2015）導演堤幸彥巧妙觸碰少年自殺的禁忌，像補完計劃般置諸死地，在絕望深淵，一次擁抱可拯救一個靈魂。', 1, '日本', 2019, 1);
INSERT INTO `videos` VALUES (5, '好小子们', 1, 1, 'file/video/images/好小子们.jpg', '雅各布·特瑞布雷', '三个六年级的男孩离开学校，带着意外被盗的毒品，被十几岁的女孩追捕的同时试图及时回家参加期待已久的派对，他们踏上了一段史诗般的旅程。', 1, '美国', 2019, 1);
INSERT INTO `videos` VALUES (6, '好莱坞往事', 1, 1, 'file/video/images/好莱坞往事.jpg', '莱昂纳多·迪卡普里奥   布拉德·皮特   玛格特·罗比', '1969年，美国洛杉矶社会政治动荡与反叛文化的兴起，旧电影制度和观念的瓦解，电视业的蓬勃发展，欧洲新电影的冲击，都像狂风暴雨一样冲击着当时的好莱坞。在这样的变革中，过气的动作片演员里克·达尔顿（莱昂纳多·迪卡普里奥饰）和他的御用替身克里夫·布斯（布拉德·皮特饰）挣扎着想要在他们已经不再熟悉的好莱坞翻红。与此同时，里克·达尔顿的邻居著名女星莎朗·塔特（玛格特·罗比饰），也是著名导演罗曼·波兰斯基的妻子，惨遭好莱坞邪教曼森家族残忍杀害，震惊全美。而华人巨星李小龙（麦克·毛饰），曾是罗曼·波兰斯基的私人教练，他遗失的一副墨镜也成为这起凶杀案的物证', 1, '美国', 2019, 1);
INSERT INTO `videos` VALUES (7, '左耳', 1, 1, 'file/video/images/左耳.jpg', '陈都灵   欧豪   杨洋   马思纯   关晓彤   胡夏   段博文', '单纯美丽的李珥（陈都灵 饰）左耳失聪，无法听见声音，然而，生理上的缺陷并没有令她感到自卑，正相反，她的个性温顺又温柔。一次偶然中，李珥结识了名叫吧啦（马思纯 饰）的女孩，吧啦的个性和李珥截然相反，她无拘无束，桀骜不驯，向往自由的生活。在吧啦的身上，李珥看到了自己内心里叛 逆执着的一面。\r\n　　让李珥没有想到的是，吧啦竟然和自己一直暗恋的男生许弋（杨洋 饰）走到了一起，这让李珥开始体会到了青春的残酷。然而，吧啦的内心里其实喜欢着名为张漾（欧豪 饰）的男生，命运让他们的爱情成为了悲剧，并且最终夺走了吧啦年轻的生命，这场意外让几个懵懂的孩子们迅速蜕变成长，绽放出了最艳丽绝望的青春之花', 1, '内地', 2015, 1);
INSERT INTO `videos` VALUES (8, '我想吃掉你的胰脏', 1, 1, 'file/video/images/我想吃掉你的胰脏.jpg', '高杉真宙   Lynn   藤井雪代   内田雄马   福岛润   田中敦子   三木真一郎', '“没有名字的我，没有未来的她”，对他人毫无兴趣，总是独自一人读书的高中生“我”。这样的“我”有一天，偶然捡到一册写着《共病文库》的文库本。那是，天真烂漫的班上人气王·山内樱良私下记录的日记本。里面记载着她身患胰脏的疾病，已经时日无多......。隐藏自己的疾病度过日常的樱良，与知晓其秘密的“我”。——两人的距离，还没有名字。', 1, '日本', 2018, 1);
INSERT INTO `videos` VALUES (9, '扫黑风暴', 28, 28, 'file/video/images/扫黑风暴.jpg', '孙红雷   张艺兴   刘奕君   吴越   江疏影', '作为一线干警的李成阳，不断遭到保护伞的打击，黑恶势力的陷害，甚至顶头上司，公安局长等人为了阻止他的调查，构陷他，导致他身陷囹圄。但最终在中政委和中央督导组的指挥和领导下，李成阳重获自由，并联合公检法司各部门，最终将盘踞在中江市十几年的两大黑恶势力团伙一网打尽，并将黑恶势力的保护伞，和那些被腐蚀的政府官员绳之以法，还中江政坛一个干净的政治生态，还中江百姓一个清朗的社会环境。', 3, '内地', 2021, 1);
INSERT INTO `videos` VALUES (10, '柳列的音乐专辑', 1, 1, 'file/video/images/柳列的音乐专辑.jpg', '金高银  丁海寅', '在韩国上世纪末的IMF时期，通过“柳烈的音乐专辑”广播电台发送自己的故事渐渐产生爱情的美洙（金高银饰）和玄雨（丁海寅饰）之间的浪漫故事', 1, '其他', 2019, 1);
INSERT INTO `videos` VALUES (11, '狄仁杰之四大天王', 1, 1, 'file/video/images/狄仁杰之四大天王.jpg', '赵又廷   冯绍峰   林更新   阮经天   马思纯', '狄仁杰大破神都龙王案后，高宗御赐神器亢龙锏，遭天后武则天嫉妒，天后为盗取亢龙锏陷害狄仁杰，召集了一帮会方术的“异人组”图谋不轨，并命令尉迟真金带队。狄仁杰在医官沙陀忠的帮助下成功摆脱“异人组”迫害，并和尉迟真金商议和解，与此同时“异人组”刺客水月却发现都城出现不明势力，在狄仁杰周旋于武则天的埋伏时，大唐陷入更深的危机，“封魔族”携异术登场，一场“屠魔”大战即将爆发…', 1, '内地', 2018, 1);
INSERT INTO `videos` VALUES (12, '绿皮书', 1, 1, 'file/video/images/绿皮书.jpg', '维果·莫特森   马赫沙拉·阿里', '托尼（维果·莫腾森 Viggo Mortensen 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 Mahershala Ali 饰）的黑人钢琴家提出雇佣托尼。\r\n　　唐雪莉即将开始为期八个星期的南下巡回演出，可是，那个时候南方对黑人的歧视非常的严重，于是托尼便成为了唐雪莉的司机兼保镖。一路上，两人迥异的性格使得他们之间产生了很多的矛盾，与此同时，唐雪莉在南方所遭受的种种不公平的对待也让托尼对种族歧视感到深恶痛绝。', 1, '美国', 2018, 1);
INSERT INTO `videos` VALUES (13, '诛仙', 1, 1, 'file/video/images/诛仙.jpg', '肖战   李沁   孟美岐   唐艺昕', '《诛仙I》是新丽传媒有限责任公司出品的古装玄幻电影，由程小东执导，肖战、李沁、孟美岐领衔主演，唐艺昕特邀主演。该片改编自萧鼎同名小说，讲述了平凡少年张小凡经草庙村惨案拜入青云门，机缘巧合之下获得法器烧火棍，从而卷入正邪两道之间隐秘斗争的故事。于2019年9月13日在中国大陆上映。', 1, '内地', 2019, 1);
INSERT INTO `videos` VALUES (14, '请以你的名字呼唤我', 1, 1, 'file/video/images/请以你的名字呼唤我.jpg', '提莫西·查拉梅  艾米·汉莫  迈克尔·斯图巴', '故事发生在20世纪80年代的意大利里维埃拉，突如其来的爱仿佛林中奔出的野兽，攫住了17岁少年艾利欧的身与心。他爱上了大他6岁、来意大利游历的美国博士生奥利弗。两人对彼此着迷、犹疑、试探，让情欲在涌动中迸发，成就了一段仅仅为时六周的初恋。这段美好的夏日之恋，在两人心中留下了不可磨灭的印记', 1, '美国', 2017, 1);
INSERT INTO `videos` VALUES (15, '超人高中生们即使在异世界也能从容生存', 12, 12, 'file/video/images/超人高中生们即使在异世界也能从容生存.jpg', '金元寿子  日高里菜  间岛淳司  石上静香', '我们要是真的拿出真本事，可能会不小心摧毁异世界这个世界呢。 七名高中生卷入了飞机事故，他们醒来之后，发现自己身处于另一个世界之中。那是一个存在着魔法、兽人，时代近似于中世纪的异世界。 一行人遭遇如此突发状况，完全没有陷入混乱（！？）他们为所欲为，例如在没有电力的世界中造了核子发电厂；稍微出外打拼一下，就掌握了整个大城市的经济；甚至是为了拯救饱受恶政欺压的恩人，与作恶多端的贵族来上一场战争！？ 没错，他们不是普通的高中生，而是各自立于政治、经济、科学、医学等领域顶点的超人高中生！这群梦幻队伍拥有地球最高度的智慧与技术，他们将肆无忌惮地动用超高科技，编织出一段异世界革命传说！', 2, '日本', 2019, 1);
INSERT INTO `videos` VALUES (16, '过春天', 1, 1, 'file/video/images/过春天.jpg', '黄尧    孙阳   汤加文   倪虹洁   江美仪 ', '单亲家庭出身的16岁女学生佩佩（黄尧 饰），她的城市既是香港、也是深圳，白天在香港上学，晚上回到深圳跟妈妈（倪虹洁 饰）住在一起，频繁地穿梭于两地。为了和闺蜜Joe（汤加文 饰）一起旅行的约定，为了自己的存在感，为了对Joe男友阿豪（孙阳 饰）懵懂的好感，她内心的冲动被点燃，“水客”成为了她的另一个身份，一段颇有“冒险”感的青春故事就此开始', 1, '内地', 2018, 1);
INSERT INTO `videos` VALUES (17, '这个勇者明明超强却过分慎重', 13, 13, 'file/video/images/这个勇者明明超强却过分慎重.jpg', '梅原裕一郎   丰崎爱生', '故事讲述废柴女神莉丝塔要负责拯救超难模式的世界。虽然成功召唤出能力值高到犯规的勇者圣哉，没想到他却谨慎到超乎想象……不仅囤积异常的库存，还自主训练到满等为止，谨慎到连打史莱姆都全力以赴！如此谨慎的勇者和被他耍得团团转的女神，即将展开冒险旅程！', 2, '日本', 2019, 1);
INSERT INTO `videos` VALUES (18, '鬼灭之刃', 30, 30, 'file/video/images/鬼灭之刃.jpg', '花江夏树   鬼头明里   下野纮   松冈祯丞   冈本信彦', '电视动画《鬼灭之刃》改编自吾峠呼世晴创作的同名漫画，于2018年6月4日在《周刊少年JUMP》2018年6月第27号上发表了动画化的消息。动画由ufotable负责制作。 于2019年4月放送开始。 　　日本大正时期，那是一个吃人的恶鬼横行的世界，一名家人被鬼杀死，妹妹也变成了鬼的主人公炭治郎，在猎鬼人的指引下，成为了鬼猎人组织“鬼杀队”的一员，为了让妹妹祢豆子变回人类，为了讨伐杀害家人的恶鬼，为了斩断悲伤的连锁而展开了战斗。', 2, '日本', 2019, 1);

SET FOREIGN_KEY_CHECKS = 1;
