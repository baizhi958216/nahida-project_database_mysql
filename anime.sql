/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : anime

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 09/12/2022 19:33:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员昵称',
  `adminacc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `adminpsw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`adminid`) USING BTREE,
  UNIQUE INDEX `adminacc`(`adminacc` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '纳西妲', 'nahida', '123456');
INSERT INTO `admin` VALUES (2, '刻晴', 'keqing', '123456');
INSERT INTO `admin` VALUES (3, '天选姬', 'tianxuan', '123456');
INSERT INTO `admin` VALUES (4, '拯救姬', 'legion', '123456');
INSERT INTO `admin` VALUES (5, '莹', 'ying', '123456');
INSERT INTO `admin` VALUES (6, '空', 'kong', '123456');
INSERT INTO `admin` VALUES (7, '神里凌华', 'ayaka', '123456');
INSERT INTO `admin` VALUES (8, '枫原万叶', 'kazuha', '123456');
INSERT INTO `admin` VALUES (9, '宵宫', 'yoimiya', '123456');
INSERT INTO `admin` VALUES (10, '钟离', 'zhongli', '123456');
INSERT INTO `admin` VALUES (11, '垃圾佬', '123abc', '31d3323dss3');
INSERT INTO `admin` VALUES (13, 'dsada', '123abcf', 'dasdasdadad');

-- ----------------------------
-- Table structure for anime
-- ----------------------------
DROP TABLE IF EXISTS `anime`;
CREATE TABLE `anime`  (
  `aid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '动漫ID',
  `aname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '动漫名',
  `acompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动漫制作公司',
  `areldate` date NULL DEFAULT NULL COMMENT '动漫首播日期',
  `aepisode` int UNSIGNED NULL DEFAULT 0 COMMENT '动漫已更新剧集',
  `astats` enum('连载中','已完结') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '连载中' COMMENT '动漫状态',
  `alang` enum('国语','粤语','日语','英语') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '日语' COMMENT '动漫语言',
  `ahot` int NULL DEFAULT NULL COMMENT '动漫热度',
  `arecommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '动漫是否上推荐',
  `adesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '动漫剧情',
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `aname`(`aname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anime
-- ----------------------------
INSERT INTO `anime` VALUES (1, '魔女之旅', 'C2C', '2020-10-02', 12, '已完结', '日语', 6, 'true', '某个地方有一位旅人，她的名字是伊蕾娜。是一位年纪轻轻就成了魔法使中最上位「魔女」的天才。因为向往着幼时读过的旅行故事，随意地进行着漫长的旅行。在这个广阔的世界里自由地漫步，接触着形形色色有趣的人，体味着人们美好的日常生活，她作为一名旅人，不带有任何目的地接触着各种国家的各色人群。还有同样数量的——「不必理会我。我只是一介旅人罢了。接下来还得继续前往下一个地方呢。」由魔女伊蕾娜所连接的，关于相遇和离别的故事……。');
INSERT INTO `anime` VALUES (2, '莉可丽丝', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'true', '安宁的日常——背后却暗藏秘密将犯罪防患于未然的秘密组织——“DA（Direct Attack）”隶属于DA的少女特工——“莉可丽丝”理所当然的日常，都要归功于她们。咖啡厅“莉可莉可” 作为DA支部，员工有号称史上最强莉可丽丝的精英·锦木千束、优秀却暗藏隐情的莉可丽丝·井上泷奈。这里供应的不光是咖啡和甜品，还有照顾孩子、代为购物、教外国人日语等服务，全都不像是“莉可丽丝”会做的事。自由随性又乐天的和平主义者·千束和效率至上的泷奈，反差巨大的两人组成搭档，开始了忙忙碌碌的每一天。');
INSERT INTO `anime` VALUES (3, '关于我转生变成史莱姆这档事 第二季', '8bit', '2021-01-05', 26, '已完结', '日语', 12, 'true', '主人公利姆鲁与仰慕他而聚集的众多魔物们所建立的国家「鸠拉·特恩佩斯特国」，经由与邻国的协议及交易，让「人类与魔物共同漫步的国家」这一温柔的理想逐步成形。利姆鲁作为曾是人类的史莱姆当然拥有「对人类的好意」……但这个世界中却存在着明确的「对魔物的敌意」。当这不合理的现实摆在眼前时，利姆鲁将做出选择。为了「什么都不想失去」——万众期待的转生喜剧突入暴风的新章！');
INSERT INTO `anime` VALUES (4, '被开除出勇者队伍的驯兽使，邂逅了最强种猫耳少女', 'EMT SQUARED', '2022-10-02', 9, '连载中', '日语', 23, 'true', '“雷因，你被解雇了”突然有一天，雷因被驱逐出勇者的队伍。他选择当一个冒险家作为以后生命之路，在考试期间帮助一个摔倒的女孩。女孩名为奏，是最最强大的“猫灵族”！受到奏的邀请，雷因作为驭兽使，两人决定签订契约并组成一个队伍。在另一方面，失去雷因的勇者队伍开始意识到他的重要性。“喵……和雷因在一起的时候，总是感到惊讶”\n“不会无聊吧？”“……哇！是啊”使役一切的驭兽使和最强的伙伴凌驾于勇者队伍——。和重要的伙伴相遇并成长的冒险幻想！');
INSERT INTO `anime` VALUES (5, '夫妇以上，恋人未满。', 'studio MOTHER', '2022-10-09', 8, '连载中', '日语', 32, 'true', '不起眼的男高中生药院次郎，在“夫妻实习”的课堂上，和绝对不可能有关系的班上的美少女渡边星一起生活。他们对彼此的印象也很差。“阴”和“阳”不匹配非常刺激。洗完澡后的突发事件，突然的接触麻烦！？次郎虽然闷闷不乐，但还是下意识地想……“喂，真的好好地玩夫妻游戏吧”互相有想法的次郎和星为了得到交换组合的权利，认真地扮演夫妻。然而，酸甜苦辣的夫妻生活逐渐让彼此意识到各自的魅力。比“恋人”更刺激的，辣妹和无异性缘男生的“夫妻游戏”开始了  。');
INSERT INTO `anime` VALUES (6, '契约之吻', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'false', '“贝隆市”——不属于任何国家，漂浮在太平洋上的巨型浮岛型城市。因其开采新能源资源“欧尔贡矿”而在这个世界上占有一席之地，贝隆市也经常发生被称为“D灾害”的由“恶魔”引起的特殊事件。\r\n只有一小部分人知道D灾害的存在，对其进行处理的是“PMC”（民间军事公司），生活在贝隆市的青年修则经营着一家，但公司的规模很小，而且修还要找工作，所以资金周转总是很困难。\r\n公私不分地、献身地支撑着修的生活的，是在贝隆市的学校上学的美少女高中生木更。还有一个，是修曾经所属的大型PMC的职员，也是他的前女友绫乃，她现在依然很关心修，对木更没有好感。\r\n木更对修有着强烈的执着，其根本在于两人的“契约”。\r\n她的真面目是恶魔。\r\n木更支撑着修的生活，也根据契约协助消灭恶魔。\r\n其代价是甜蜜而危险的“吻”。爱与契约，两人危险的羁绊。命运将会走向何方……');
INSERT INTO `anime` VALUES (7, '式守同学不只可爱而已', '动画工房', '2022-04-09', 12, '已完结', '日语', 22, 'false', '超级“帅气女友“登场！ 和泉是一名拥有不幸体质的高中男生，他有一个和他同班的女朋友，叫做式守。 式守的笑容十分甜美、温柔，跟和泉在一起的时候脸上总是洋溢着幸福。她平时可爱动人，心中满是爱情，但只要看到和泉遇到危险，她就会……摇身一变，变成“帅气女友”！满是可爱×帅气的式守跟和泉将与他们的小伙伴一起带来无限愉快的日常！1000%美好的爱情喜剧，即将开幕！');
INSERT INTO `anime` VALUES (8, '关于我转生变成史莱姆这档事 第一季', '8bit', '2018-10-02', 24, '已完结', '日语', 12, 'false', '史莱姆生活，开始了。上班族的三上悟在道路上被歹徒给刺杀身亡后，回过神来发现自己转生到了异世界。不过，自己居然是“史莱姆”！他在得到利姆鲁这个名字后开始了自己的史莱姆人生，随着与各个种族相处交流的过程中，他定下了一个目标——那就是“建立一个任何种族都能愉快地一起生活的国家”！');
INSERT INTO `anime` VALUES (9, '恋爱FLOPS', 'Passione', '2022-10-12', 8, '连载中', '日语', 22, 'true', '平凡的男子高中生柏树朝，像往常一样走在一成不变的通学路上。\r\n然而，正和出门前无意间打开的电视里播放的奇妙占卜说的一样，他在这个早晨遭遇到了各种各样的灾难。\r\n在一个接一个发生的灾难中，朝和5名少女发生了可说是最糟糕的相遇。\r\n当他身心俱疲、好不容易到达学校时，作为转校生和新任教师的5名少女的身影却再次出现在了他的面前。\r\n朝努力隐藏自己的脸，但根本藏不住……\r\n自称是朝的好友伊集院好雄，向朝询问与5人之间的关系。\r\n随着与5人相处，解开了彼此之间的误会，关系也稍微融洽了一些。\r\n放学后，朝打开鞋柜准备回家，却发现里面放着一封情书。\r\n寄件人不明的情书上，写着“在校舍后面的樱花树下等你”。这也如占卜所说的一样。\r\n事到如今，打算把一切都弄清楚的朝，向樱花树下走去。\r\n樱花飞舞的季节，5阵恋风带来的淡淡苦闷的青春爱情故事，现在，拉开帷幕!');
INSERT INTO `anime` VALUES (10, '摇曳百合', '动画工房', '2011-07-04', 12, '已完结', '日语', 12, 'false', '从今天起，有点天然呆的灯里（三上枝织 配音）正式成为一名初中生，开学第一天灯里加入了好友京子（大坪由佳 配音）和结衣（津田美波 配音）所在的“娱乐部”。所谓娱乐部，其实她们只是占领了已经废部的茶道社办公室，社团活动也只不过是各种优哉游哉的喝茶闲聊。灯里的同班同学千夏（大久保瑠美 配音）因为憧憬着隶属茶道社的姐姐，阴错阳差地加入了她们。\r\n　　四名少女在娱乐部度着轻松欢乐、又带点百合情节的日子，京子极其喜欢外形可爱的千夏，千夏则喜欢着很会照顾人的结衣。这样一来，身为主人公的灯里无形中受到了冷落，大家在娱乐部展开了讨论会，结果会引发什么样的爆笑故事？同时，擅自占用教室一事，引来了学生会的关注，娱乐部会面临废部危机吗？');

-- ----------------------------
-- Table structure for animecv
-- ----------------------------
DROP TABLE IF EXISTS `animecv`;
CREATE TABLE `animecv`  (
  `cvid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'CVID',
  `cvname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'CV名字',
  PRIMARY KEY (`cvid`) USING BTREE,
  UNIQUE INDEX `cvname`(`cvname` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animecv
-- ----------------------------
INSERT INTO `animecv` VALUES (38, 'Lynn');
INSERT INTO `animecv` VALUES (9, '三上枝织');
INSERT INTO `animecv` VALUES (28, '丰口惠美');
INSERT INTO `animecv` VALUES (7, '久野美咲');
INSERT INTO `animecv` VALUES (14, '伊藤美来');
INSERT INTO `animecv` VALUES (37, '会泽纱弥');
INSERT INTO `animecv` VALUES (15, '佐仓绫音');
INSERT INTO `animecv` VALUES (26, '内田修一');
INSERT INTO `animecv` VALUES (42, '内田彩');
INSERT INTO `animecv` VALUES (8, '冈咲美保');
INSERT INTO `animecv` VALUES (47, '冈本信彦');
INSERT INTO `animecv` VALUES (29, '前野智昭');
INSERT INTO `animecv` VALUES (32, '千叶翔也');
INSERT INTO `animecv` VALUES (51, '千本木彩花');
INSERT INTO `animecv` VALUES (30, '古川慎');
INSERT INTO `animecv` VALUES (23, '和气杏未');
INSERT INTO `animecv` VALUES (21, '增田俊树');
INSERT INTO `animecv` VALUES (10, '大久保瑠美');
INSERT INTO `animecv` VALUES (11, '大坪由佳');
INSERT INTO `animecv` VALUES (18, '大西沙织');
INSERT INTO `animecv` VALUES (6, '安济知佳');
INSERT INTO `animecv` VALUES (20, '宫下早纪');
INSERT INTO `animecv` VALUES (24, '小仓唯');
INSERT INTO `animecv` VALUES (31, '小林亲弘');
INSERT INTO `animecv` VALUES (19, '山下诚一郎');
INSERT INTO `animecv` VALUES (34, '指出毬亚');
INSERT INTO `animecv` VALUES (4, '日笠阳子');
INSERT INTO `animecv` VALUES (46, '日高里菜');
INSERT INTO `animecv` VALUES (1, '本渡枫');
INSERT INTO `animecv` VALUES (12, '松冈祯丞');
INSERT INTO `animecv` VALUES (45, '松冈美里');
INSERT INTO `animecv` VALUES (40, '松田健一郎');
INSERT INTO `animecv` VALUES (44, '梅田修一朗');
INSERT INTO `animecv` VALUES (16, '水濑祈');
INSERT INTO `animecv` VALUES (27, '津田美波');
INSERT INTO `animecv` VALUES (39, '渡边明乃');
INSERT INTO `animecv` VALUES (33, '田中美海');
INSERT INTO `animecv` VALUES (48, '福山润');
INSERT INTO `animecv` VALUES (13, '竹达彩奈');
INSERT INTO `animecv` VALUES (50, '花守由美里');
INSERT INTO `animecv` VALUES (2, '花泽香菜');
INSERT INTO `animecv` VALUES (5, '若山诗音');
INSERT INTO `animecv` VALUES (43, '逢坂良太');
INSERT INTO `animecv` VALUES (25, '野上翔');
INSERT INTO `animecv` VALUES (49, '金元寿子');
INSERT INTO `animecv` VALUES (41, '长谷川芳明');
INSERT INTO `animecv` VALUES (22, '高桥未奈美');
INSERT INTO `animecv` VALUES (36, '高桥李依');
INSERT INTO `animecv` VALUES (35, '高野麻里佳');
INSERT INTO `animecv` VALUES (3, '黑泽朋世');
INSERT INTO `animecv` VALUES (17, '齐藤壮马');

-- ----------------------------
-- Table structure for animetype
-- ----------------------------
DROP TABLE IF EXISTS `animetype`;
CREATE TABLE `animetype`  (
  `tid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '动漫类型ID',
  `type` enum('小说改','魔法','奇幻','架空','原创','战斗','日常','喜剧','动画','校园','百合','恋爱') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动漫类型名字',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animetype
-- ----------------------------
INSERT INTO `animetype` VALUES (1, '小说改');
INSERT INTO `animetype` VALUES (2, '魔法');
INSERT INTO `animetype` VALUES (3, '奇幻');
INSERT INTO `animetype` VALUES (4, '架空');
INSERT INTO `animetype` VALUES (5, '原创');
INSERT INTO `animetype` VALUES (6, '战斗');
INSERT INTO `animetype` VALUES (7, '日常');
INSERT INTO `animetype` VALUES (8, '喜剧');
INSERT INTO `animetype` VALUES (9, '恋爱');
INSERT INTO `animetype` VALUES (10, '动画');
INSERT INTO `animetype` VALUES (11, '校园');
INSERT INTO `animetype` VALUES (12, '百合');

-- ----------------------------
-- Table structure for animeupdater
-- ----------------------------
DROP TABLE IF EXISTS `animeupdater`;
CREATE TABLE `animeupdater`  (
  `aid` int UNSIGNED NOT NULL,
  `adminid` int UNSIGNED NOT NULL COMMENT '动漫上传者ID',
  `udate` datetime NOT NULL COMMENT '动漫ID',
  INDEX `adminid`(`adminid` ASC) USING BTREE,
  INDEX `aid`(`aid` ASC) USING BTREE,
  CONSTRAINT `animeupdater_ibfk_2` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animeupdater
-- ----------------------------
INSERT INTO `animeupdater` VALUES (1, 1, '2022-12-04 23:12:53');
INSERT INTO `animeupdater` VALUES (2, 1, '2022-12-04 23:13:17');
INSERT INTO `animeupdater` VALUES (3, 1, '2022-12-04 23:13:22');
INSERT INTO `animeupdater` VALUES (4, 1, '2022-12-04 23:13:40');
INSERT INTO `animeupdater` VALUES (5, 1, '2022-12-04 23:13:47');
INSERT INTO `animeupdater` VALUES (6, 1, '2022-12-04 23:13:52');
INSERT INTO `animeupdater` VALUES (7, 1, '2022-12-04 23:13:58');
INSERT INTO `animeupdater` VALUES (8, 1, '2022-12-04 23:14:04');
INSERT INTO `animeupdater` VALUES (9, 1, '2022-12-04 23:14:09');
INSERT INTO `animeupdater` VALUES (10, 1, '2022-12-04 23:14:15');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `cmid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '回复ID',
  `cmdate` datetime NULL DEFAULT NULL COMMENT '回复日期',
  `cmtext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回复内容',
  `uid` int UNSIGNED NOT NULL COMMENT '用户ID',
  `aid` int UNSIGNED NOT NULL COMMENT '动漫ID',
  PRIMARY KEY (`cmid`) USING BTREE,
  INDEX `uid`(`uid` ASC) USING BTREE,
  INDEX `aid`(`aid` ASC) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `anime` (`aid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '2022-12-03 19:19:57', '对伊蕾娜一直不离不弃，一心一意，一直默默无闻的陪伴在伊蕾娜左右的存在又是谁呢——\r\n扫帚:没错，就是我', 1, 1);
INSERT INTO `comment` VALUES (2, '2022-12-03 19:21:56', '你看，你看这伊蕾娜，刚来就摸别人的手，实在是太屑了！！！就是，就是，这个伊蕾娜真是太屑了！！！', 2, 1);
INSERT INTO `comment` VALUES (4, '2022-12-04 23:22:03', '来了，到处留现地妻的女人是谁？\r\n\r\n没错，就是我，\r\n\r\n来了，到处留现地妻的女人是谁？没错，就是我，伊蕾娜。', 2, 1);
INSERT INTO `comment` VALUES (5, '2022-12-04 23:22:33', '为什么这部番没有魔男？因为魔男在更衣室里', 3, 1);
INSERT INTO `comment` VALUES (6, '2022-12-04 23:23:09', '真想不到这个公路番经费这么足，甚至人物线条比隔壁非常可爱和夜叉姬还要好看！伊雷娜实在是太漂亮了！', 4, 1);
INSERT INTO `comment` VALUES (7, '2022-12-04 23:23:30', '老婆老婆老婆老婆老婆老婆老婆老婆老婆恰个v', 1, 1);
INSERT INTO `comment` VALUES (8, '2022-12-04 23:24:16', '泷奈：杀入东京，夺了鸟位。千束哥哥当大总统，我们几个做大官。大口吃牛排，大碗喝红酒，大秤分刀乐。', 1, 2);
INSERT INTO `comment` VALUES (9, '2022-12-04 23:24:39', '我是鱼鱼，哈哈哈，我是鳗鱼，嗨害嗨', 2, 2);
INSERT INTO `comment` VALUES (10, '2022-12-04 23:25:10', '心脏:无所谓 我会逃走', 2, 2);
INSERT INTO `comment` VALUES (11, '2022-12-04 23:25:35', 'da是真的垃 系统日常宕机 一线作战人员也没点警觉 看到无人机在动都没点反应 我的评价是还不如叙利亚民兵', 4, 2);

-- ----------------------------
-- Table structure for cv2anime
-- ----------------------------
DROP TABLE IF EXISTS `cv2anime`;
CREATE TABLE `cv2anime`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `aid` int UNSIGNED NOT NULL COMMENT '动漫ID',
  `cvid` int UNSIGNED NOT NULL COMMENT 'CVID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aid`(`aid` ASC) USING BTREE,
  INDEX `cvid`(`cvid` ASC) USING BTREE,
  CONSTRAINT `cv2anime_ibfk_2` FOREIGN KEY (`cvid`) REFERENCES `animecv` (`cvid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cv2anime
-- ----------------------------
INSERT INTO `cv2anime` VALUES (5, 2, 5);
INSERT INTO `cv2anime` VALUES (6, 2, 6);
INSERT INTO `cv2anime` VALUES (7, 2, 7);
INSERT INTO `cv2anime` VALUES (13, 4, 32);
INSERT INTO `cv2anime` VALUES (14, 4, 33);
INSERT INTO `cv2anime` VALUES (15, 4, 34);
INSERT INTO `cv2anime` VALUES (16, 4, 35);
INSERT INTO `cv2anime` VALUES (17, 4, 36);
INSERT INTO `cv2anime` VALUES (18, 4, 10);
INSERT INTO `cv2anime` VALUES (19, 5, 8);
INSERT INTO `cv2anime` VALUES (20, 5, 28);
INSERT INTO `cv2anime` VALUES (21, 5, 29);
INSERT INTO `cv2anime` VALUES (22, 5, 30);
INSERT INTO `cv2anime` VALUES (23, 5, 31);
INSERT INTO `cv2anime` VALUES (24, 9, 14);
INSERT INTO `cv2anime` VALUES (25, 9, 36);
INSERT INTO `cv2anime` VALUES (26, 9, 49);
INSERT INTO `cv2anime` VALUES (27, 9, 43);
INSERT INTO `cv2anime` VALUES (28, 9, 35);
INSERT INTO `cv2anime` VALUES (29, 9, 48);
INSERT INTO `cv2anime` VALUES (30, 6, 10);
INSERT INTO `cv2anime` VALUES (31, 6, 17);
INSERT INTO `cv2anime` VALUES (32, 6, 18);
INSERT INTO `cv2anime` VALUES (33, 6, 37);
INSERT INTO `cv2anime` VALUES (34, 6, 38);
INSERT INTO `cv2anime` VALUES (35, 6, 39);
INSERT INTO `cv2anime` VALUES (36, 6, 40);
INSERT INTO `cv2anime` VALUES (37, 6, 41);
INSERT INTO `cv2anime` VALUES (38, 6, 42);
INSERT INTO `cv2anime` VALUES (39, 6, 43);
INSERT INTO `cv2anime` VALUES (40, 7, 18);
INSERT INTO `cv2anime` VALUES (41, 7, 44);
INSERT INTO `cv2anime` VALUES (42, 7, 45);
INSERT INTO `cv2anime` VALUES (43, 7, 46);
INSERT INTO `cv2anime` VALUES (44, 7, 47);
INSERT INTO `cv2anime` VALUES (45, 8, 8);
INSERT INTO `cv2anime` VALUES (46, 8, 28);
INSERT INTO `cv2anime` VALUES (47, 8, 29);
INSERT INTO `cv2anime` VALUES (48, 8, 30);
INSERT INTO `cv2anime` VALUES (49, 8, 31);
INSERT INTO `cv2anime` VALUES (50, 8, 50);
INSERT INTO `cv2anime` VALUES (51, 8, 51);
INSERT INTO `cv2anime` VALUES (52, 10, 9);
INSERT INTO `cv2anime` VALUES (53, 10, 10);
INSERT INTO `cv2anime` VALUES (54, 10, 11);
INSERT INTO `cv2anime` VALUES (55, 10, 27);
INSERT INTO `cv2anime` VALUES (73, 1, 3);
INSERT INTO `cv2anime` VALUES (74, 1, 2);
INSERT INTO `cv2anime` VALUES (75, 1, 4);
INSERT INTO `cv2anime` VALUES (76, 1, 1);
INSERT INTO `cv2anime` VALUES (82, 3, 8);
INSERT INTO `cv2anime` VALUES (83, 3, 28);
INSERT INTO `cv2anime` VALUES (84, 3, 29);
INSERT INTO `cv2anime` VALUES (85, 3, 30);
INSERT INTO `cv2anime` VALUES (86, 3, 31);
INSERT INTO `cv2anime` VALUES (88, 11, 9);
INSERT INTO `cv2anime` VALUES (89, 11, 10);
INSERT INTO `cv2anime` VALUES (90, 11, 27);
INSERT INTO `cv2anime` VALUES (91, 11, 11);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminid` int UNSIGNED NOT NULL COMMENT '管理员id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid` ASC) USING BTREE,
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 1, '000001');
INSERT INTO `image` VALUES (2, 1, '000002');
INSERT INTO `image` VALUES (3, 1, '000003');
INSERT INTO `image` VALUES (4, 1, '000004');
INSERT INTO `image` VALUES (5, 1, '000005');
INSERT INTO `image` VALUES (6, 1, '000006');
INSERT INTO `image` VALUES (7, 1, '000007');
INSERT INTO `image` VALUES (8, 1, '000008');
INSERT INTO `image` VALUES (9, 1, '000009');
INSERT INTO `image` VALUES (10, 1, '000010');

-- ----------------------------
-- Table structure for type2anime
-- ----------------------------
DROP TABLE IF EXISTS `type2anime`;
CREATE TABLE `type2anime`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tid` int UNSIGNED NOT NULL COMMENT '类型ID',
  `aid` int UNSIGNED NOT NULL COMMENT '动漫ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tid`(`tid` ASC) USING BTREE,
  INDEX `aid`(`aid` ASC) USING BTREE,
  CONSTRAINT `type2anime_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `animetype` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type2anime
-- ----------------------------
INSERT INTO `type2anime` VALUES (10, 3, 4);
INSERT INTO `type2anime` VALUES (11, 9, 5);
INSERT INTO `type2anime` VALUES (12, 11, 5);
INSERT INTO `type2anime` VALUES (13, 5, 6);
INSERT INTO `type2anime` VALUES (14, 7, 7);
INSERT INTO `type2anime` VALUES (15, 9, 7);
INSERT INTO `type2anime` VALUES (16, 11, 7);
INSERT INTO `type2anime` VALUES (17, 1, 8);
INSERT INTO `type2anime` VALUES (18, 3, 8);
INSERT INTO `type2anime` VALUES (19, 6, 8);
INSERT INTO `type2anime` VALUES (20, 7, 9);
INSERT INTO `type2anime` VALUES (21, 8, 10);
INSERT INTO `type2anime` VALUES (22, 11, 10);
INSERT INTO `type2anime` VALUES (23, 12, 10);
INSERT INTO `type2anime` VALUES (30, 6, 2);
INSERT INTO `type2anime` VALUES (31, 7, 2);
INSERT INTO `type2anime` VALUES (32, 5, 2);
INSERT INTO `type2anime` VALUES (53, 6, 1);
INSERT INTO `type2anime` VALUES (54, 2, 1);
INSERT INTO `type2anime` VALUES (55, 1, 1);
INSERT INTO `type2anime` VALUES (59, 6, 3);
INSERT INTO `type2anime` VALUES (60, 3, 3);
INSERT INTO `type2anime` VALUES (61, 1, 3);
INSERT INTO `type2anime` VALUES (63, 8, 11);
INSERT INTO `type2anime` VALUES (64, 11, 11);
INSERT INTO `type2anime` VALUES (65, 12, 11);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `UserAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `UserEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `UserPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `UserRegisterDate` date NULL DEFAULT NULL COMMENT '用户注册时间',
  `UserDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户评价',
  `UserGender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未设置' COMMENT '用户性别',
  PRIMARY KEY (`UserID`) USING BTREE,
  UNIQUE INDEX `UserAccount`(`UserAccount` ASC, `UserEmail` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '马化腾', 'mahuateng', 'mahuateng@qq.com', '123456', '2022-11-29', '我是马化腾', '男');
INSERT INTO `user` VALUES (2, '马云', 'mayun', 'mayun@aliyun.com', '123456', '2022-11-29', '我是马云', '男');
INSERT INTO `user` VALUES (3, '胡桃', 'hutao', 'hutao@mihoyo.com', '123456', '2022-11-29', '胡堂主是我', '女');
INSERT INTO `user` VALUES (4, '莱依拉', '\r\nlayla ', 'layla@mihoyo', '123456', '2022-11-29', '你好', '女');

-- ----------------------------
-- Table structure for yiyan
-- ----------------------------
DROP TABLE IF EXISTS `yiyan`;
CREATE TABLE `yiyan`  (
  `yid` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminid` int UNSIGNED NOT NULL COMMENT '用户ID',
  `sentence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '一言语句',
  `origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '一言来源',
  PRIMARY KEY (`yid`) USING BTREE,
  INDEX `adminid`(`adminid` ASC) USING BTREE,
  CONSTRAINT `yiyan_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yiyan
-- ----------------------------
INSERT INTO `yiyan` VALUES (1, 1, '万有引力可无法对坠入爱河的人负责。', '爱因斯坦');
INSERT INTO `yiyan` VALUES (2, 2, '当遇到你时，大脑连上CSGO都会掉帧。', 'Florence');
INSERT INTO `yiyan` VALUES (3, 1, '幸运的人一生都在被童年治愈，不幸的人一生都在治愈童年。', '	阿尔弗雷德·阿德勒');
INSERT INTO `yiyan` VALUES (4, 1, '对于永生之人，最大的敌人，是无聊。', '东方永夜抄');
INSERT INTO `yiyan` VALUES (5, 2, '不管你说再多的慌，只有自己的内心，是无法欺骗的啊。', '七大罪');
INSERT INTO `yiyan` VALUES (6, 1, '山谷的最低点正是山的起点。', '林清玄');
INSERT INTO `yiyan` VALUES (7, 1, '生命如同寓言，其价值不在于长短，而在于内容。', '塞涅卡');
INSERT INTO `yiyan` VALUES (8, 1, '我和空太是恋人以上，友人未满的关系。', '樱花庄的宠物女孩');
INSERT INTO `yiyan` VALUES (9, 1, '如果我们能活着出去的话，千山万水，你愿意陪我一起看吗？', '狐妖小红娘');
INSERT INTO `yiyan` VALUES (10, 1, '一味地追求理想，总有一天会被现实背叛。', '名侦探柯南：绯色的子弹');
INSERT INTO `yiyan` VALUES (11, 1, 'SpringBoot不好用', '我');

-- ----------------------------
-- View structure for cvgroupanime
-- ----------------------------
DROP VIEW IF EXISTS `cvgroupanime`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cvgroupanime` AS select `anime`.`aid` AS `aid`,`anime`.`aname` AS `aname`,group_concat(`animecv`.`cvname` separator ',') AS `cvname` from ((`anime` join `cv2anime`) join `animecv`) where ((`anime`.`aid` = `cv2anime`.`aid`) and (`animecv`.`cvid` = `cv2anime`.`cvid`)) group by `anime`.`aid`,`anime`.`aname`;

-- ----------------------------
-- View structure for typegroupanime
-- ----------------------------
DROP VIEW IF EXISTS `typegroupanime`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `typegroupanime` AS select `anime`.`aid` AS `aid`,`anime`.`aname` AS `aname`,group_concat(`animetype`.`type` separator ',') AS `type` from ((`anime` join `type2anime` on((`anime`.`aid` = `type2anime`.`aid`))) join `animetype` on((`type2anime`.`tid` = `animetype`.`tid`))) where ((`anime`.`aid` = `type2anime`.`aid`) and (`type2anime`.`tid` = `animetype`.`tid`)) group by `anime`.`aid`,`anime`.`aname`;

-- ----------------------------
-- View structure for uploaderviaid
-- ----------------------------
DROP VIEW IF EXISTS `uploaderviaid`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `uploaderviaid` AS select `admin`.`adminname` AS `adminname`,`animeupdater`.`aid` AS `animeid`,`animeupdater`.`udate` AS `updatedate` from (`admin` left join `animeupdater` on((`admin`.`adminid` = `animeupdater`.`adminid`))) where (`animeupdater`.`aid` is not null);

-- ----------------------------
-- View structure for uploadervianame
-- ----------------------------
DROP VIEW IF EXISTS `uploadervianame`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `uploadervianame` AS select `uploaderviaid`.`adminname` AS `adminname`,`anime`.`aname` AS `aname`,`uploaderviaid`.`updatedate` AS `updatedate` from (`uploaderviaid` left join `anime` on((`uploaderviaid`.`animeid` = `anime`.`aid`)));

-- ----------------------------
-- Procedure structure for admin_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `admin_login`;
delimiter ;;
CREATE PROCEDURE `admin_login`(IN adminaccount VARCHAR(255))
BEGIN
	SELECT adminpsw FROM admin WHERE adminacc = adminaccount;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findallanimes
-- ----------------------------
DROP PROCEDURE IF EXISTS `findallanimes`;
delimiter ;;
CREATE PROCEDURE `findallanimes`()
BEGIN
	SELECT anime.aid,anime.aname,anime.ahot,anime.adesc,anime.alang,anime.astats,anime.acompany,anime.aepisode,anime.areldate,anime.arecommend,typegroupanime.type,cvgroupanime.cvname 
	FROM anime 
	INNER JOIN typegroupanime ON anime.aid = typegroupanime.aid 
	INNER JOIN cvgroupanime ON anime.aid = cvgroupanime.aid;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findanimebyid
-- ----------------------------
DROP PROCEDURE IF EXISTS `findanimebyid`;
delimiter ;;
CREATE PROCEDURE `findanimebyid`(IN id INT)
BEGIN
	SELECT anime.aid,anime.aname,anime.ahot,anime.adesc,anime.alang,anime.astats,anime.acompany,anime.aepisode,anime.areldate,anime.arecommend,typegroupanime.type,cvgroupanime.cvname 
	FROM anime 
	INNER JOIN typegroupanime ON anime.aid = typegroupanime.aid 
	INNER JOIN cvgroupanime ON anime.aid = cvgroupanime.aid 
	WHERE anime.aid = id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findanimelike
-- ----------------------------
DROP PROCEDURE IF EXISTS `findanimelike`;
delimiter ;;
CREATE PROCEDURE `findanimelike`(IN name VARCHAR(255))
BEGIN
	SELECT anime.aid,anime.aname,anime.ahot,anime.adesc,anime.alang,anime.astats,anime.acompany,anime.aepisode,anime.areldate,anime.arecommend,typegroupanime.type,cvgroupanime.cvname 
	FROM anime 
	INNER JOIN typegroupanime ON anime.aid = typegroupanime.aid 
	INNER JOIN cvgroupanime ON anime.aid = cvgroupanime.aid 
	WHERE anime.aname LIKE name;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findcomments
-- ----------------------------
DROP PROCEDURE IF EXISTS `findcomments`;
delimiter ;;
CREATE PROCEDURE `findcomments`(IN animeid INT)
BEGIN
	SELECT `user`.uname,`comment`.cmtext,`comment`.cmdate FROM `comment`,`user` WHERE `comment`.aid=animeid AND `user`.uid = `comment`.uid;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for rb
-- ----------------------------
DROP PROCEDURE IF EXISTS `rb`;
delimiter ;;
CREATE PROCEDURE `rb`()
begin
rollback;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for recommandanimes
-- ----------------------------
DROP PROCEDURE IF EXISTS `recommandanimes`;
delimiter ;;
CREATE PROCEDURE `recommandanimes`()
BEGIN
	SELECT aid,aname,astats,adesc FROM anime WHERE anime.arecommend=1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for updatecv
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatecv`;
delimiter ;;
CREATE PROCEDURE `updatecv`(in name VARCHAR(255),IN id INT)
BEGIN
	SET @cvid1 = (SELECT cvid FROM animecv WHERE cvname = name);
	IF (SELECT COUNT(1) FROM cv2anime WHERE aid=id AND cvid=@cvid1) THEN
	 SELECT * FROM cv2anime WHERE aid=id AND cvid=@cvid1;
	ELSE
		INSERT INTO cv2anime(cvid,aid) VALUES(@cvid1,id);
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for updatetype
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatetype`;
delimiter ;;
CREATE PROCEDURE `updatetype`(in type1 VARCHAR(255),IN id INT)
BEGIN
	SET @typeid = (SELECT tid FROM animetype WHERE type = type1);
	IF (SELECT COUNT(1) FROM type2anime WHERE aid=id AND tid=@typeid) THEN
		SELECT * FROM type2anime WHERE aid=id AND tid=@typeid;
	ELSE
		INSERT INTO type2anime(tid,aid) VALUES(@typeid,id);
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table admin
-- ----------------------------
DROP TRIGGER IF EXISTS `admindelete`;
delimiter ;;
CREATE TRIGGER `admindelete` BEFORE DELETE ON `admin` FOR EACH ROW if (SELECT COUNT(*) FROM admin)=1 then
call rb;
end if
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table anime
-- ----------------------------
DROP TRIGGER IF EXISTS `insertanime`;
delimiter ;;
CREATE TRIGGER `insertanime` AFTER INSERT ON `anime` FOR EACH ROW BEGIN
INSERT INTO animeupdater VALUES(new.aid,1,current_timestamp());
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table anime
-- ----------------------------
DROP TRIGGER IF EXISTS `deleteanime`;
delimiter ;;
CREATE TRIGGER `deleteanime` AFTER DELETE ON `anime` FOR EACH ROW BEGIN
DELETE FROM animeupdater WHERE animeupdater.aid = old.aid;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
