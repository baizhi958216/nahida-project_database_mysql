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

 Date: 22/12/2022 16:12:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `AdminID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `AdminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员昵称',
  `AdminAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `AdminPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`AdminID`) USING BTREE,
  INDEX `AdminAccount`(`AdminAccount` ASC) USING BTREE,
  INDEX `AdminName`(`AdminName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `admin` VALUES (14, 'gg', 'gg', 'gg');

-- ----------------------------
-- Table structure for anime
-- ----------------------------
DROP TABLE IF EXISTS `anime`;
CREATE TABLE `anime`  (
  `AnimeID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '动漫ID',
  `AnimeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '动漫名',
  `AnimeCompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动漫制作公司',
  `AnimeReleaseDate` date NULL DEFAULT NULL COMMENT '动漫首播日期',
  `AnimeEpisode` int UNSIGNED NULL DEFAULT 0 COMMENT '动漫已更新剧集',
  `AnimeStats` enum('连载中','已完结') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '连载中' COMMENT '动漫状态',
  `AnimeLanguage` enum('国语','粤语','日语','英语') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '日语' COMMENT '动漫语言',
  `AnimeHot` int NULL DEFAULT NULL COMMENT '动漫热度',
  `AnimeRecommend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '动漫是否上推荐',
  `AnimeDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '动漫剧情',
  PRIMARY KEY (`AnimeID`) USING BTREE,
  INDEX `AnimeName`(`AnimeName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anime
-- ----------------------------
INSERT INTO `anime` VALUES (1, '魔女之旅', 'C2C', '2020-10-02', 12, '已完结', '日语', 6, 'false', '某个地方有一位旅人，她的名字是伊蕾娜。是一位年纪轻轻就成了魔法使中最上位「魔女」的天才。因为向往着幼时读过的旅行故事，随意地进行着漫长的旅行。在这个广阔的世界里自由地漫步，接触着形形色色有趣的人，体味着人们美好的日常生活，她作为一名旅人，不带有任何目的地接触着各种国家的各色人群。还有同样数量的——「不必理会我。我只是一介旅人罢了。接下来还得继续前往下一个地方呢。」由魔女伊蕾娜所连接的，关于相遇和离别的故事……。');
INSERT INTO `anime` VALUES (2, '莉可丽丝', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'false', '安宁的日常——背后却暗藏秘密将犯罪防患于未然的秘密组织——“DA（Direct Attack）”隶属于DA的少女特工——“莉可丽丝”理所当然的日常，都要归功于她们。咖啡厅“莉可莉可” 作为DA支部，员工有号称史上最强莉可丽丝的精英·锦木千束、优秀却暗藏隐情的莉可丽丝·井上泷奈。这里供应的不光是咖啡和甜品，还有照顾孩子、代为购物、教外国人日语等服务，全都不像是“莉可丽丝”会做的事。自由随性又乐天的和平主义者·千束和效率至上的泷奈，反差巨大的两人组成搭档，开始了忙忙碌碌的每一天。');
INSERT INTO `anime` VALUES (3, '关于我转生变成史莱姆这档事 第二季', '8bit', '2021-01-05', 26, '已完结', '日语', 12, 'false', '主人公利姆鲁与仰慕他而聚集的众多魔物们所建立的国家「鸠拉·特恩佩斯特国」，经由与邻国的协议及交易，让「人类与魔物共同漫步的国家」这一温柔的理想逐步成形。利姆鲁作为曾是人类的史莱姆当然拥有「对人类的好意」……但这个世界中却存在着明确的「对魔物的敌意」。当这不合理的现实摆在眼前时，利姆鲁将做出选择。为了「什么都不想失去」——万众期待的转生喜剧突入暴风的新章！');
INSERT INTO `anime` VALUES (4, '被开除出勇者队伍的驯兽使，邂逅了最强种猫耳少女', 'EMT SQUARED', '2022-10-02', 12, '连载中', '日语', 23, 'true', '“雷因，你被解雇了”突然有一天，雷因被驱逐出勇者的队伍。他选择当一个冒险家作为以后生命之路，在考试期间帮助一个摔倒的女孩。女孩名为奏，是最最强大的“猫灵族”！受到奏的邀请，雷因作为驭兽使，两人决定签订契约并组成一个队伍。在另一方面，失去雷因的勇者队伍开始意识到他的重要性。“喵……和雷因在一起的时候，总是感到惊讶”\n“不会无聊吧？”“……哇！是啊”使役一切的驭兽使和最强的伙伴凌驾于勇者队伍——。和重要的伙伴相遇并成长的冒险幻想！');
INSERT INTO `anime` VALUES (5, '夫妇以上，恋人未满。', 'studio MOTHER', '2022-10-09', 11, '连载中', '日语', 32, 'true', '不起眼的男高中生药院次郎，在“夫妻实习”的课堂上，和绝对不可能有关系的班上的美少女渡边星一起生活。他们对彼此的印象也很差。“阴”和“阳”不匹配非常刺激。洗完澡后的突发事件，突然的接触麻烦！？次郎虽然闷闷不乐，但还是下意识地想……“喂，真的好好地玩夫妻游戏吧”互相有想法的次郎和星为了得到交换组合的权利，认真地扮演夫妻。然而，酸甜苦辣的夫妻生活逐渐让彼此意识到各自的魅力。比“恋人”更刺激的，辣妹和无异性缘男生的“夫妻游戏”开始了  。');
INSERT INTO `anime` VALUES (6, '契约之吻', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'false', '“贝隆市”——不属于任何国家，漂浮在太平洋上的巨型浮岛型城市。因其开采新能源资源“欧尔贡矿”而在这个世界上占有一席之地，贝隆市也经常发生被称为“D灾害”的由“恶魔”引起的特殊事件。\r\n只有一小部分人知道D灾害的存在，对其进行处理的是“PMC”（民间军事公司），生活在贝隆市的青年修则经营着一家，但公司的规模很小，而且修还要找工作，所以资金周转总是很困难。\r\n公私不分地、献身地支撑着修的生活的，是在贝隆市的学校上学的美少女高中生木更。还有一个，是修曾经所属的大型PMC的职员，也是他的前女友绫乃，她现在依然很关心修，对木更没有好感。\r\n木更对修有着强烈的执着，其根本在于两人的“契约”。\r\n她的真面目是恶魔。\r\n木更支撑着修的生活，也根据契约协助消灭恶魔。\r\n其代价是甜蜜而危险的“吻”。爱与契约，两人危险的羁绊。命运将会走向何方……');
INSERT INTO `anime` VALUES (7, '式守同学不只可爱而已', '动画工房', '2022-04-09', 12, '已完结', '日语', 22, 'false', '超级“帅气女友“登场！ 和泉是一名拥有不幸体质的高中男生，他有一个和他同班的女朋友，叫做式守。 式守的笑容十分甜美、温柔，跟和泉在一起的时候脸上总是洋溢着幸福。她平时可爱动人，心中满是爱情，但只要看到和泉遇到危险，她就会……摇身一变，变成“帅气女友”！满是可爱×帅气的式守跟和泉将与他们的小伙伴一起带来无限愉快的日常！1000%美好的爱情喜剧，即将开幕！');
INSERT INTO `anime` VALUES (8, '关于我转生变成史莱姆这档事 第一季', '8bit', '2018-10-02', 24, '已完结', '日语', 12, 'false', '史莱姆生活，开始了。上班族的三上悟在道路上被歹徒给刺杀身亡后，回过神来发现自己转生到了异世界。不过，自己居然是“史莱姆”！他在得到利姆鲁这个名字后开始了自己的史莱姆人生，随着与各个种族相处交流的过程中，他定下了一个目标——那就是“建立一个任何种族都能愉快地一起生活的国家”！');
INSERT INTO `anime` VALUES (9, '恋爱FLOPS', 'Passione', '2022-10-12', 10, '连载中', '日语', 22, 'true', '平凡的男子高中生柏树朝，像往常一样走在一成不变的通学路上。\r\n然而，正和出门前无意间打开的电视里播放的奇妙占卜说的一样，他在这个早晨遭遇到了各种各样的灾难。\r\n在一个接一个发生的灾难中，朝和5名少女发生了可说是最糟糕的相遇。\r\n当他身心俱疲、好不容易到达学校时，作为转校生和新任教师的5名少女的身影却再次出现在了他的面前。\r\n朝努力隐藏自己的脸，但根本藏不住……\r\n自称是朝的好友伊集院好雄，向朝询问与5人之间的关系。\r\n随着与5人相处，解开了彼此之间的误会，关系也稍微融洽了一些。\r\n放学后，朝打开鞋柜准备回家，却发现里面放着一封情书。\r\n寄件人不明的情书上，写着“在校舍后面的樱花树下等你”。这也如占卜所说的一样。\r\n事到如今，打算把一切都弄清楚的朝，向樱花树下走去。\r\n樱花飞舞的季节，5阵恋风带来的淡淡苦闷的青春爱情故事，现在，拉开帷幕!');
INSERT INTO `anime` VALUES (10, '摇曳百合', '动画工房', '2011-07-04', 12, '已完结', '日语', 12, 'false', '从今天起，有点天然呆的灯里（三上枝织 配音）正式成为一名初中生，开学第一天灯里加入了好友京子（大坪由佳 配音）和结衣（津田美波 配音）所在的“娱乐部”。所谓娱乐部，其实她们只是占领了已经废部的茶道社办公室，社团活动也只不过是各种优哉游哉的喝茶闲聊。灯里的同班同学千夏（大久保瑠美 配音）因为憧憬着隶属茶道社的姐姐，阴错阳差地加入了她们。\r\n　　四名少女在娱乐部度着轻松欢乐、又带点百合情节的日子，京子极其喜欢外形可爱的千夏，千夏则喜欢着很会照顾人的结衣。这样一来，身为主人公的灯里无形中受到了冷落，大家在娱乐部展开了讨论会，结果会引发什么样的爆笑故事？同时，擅自占用教室一事，引来了学生会的关注，娱乐部会面临废部危机吗？');
INSERT INTO `anime` VALUES (11, '摇曳百合2', '动画工房', '2012-07-02', 12, '已完结', '日语', 7, 'false', '故事发生在氛围轻松制度宽松的七森中学，为了打发无聊的课后时光，个性天真单纯的少女赤座灯里（三上枝织 配音）伙同童年好友岁纳京子（大坪由佳 配音）与船见结衣（津田美波 配音），利用荒废已久的茶道社组成了一个名为“娱乐部”的活动社团。之后，又有表面善良内心却极为腹黑的女孩吉川千夏（大久保瑠美 配音）在误打误撞之中加入，就这样，这个山寨社团的四人小组成立了。\n　　在这个没有正式申请的社团中，每天都发生着欢乐又爆笑的日常，可是没过多久，娱乐部的存在便被学生会发现了。作为副部长，杉浦绫乃（藤田咲 配音）怎能对此坐视不管？在娱乐部和学生会之间，一场轰轰烈烈的猫鼠大战开始了。');
INSERT INTO `anime` VALUES (12, '摇曳百合3', 'TYO Animations', '2015-08-05', 12, '已完结', '日语', 19, 'false', '故事发生在七森中学中，茶道社因为人气不佳最终面临闭社的悲惨命运，单纯天真懵懂无知的赤座灯里（三上枝织 配音）、开朗热情的暴走少女岁纳京子（大坪由佳 配音）、沉默寡言但却是吐槽担当的船见结衣（津田美波 配音）和看似可爱人畜无害实则十分腹黑的吉川千夏（大久保瑠美 配音）四名女生占据了茶道社的活动教室，在这里另起炉灶成立了娱乐部。故事的序幕就此拉开。\n　　娱乐部的存在竟然引起了学生会的注意，身世神秘的会长松本理世（后藤沙绪里 配音）和傲娇不坦率的副会长杉浦绫乃（藤田咲 配音）的介入让本来就热闹的社团生活增添了一份欢乐。');
INSERT INTO `anime` VALUES (13, '五等分的新娘 剧场版', 'Bibury Animation Studios', '2022-05-20', 1, '已完结', '日语', 0, 'true', '「濒临留级」、「讨厌念书」的五胞胎美少女，\n和身为兼差的家教老师，将他们引导到「毕业」的风太郎。\n迄今为止的努力都得到了回报，升上高三的五胞胎完成了毕业旅行，\n每个人都朝着「毕业」后的未来前行。\n与风太郎共度的时光中，五胞胎先后察觉到了自己对风太郎的爱意。\n风太郎与五胞胎的爱情会如何!? 未来的新娘是……\n可爱度500%的五胞胎恋爱喜剧，迎来完结──!! ');
INSERT INTO `anime` VALUES (14, '孤独摇滚！', '芳文社', '2022-10-08', 11, '连载中', '日语', 16, 'true', '作为网络吉他手“Guitar Hero”而广受好评的后藤独，在现实中却是个什么都不会的沟通障碍者。独有着组建乐队的梦想，但因为不敢向人主动搭话而一直没有成功，直到一天在公园中被伊地知虹夏发现并邀请进入缺少吉他手的“结束乐队”。可是，完全没有和他人合作经历的独，在人前完全发挥不出原本的实力。为了努力克服沟通障碍，独与“结束乐队”的成员们一同开始努力…… ');
INSERT INTO `anime` VALUES (15, '调教咖啡厅', 'A-1 Pictures', '2017-10-07', 12, '已完结', '日语', 0, 'false', '来到了有着傲娇、妹系等各种“属性”的咖啡厅，新人店员莓香竟然被店长要求\"抖S\"属性！？努力工作的同时，意外的也让\"抖S\"才能渐渐开花……充满欢乐的打工由此展开！');
INSERT INTO `anime` VALUES (16, '魔王学院的不适合者', 'SILVER LINK.', '2020-07-04', 13, '已完结', '日语', 0, 'false', '历经两千年的时光，苏醒了的暴虐魔王——\n但他在培育魔王候补的学院中的适性却是——“不适任”？！\n尽管具备能毁灭人类、精灵，甚至是众神的力量，暴虐魔王“阿诺斯·伏尔迪哥德”却厌倦了永无止尽的斗争，梦想着和平的世界进行转生。然而在两千年后，转生后的他所迎来的，却是调节和平生活而变得过于弱小的子孙们，以及各种衰退至极的魔法。\n阿诺斯虽然进入了对被视作魔王转世之人进行集中教育的“魔王学院”，但学院却无法看出他的实力，使得他被刻上不适任者这一烙印。不仅如此，传说中的魔王还变成了和自己完全不同的其他人。\n在众人都瞧不起他的环境里，他将唯一亲切对待自己的少女米夏纳为部下，作为不适任者（魔王），在魔族的等级制度上迈向巅峰。\n“不论天理、命运还是奇迹，在我的眼前只有俯首受戮一途而已。”');
INSERT INTO `anime` VALUES (17, '冰菓', '京都动画', '2012-04-22', 22, '已完结', '日语', 0, 'false', '在众多将要展开「玫瑰色」生活的高中生之中，本作的男主角折木奉太郎却是一个「灰色」的节能主义者。凡是没必要的事就不做，因为不想后悔，被人说是疏离、厌世也无所谓，因为这就是他的作风。这样的折木奉太郎，却因为姐姐的命令而进入了濒临废社的「古籍研究社」。研究社虽然好不容易招到了四名新社员，但却又卷入了四十五年前社长突然肄业的谜团之中。社长当年留下的名为「冰菓」的社刊，内里究竟隐藏了什么神秘的讯息呢……');
INSERT INTO `anime` VALUES (18, '雏子的笔记', 'Passione', '2017-04-07', 12, '已完结', '日语', 0, 'false', '樱木雏子是个不擅长和人交流的女孩子。为了改变一见人就像稻草人一样僵住的自己，以升入有着自己憧憬的演剧部的高中为契机而离开乡下的雏子，来到了住宿地点四季庄。那里住着喜爱书与食物的玖井菜、虽然年长却小巧玲珑又擅长料理的真雪、沉默而又身材拔群的房东千秋等住客……！？虽然有点奇怪却充满魅力的四季庄住民，与前稻草人少女所展开的可爱又快乐的演剧喜剧现在开幕！');
INSERT INTO `anime` VALUES (19, '宇崎学妹想要玩!', 'ENGI', '2022-07-10', 12, '已完结', '日语', 13, 'false', '性格有些孤僻喜爱安静的大学３年级生，樱井真一。总是被小一届，同高中毕业的学妹宇崎花，以各种照顾爱耍孤僻的学长的名义为由，进行各种无厘头的纠缠。虽然一开始觉得有点困扰，但却逐渐习惯起来…');
INSERT INTO `anime` VALUES (20, '宇崎酱想要玩耍 第二季', 'ENGI', '2022-10-01', 12, '连载中', '日语', 0, 'true', '#宇崎学妹想要玩#第二季制作决定！');

-- ----------------------------
-- Table structure for animecv
-- ----------------------------
DROP TABLE IF EXISTS `animecv`;
CREATE TABLE `animecv`  (
  `CVID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'CVID',
  `CVName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'CV名字',
  PRIMARY KEY (`CVID`) USING BTREE,
  UNIQUE INDEX `CVName`(`CVID` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animecv
-- ----------------------------
INSERT INTO `animecv` VALUES (1, '本渡枫');
INSERT INTO `animecv` VALUES (2, '花泽香菜');
INSERT INTO `animecv` VALUES (3, '黑泽朋世');
INSERT INTO `animecv` VALUES (4, '日笠阳子');
INSERT INTO `animecv` VALUES (5, '若山诗音');
INSERT INTO `animecv` VALUES (6, '安济知佳');
INSERT INTO `animecv` VALUES (7, '久野美咲');
INSERT INTO `animecv` VALUES (8, '冈咲美保');
INSERT INTO `animecv` VALUES (9, '三上枝织');
INSERT INTO `animecv` VALUES (10, '大久保瑠美');
INSERT INTO `animecv` VALUES (11, '大坪由佳');
INSERT INTO `animecv` VALUES (12, '松冈祯丞');
INSERT INTO `animecv` VALUES (13, '竹达彩奈');
INSERT INTO `animecv` VALUES (14, '伊藤美来');
INSERT INTO `animecv` VALUES (15, '佐仓绫音');
INSERT INTO `animecv` VALUES (16, '水濑祈');
INSERT INTO `animecv` VALUES (17, '齐藤壮马');
INSERT INTO `animecv` VALUES (18, '大西沙织');
INSERT INTO `animecv` VALUES (19, '山下诚一郎');
INSERT INTO `animecv` VALUES (20, '宫下早纪');
INSERT INTO `animecv` VALUES (21, '增田俊树');
INSERT INTO `animecv` VALUES (22, '高桥未奈美');
INSERT INTO `animecv` VALUES (23, '和气杏未');
INSERT INTO `animecv` VALUES (24, '小仓唯');
INSERT INTO `animecv` VALUES (25, '野上翔');
INSERT INTO `animecv` VALUES (26, '内田修一');
INSERT INTO `animecv` VALUES (27, '津田美波');
INSERT INTO `animecv` VALUES (28, '丰口惠美');
INSERT INTO `animecv` VALUES (29, '前野智昭');
INSERT INTO `animecv` VALUES (30, '古川慎');
INSERT INTO `animecv` VALUES (31, '小林亲弘');
INSERT INTO `animecv` VALUES (32, '千叶翔也');
INSERT INTO `animecv` VALUES (33, '田中美海');
INSERT INTO `animecv` VALUES (34, '指出毬亚');
INSERT INTO `animecv` VALUES (35, '高野麻里佳');
INSERT INTO `animecv` VALUES (36, '高桥李依');
INSERT INTO `animecv` VALUES (37, '会泽纱弥');
INSERT INTO `animecv` VALUES (38, 'Lynn');
INSERT INTO `animecv` VALUES (39, '渡边明乃');
INSERT INTO `animecv` VALUES (40, '松田健一郎');
INSERT INTO `animecv` VALUES (41, '长谷川芳明');
INSERT INTO `animecv` VALUES (42, '内田彩');
INSERT INTO `animecv` VALUES (43, '逢坂良太');
INSERT INTO `animecv` VALUES (44, '梅田修一朗');
INSERT INTO `animecv` VALUES (45, '松冈美里');
INSERT INTO `animecv` VALUES (46, '日高里菜');
INSERT INTO `animecv` VALUES (47, '冈本信彦');
INSERT INTO `animecv` VALUES (48, '福山润');
INSERT INTO `animecv` VALUES (49, '金元寿子');
INSERT INTO `animecv` VALUES (50, '花守由美里');
INSERT INTO `animecv` VALUES (51, '千本木彩花');
INSERT INTO `animecv` VALUES (52, '青山吉能');
INSERT INTO `animecv` VALUES (53, '铃代纱弓');
INSERT INTO `animecv` VALUES (54, '水野朔');
INSERT INTO `animecv` VALUES (55, '长谷川育美');
INSERT INTO `animecv` VALUES (56, '鬼头明里');
INSERT INTO `animecv` VALUES (57, '春野杏');
INSERT INTO `animecv` VALUES (58, '种崎敦美');
INSERT INTO `animecv` VALUES (59, '德井青空');
INSERT INTO `animecv` VALUES (60, '铃木达央');
INSERT INTO `animecv` VALUES (61, '楠木灯');
INSERT INTO `animecv` VALUES (62, '夏吉优子');
INSERT INTO `animecv` VALUES (63, '中村悠一');
INSERT INTO `animecv` VALUES (64, '佐藤聪美');
INSERT INTO `animecv` VALUES (65, '阪口大助');
INSERT INTO `animecv` VALUES (66, '雪野五月');
INSERT INTO `animecv` VALUES (67, '置鲇龙太郎');
INSERT INTO `animecv` VALUES (68, '由加奈');
INSERT INTO `animecv` VALUES (69, '小山茉美');
INSERT INTO `animecv` VALUES (70, '早见沙织');
INSERT INTO `animecv` VALUES (71, '茅野爱衣');
INSERT INTO `animecv` VALUES (72, 'M·A·O');
INSERT INTO `animecv` VALUES (73, '富田美忧');
INSERT INTO `animecv` VALUES (74, '东城日沙子');
INSERT INTO `animecv` VALUES (75, '吉田有里');
INSERT INTO `animecv` VALUES (76, '大空直美');
INSERT INTO `animecv` VALUES (77, '赤羽根健治');
INSERT INTO `animecv` VALUES (78, '高木朋弥');
INSERT INTO `animecv` VALUES (79, '秋元羊介');

-- ----------------------------
-- Table structure for animetype
-- ----------------------------
DROP TABLE IF EXISTS `animetype`;
CREATE TABLE `animetype`  (
  `TypeID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '动漫类型ID',
  `Type` enum('小说改','魔法','奇幻','架空','原创','战斗','日常','喜剧','动画','校园','百合','恋爱') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动漫类型名字',
  PRIMARY KEY (`TypeID`) USING BTREE
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
  `AnimeID` int UNSIGNED NOT NULL,
  `AdminID` int UNSIGNED NOT NULL COMMENT '动漫上传者ID',
  `UpdateDate` datetime NOT NULL COMMENT '动漫ID',
  INDEX `AnimeID`(`AnimeID` ASC) USING BTREE,
  INDEX `AdminID`(`AdminID` ASC) USING BTREE,
  CONSTRAINT `animeupdater_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
INSERT INTO `animeupdater` VALUES (11, 1, '2022-12-15 03:21:55');
INSERT INTO `animeupdater` VALUES (12, 1, '2022-12-15 03:22:42');
INSERT INTO `animeupdater` VALUES (13, 1, '2022-12-15 03:23:23');
INSERT INTO `animeupdater` VALUES (14, 1, '2022-12-15 03:28:42');
INSERT INTO `animeupdater` VALUES (15, 1, '2022-12-15 03:30:38');
INSERT INTO `animeupdater` VALUES (16, 1, '2022-12-15 03:32:15');
INSERT INTO `animeupdater` VALUES (17, 1, '2022-12-15 03:35:08');
INSERT INTO `animeupdater` VALUES (18, 1, '2022-12-15 03:36:53');
INSERT INTO `animeupdater` VALUES (19, 1, '2022-12-15 03:38:37');
INSERT INTO `animeupdater` VALUES (20, 1, '2022-12-15 03:39:34');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `CommentID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '回复ID',
  `CommentDate` datetime NULL DEFAULT NULL COMMENT '回复日期',
  `CommentText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回复内容',
  `UserID` int UNSIGNED NOT NULL COMMENT '用户ID',
  `AnimeID` int UNSIGNED NOT NULL COMMENT '动漫ID',
  PRIMARY KEY (`CommentID`) USING BTREE,
  INDEX `UserID`(`UserID` ASC, `AnimeID` ASC) USING BTREE,
  INDEX `AmimeID`(`AnimeID` ASC) USING BTREE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`AnimeID`) REFERENCES `anime` (`AnimeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '2022-12-03 19:19:57', '对伊蕾娜一直不离不弃，一心一意，一直默默无闻的陪伴在伊蕾娜左右的存在又是谁呢——\r\n扫帚:没错，就是我', 1, 1);
INSERT INTO `comment` VALUES (2, '2022-12-03 19:21:56', '你看，你看这伊蕾娜，刚来就摸别人的手，实在是太屑了！！！就是，就是，这个伊蕾娜真是太屑了！！！', 2, 1);
INSERT INTO `comment` VALUES (3, '2022-12-04 23:22:03', '我的！我的！', 2, 1);
INSERT INTO `comment` VALUES (4, '2022-12-04 23:22:33', '为什么这部番没有魔男？因为魔男在更衣室里', 3, 1);
INSERT INTO `comment` VALUES (5, '2022-12-04 23:23:09', '真想不到这个公路番经费这么足，甚至人物线条比隔壁非常可爱和夜叉姬还要好看！伊雷娜实在是太漂亮了！', 4, 1);
INSERT INTO `comment` VALUES (6, '2022-12-04 23:23:30', '老婆老婆老婆老婆老婆老婆老婆老婆老婆恰个v', 1, 1);
INSERT INTO `comment` VALUES (7, '2022-12-04 23:24:16', '泷奈：杀入东京，夺了鸟位。千束哥哥当大总统，我们几个做大官。大口吃牛排，大碗喝红酒，大秤分刀乐。', 1, 2);
INSERT INTO `comment` VALUES (8, '2022-12-04 23:24:39', '我是鱼鱼，哈哈哈，我是鳗鱼，嗨害嗨', 2, 2);
INSERT INTO `comment` VALUES (9, '2022-12-04 23:25:10', '心脏:无所谓 我会逃走', 2, 2);
INSERT INTO `comment` VALUES (10, '2022-12-04 23:25:35', 'da是真的垃 系统日常宕机 一线作战人员也没点警觉 看到无人机在动都没点反应 我的评价是还不如叙利亚民兵', 4, 2);
INSERT INTO `comment` VALUES (11, '2022-12-15 10:57:20', '别问，都是我老婆', 5, 5);
INSERT INTO `comment` VALUES (12, '2022-12-15 11:04:02', '啊', 5, 1);
INSERT INTO `comment` VALUES (13, '2022-12-20 07:21:17', '好( •̀ ω •́ )y', 6, 3);
INSERT INTO `comment` VALUES (14, '2022-12-20 09:49:41', '不愧是我老婆', 6, 2);
INSERT INTO `comment` VALUES (15, '2022-12-21 01:59:44', '啊卡哇伊~~~', 6, 7);

-- ----------------------------
-- Table structure for cv2anime
-- ----------------------------
DROP TABLE IF EXISTS `cv2anime`;
CREATE TABLE `cv2anime`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `AnimeID` int UNSIGNED NOT NULL COMMENT '动漫ID',
  `CVID` int UNSIGNED NOT NULL COMMENT 'CVID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `CVID`(`CVID` ASC) USING BTREE,
  CONSTRAINT `cv2anime_ibfk_1` FOREIGN KEY (`CVID`) REFERENCES `animecv` (`CVID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cv2anime
-- ----------------------------
INSERT INTO `cv2anime` VALUES (5, 2, 5);
INSERT INTO `cv2anime` VALUES (6, 2, 6);
INSERT INTO `cv2anime` VALUES (7, 2, 7);
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
INSERT INTO `cv2anime` VALUES (82, 3, 8);
INSERT INTO `cv2anime` VALUES (83, 3, 28);
INSERT INTO `cv2anime` VALUES (84, 3, 29);
INSERT INTO `cv2anime` VALUES (85, 3, 30);
INSERT INTO `cv2anime` VALUES (86, 3, 31);
INSERT INTO `cv2anime` VALUES (96, 1, 2);
INSERT INTO `cv2anime` VALUES (97, 1, 3);
INSERT INTO `cv2anime` VALUES (98, 1, 1);
INSERT INTO `cv2anime` VALUES (99, 1, 4);
INSERT INTO `cv2anime` VALUES (101, 11, 27);
INSERT INTO `cv2anime` VALUES (102, 11, 14);
INSERT INTO `cv2anime` VALUES (103, 11, 10);
INSERT INTO `cv2anime` VALUES (104, 11, 9);
INSERT INTO `cv2anime` VALUES (105, 11, 11);
INSERT INTO `cv2anime` VALUES (106, 12, 9);
INSERT INTO `cv2anime` VALUES (107, 12, 11);
INSERT INTO `cv2anime` VALUES (108, 12, 27);
INSERT INTO `cv2anime` VALUES (109, 12, 10);
INSERT INTO `cv2anime` VALUES (110, 13, 12);
INSERT INTO `cv2anime` VALUES (111, 13, 2);
INSERT INTO `cv2anime` VALUES (112, 13, 13);
INSERT INTO `cv2anime` VALUES (113, 13, 14);
INSERT INTO `cv2anime` VALUES (114, 13, 15);
INSERT INTO `cv2anime` VALUES (115, 13, 16);
INSERT INTO `cv2anime` VALUES (120, 15, 23);
INSERT INTO `cv2anime` VALUES (121, 15, 56);
INSERT INTO `cv2anime` VALUES (122, 15, 57);
INSERT INTO `cv2anime` VALUES (123, 15, 58);
INSERT INTO `cv2anime` VALUES (124, 15, 59);
INSERT INTO `cv2anime` VALUES (125, 15, 29);
INSERT INTO `cv2anime` VALUES (126, 15, 60);
INSERT INTO `cv2anime` VALUES (127, 16, 60);
INSERT INTO `cv2anime` VALUES (128, 16, 61);
INSERT INTO `cv2anime` VALUES (129, 16, 62);
INSERT INTO `cv2anime` VALUES (130, 17, 63);
INSERT INTO `cv2anime` VALUES (131, 17, 64);
INSERT INTO `cv2anime` VALUES (132, 17, 65);
INSERT INTO `cv2anime` VALUES (133, 17, 71);
INSERT INTO `cv2anime` VALUES (134, 17, 66);
INSERT INTO `cv2anime` VALUES (135, 17, 67);
INSERT INTO `cv2anime` VALUES (136, 17, 68);
INSERT INTO `cv2anime` VALUES (137, 17, 69);
INSERT INTO `cv2anime` VALUES (138, 17, 70);
INSERT INTO `cv2anime` VALUES (139, 18, 72);
INSERT INTO `cv2anime` VALUES (140, 18, 73);
INSERT INTO `cv2anime` VALUES (141, 18, 24);
INSERT INTO `cv2anime` VALUES (142, 18, 74);
INSERT INTO `cv2anime` VALUES (143, 18, 35);
INSERT INTO `cv2anime` VALUES (144, 18, 75);
INSERT INTO `cv2anime` VALUES (145, 19, 76);
INSERT INTO `cv2anime` VALUES (146, 19, 77);
INSERT INTO `cv2anime` VALUES (147, 19, 13);
INSERT INTO `cv2anime` VALUES (148, 19, 78);
INSERT INTO `cv2anime` VALUES (149, 19, 79);
INSERT INTO `cv2anime` VALUES (150, 19, 70);
INSERT INTO `cv2anime` VALUES (169, 4, 32);
INSERT INTO `cv2anime` VALUES (170, 4, 33);
INSERT INTO `cv2anime` VALUES (171, 4, 34);
INSERT INTO `cv2anime` VALUES (172, 4, 35);
INSERT INTO `cv2anime` VALUES (173, 4, 36);
INSERT INTO `cv2anime` VALUES (174, 4, 10);
INSERT INTO `cv2anime` VALUES (185, 5, 8);
INSERT INTO `cv2anime` VALUES (186, 5, 28);
INSERT INTO `cv2anime` VALUES (187, 5, 29);
INSERT INTO `cv2anime` VALUES (188, 5, 30);
INSERT INTO `cv2anime` VALUES (189, 5, 31);
INSERT INTO `cv2anime` VALUES (196, 9, 14);
INSERT INTO `cv2anime` VALUES (197, 9, 36);
INSERT INTO `cv2anime` VALUES (198, 9, 49);
INSERT INTO `cv2anime` VALUES (199, 9, 43);
INSERT INTO `cv2anime` VALUES (200, 9, 35);
INSERT INTO `cv2anime` VALUES (201, 9, 48);
INSERT INTO `cv2anime` VALUES (206, 14, 52);
INSERT INTO `cv2anime` VALUES (207, 14, 53);
INSERT INTO `cv2anime` VALUES (208, 14, 54);
INSERT INTO `cv2anime` VALUES (209, 14, 55);
INSERT INTO `cv2anime` VALUES (222, 20, 76);
INSERT INTO `cv2anime` VALUES (223, 20, 77);
INSERT INTO `cv2anime` VALUES (224, 20, 13);
INSERT INTO `cv2anime` VALUES (225, 20, 78);
INSERT INTO `cv2anime` VALUES (226, 20, 79);
INSERT INTO `cv2anime` VALUES (227, 20, 70);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `ImageID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `AdminID` int UNSIGNED NOT NULL COMMENT '管理员id',
  `ImageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片id',
  PRIMARY KEY (`ImageID`) USING BTREE,
  INDEX `AdminID`(`AdminID` ASC) USING BTREE,
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `NewsID` int NOT NULL,
  `NewsTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NewsCategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NewsAuthor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NewsDate` datetime NULL DEFAULT NULL,
  `NewsViewCount` int NULL DEFAULT NULL,
  `NewsContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`NewsID`) USING BTREE,
  UNIQUE INDEX `NewsID`(`NewsID` ASC) USING BTREE,
  INDEX `NewsAuthor`(`NewsAuthor` ASC) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`NewsAuthor`) REFERENCES `admin` (`AdminName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '《灌篮高手》特别资料艺术书收录作者极珍短篇漫画', '周边', '纳西妲', '2022-12-12 14:52:17', 883, '<p>12月12日今天，为了与正在热映的《灌篮高手》全新动画电影《THE FIRST SLAM DUNK》助势联动，官方宣布于12月15日推出特别资料艺术书《THE FIRST SLAM DUNK\r\n        re:SOURCE》，除了收录了原作者极珍短篇漫画《耳钉》外，还有更多珍贵资料！<br>\r\n        《灌篮高手THE FIRST SLAM\r\n        DUNK》由原作者井上雄彦编剧执导，东映动画制作，武部聪志和10-FEET打造音乐，此前已于12月3日在日本上映，预定2023年1月12日在中国香港及澳门上映，1月13日在中国台湾上映。<br>\r\n        资料艺术书《THE FIRST SLAM DUNK re:SOURCE》收录了原作者井上雄彦在创作影片时的花絮和点点滴滴，而且收录了超珍贵的短篇漫画《耳钉》，整书176页，定价1980日元。\r\n    </p>');
INSERT INTO `news` VALUES (2, '《进击的巨人》谏山创谈及自己对于漫威开始感到厌倦：「看了《女浩克》第一集后就没看了」', '其他', '纳西妲', '2022-12-13 14:54:13', 885, '<p>日前日本漫画家谏山创老师，在接受外媒《Anime News\r\n        Network》浅谈关于《进击的巨人》（进撃の巨人）的创作历程，以及漫画完结后的规划走向时，也额外谈及了一向热爱收看美剧的他，最近是否也有在迪士尼自家串流平台Disney+上，收看任何旗下的节目。<br>\r\n        「我的确订阅了蛮多的影视串流平台，在Disney+上也观看了不少有趣的作品。但坦白说，我其实已经开始对于漫威感到有些厌倦了，」谏山创老师回答道，「最近的话，是看了《律师女浩克》（She-Hulk: Attorney at\r\n        Law）第一集后，就没有再持续看下去了。」<br>\r\n        「其实我都会固定在我自己所订阅的平台上，收看一些我很感兴趣的影视作品，就最近比较常关注的就是《杀手进城》（Barry）这部美剧了。不过，但也因为看的作品实在太多，我没有办法全部一一举例出来，真是不好意思。」谏山创老师说。\r\n    </p>\r\n    <p>事实上，自漫威电影宇宙开启第四阶段以来，就开始逐渐走下坡，甚至有不少观众也开始出现了「疲劳现象」，再加上品质每况愈下的窘境，使得观众对于超级英雄题材失去了兴趣，也许谏山创老师也是其中之一位也说不定。</p>\r\n');
INSERT INTO `news` VALUES (3, '《铁甲万能侠》动画歌之帝王 水木一郎大哥因癌离世 享寿 74 岁」', '其他', '纳西妲', '2022-12-12 14:55:12', 873, '<p>人称「动画歌之帝王」的知名动漫歌手水木一郎，今天其事务所发表消息，他已经因肺癌而离世，享寿 74 岁<br>\r\n跟据事务所 Yellow Bird 发表，水木一郎于 2022 年 12 月 6 日因肺癌而离世，对此心感哀悼之意。事务所同时透露了他于去年 4 月末发现患上肺癌，一直进行放射性与药物治疗，与病魔斗争了约 1 年 7 个月，直至 12 月 6 日在医院离世。</p>\r\n<p>他一直以「生涯现役」为目标，就算面对病魔也依然继续进行活动，就算不能进行如自己所愿的演出也继续坚持，在 11 月 27 日最后的舞台活动上也保持满面的笑容。</p>\r\n<p>水木一郎于 1968 年加盟成为日本古伦美亚唱片公司的歌手，曾演唱过《铁甲万能侠》、《巴比伦二世》、《宇宙骑士》、《幪面超人》、《超级战队系列》等众多主题曲，主唱的歌曲已超过了1000首，人称「动画歌之帝王」。</p>\r\n');
INSERT INTO `news` VALUES (4, '剧场版《灌篮高手The First》上映倒数仅剩1日　安西教练首度现身最新30秒宣传片', '电影', '纳西妲', '2022-12-02 14:57:03', 1102, '<p>虽然中国台湾还需要再等上一个月的时间，才能够看到《灌篮高手》（SLAM DUNK）剧场版《灌篮高手The First》（THE FIRST SLAM DUNK），但日本就即将在2022年12月3日，也就是明天正式上映了！\r\n    </p>\r\n    <p>也因此，在今日东映动画官方再度于YouTube上释出全新30秒宣传影片，不仅樱木花道、流川枫、赤木刚宪、宫城良田，以及三井寿等湘北五位先发成员集结，坐镇于湘北队的「安西教练」也首度出现于本次预告影片中，看起来全国大赛篇真的是越来越有希望了！<br>\r\n    </p>\r\n    <p><iframe src=\"//player.bilibili.com/player.html?aid=220794330&amp;bvid=BV1j841157Z7&amp;cid=909528777&amp;page=1\"\r\n            scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\"\r\n            style=\"width: 466px; height: 485.767px;\" width=\"466\" height=\"380\" frameborder=\"no\"><span\r\n                data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\"\r\n                class=\"mce_SELRES_start\">﻿</span> </iframe><br>\r\n        《灌篮高手》是于1990年时于集英社旗下杂志《週刊少年Jump》开始连载，讲述「外行人」樱木花道一开始只是为追求喜欢的女孩子赤木晴子而加入湘北篮球队，却也发现自己也渐渐喜欢上篮球这项运动。</p>\r\n    <p>《灌篮高手The First》于日本2022年12月3日上映，中国台湾方面则是预计将在2023年1月13日上映，更多资讯有待片商日后的进一步公告。</p>');
INSERT INTO `news` VALUES (5, '2023年1月新番《生而为狗 我很幸福》猫谷美结 角色PV公开', '动画', '纳西妲', '2022-12-10 14:58:29', 1213, '<p>TV动画《变成狗后被喜欢的人捡了。》（生而为狗 我很幸福）猫谷美结 角色PV公开，将于2023年1月6日开播。</p>\r\n<p>片头曲：《逆境☆不惑☆フラクション》<br>\r\n作词：佐咲紗花　作曲・编曲曲：酒井陽一<br>\r\n歌：橋本みゆき,榊原ゆい,Rita with AiRI,Ayumi.,片霧烈火,川村ゆみ,佐咲紗花,Duca,中恵光城,のみこ,美郷あき,yozuca*,rino,riya(eufonius)</p>\r\n<p>【STAFF】<br>\r\n原作： 古川五勢（講談社「月刊少年マガジンR」連載）<br>\r\n导演：安ドウタカシ<br>\r\n视觉导演（Visual Director）：斉藤久<br>\r\n角色设计・总作画监督：森田和明<br>\r\n音乐：菊池達也（marble）<br>\r\n音响监督：吉田光平<br>\r\n动画制作：Quad</p>\r\n<p>【CAST】<br>\r\nポチ太役：梅田修一朗<br>\r\n犬飼加恋役：会沢紗弥<br>\r\n猫谷ミケ役：相良茉優<br>\r\n月城うさぎ役：小坂井祐莉絵</p>');
INSERT INTO `news` VALUES (6, '《进击的巨人》动画终章完结篇新艺图 众人对峙艾伦巨人', '动画', '纳西妲', '2022-11-14 14:59:25', 1143, '<p>11月13日晚间，《进击的巨人》官方举行小型活动，公开了动画终章完结篇新艺图，主角众人对峙艾伦巨人走向完结，完结篇预定2023年开播，敬请期待。</p>\r\n\r\n    <p>&nbsp;•《进击的巨人》是日本漫画家谏山创创作的漫画作品，漫画已经于去年4月完结，这是他的首部连载作品，在讲谈社《别册少年Magazine》2009年10月号（创刊号）上开始连载。故事建立在人类与巨人的冲突上，人类居住在由高墙包围的城市，对抗会食人的巨人\r\n    </p>\r\n    <p>•2013年时《进击的巨人》TV动画首次播出，迅速在全世界刮起巨人风，称其当年的年度话题动漫也不为过，而第1话的题名《致二千年后的你》还有多少粉丝记得？经过漫长的9年时间，故事终于迎来了伏笔的兑现。</p>\r\n    <p>•另外，作为预热，本周《进击的巨人》TV动画最终季的Part1与Part2的内容将于GYAO!重新发布，感兴趣的粉丝可以关注下了。</p>\r\n');
INSERT INTO `news` VALUES (7, '轻小说《我推是反派大小姐》TV动画化、先导PV公开', '动画', '纳西妲', '2022-12-14 09:52:47', 865, '<p>轻小说作家いのり。原作、花ヶ田插画轻小说《我推是反派大小姐》宣布TV动画化，先导PV、视觉图与贺图公开，将于2023年播出。</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1Av4y197e4\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 466px; height: 373.667px;\" width=\"466\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>「虽然我是乙女向游戏的女主角，但我不能喜欢反派大小姐吗？」<br>\n就职于黑心企业的社畜OL大桥零转生成为了乙女向游戏「Revolution」的女主角。<br>\n转生后的她想做的，不是与攻略对象们谈恋爱——而是一味地疼爱调戏反派大小姐克莱尔·弗朗索瓦。</p>\n<p>不仅没有对克莱尔的坏心眼产生反感，反而还高兴地接受了。将自己别扭的爱转向蕾的反派大小姐克莱尔，她的未来究竟是哪边？</p>\n<p>【STAFF】<br>\nスタッフ<br>\n原作：いのり。（愛中出版・一迅社刊）<br>\n角色原案：花ヶ田、青乃下<br>\n导演：大庭秀昭<br>\n系列构成・剧本：久尾歩<br>\n角色设计：佐藤陽子<br>\n音响监督：高桑一<br>\n音乐：朝倉紀行・兎と馬<br>\n动画制作：プラチナビジョン</p>\n<p>【CAST】<br>\nレイ＝テイラー：芹澤優<br>\nクレア＝フランソワ：奈波果林</p>');
INSERT INTO `news` VALUES (8, '2023年1月新番《不相信人类的冒险者们好像要去拯救世界》角色PV缇娅娜篇公开', '动画', '纳西妲', '2022-12-14 09:56:19', 863, '<p>TV动画《不相信人类的冒险者们好像要去拯救世界》角色PV第二弹缇娅娜篇及视觉图公开，将于2023年1月10开播</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1WP4y1D7B7\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 466px; height: 373.667px;\" width=\"466\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>缇娅娜 CV：渡部纱弓</p>\n<p>被解除婚约并遭到驱逐的原贵族千金。<br>\n沦为平民后迷上了赌博。<br>\n使用魔杖释放魔法，不擅长土和火属性。</p>\n<p>【STAFF】<br>\n原作：富士伸太（『人间不信の冒険者たちが世界を救うようです』MFブックス/KADOKAWA刊）<br>\n角色原案：黒井ススム<br>\n原作企画：フロンティアワークス<br>\n导演・系列构成：伊魔崎斋<br>\n角色设计・总作画监督：长尾浩生<br>\n道具设计：野沢弘树<br>\n色彩设计：近藤直登<br>\n美术监督：SeoJungho<br>\n美术设定：中原英统<br>\n助导演・撮影监督・编集：堀川和人<br>\n音乐：高桥 谅<br>\n音响监督：纳谷僚介<br>\n音乐制作：波丽佳音<br>\n音乐制作协力：Apdream<br>\n动画制作：GEEKTOYS<br>\n动画制作协力：Seven</p>\n<p>【CAST】<br>\nニック：小林裕介<br>\nティアーナ：渡部纱弓<br>\nカラン：菊池纱矢香<br>\nゼム：土岐隼一<br>\nキズナ：小松未可子<br>\nアゲート：石原夏织</p>');
INSERT INTO `news` VALUES (9, 'TV动画《SSSS.古立特》与《SSSS.电光机王》剧场总集篇PV 与主视觉图公开', '动画', '纳西妲', '2022-12-14 09:59:16', 829, '<p>TV动画《SSSS.古立特》与《SSSS.电光机王》剧场总集篇宣布将分别于2023年1月20日、3月10日在日本剧场限定两周上映，并同时公开了PV 与主视觉图</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1GK411r7uU\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 466px; height: 373.667px;\" width=\"466\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p><img width=\"466\" decoding=\"async\" title=\"TV动画《SSSS.古立特》与《SSSS.电光机王》剧场总集篇PV 与主视觉图公开\" src=\"http://tvax4.sinaimg.cn/large/006yt1Omgy1h92h1gnqpqj30xc1b4qkt.jpg\" alt=\"TV动画《SSSS.古立特》与《SSSS.电光机王》剧场总集篇PV 与主视觉图公开\"></p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV19V4y1w7Jq\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 466px; height: 373.667px;\" width=\"466\" height=\"380\" frameborder=\"no\"></iframe></p>');
INSERT INTO `news` VALUES (10, '《无职转生II》确定2023年内播出，内山夕实通过再次试音，续演少年期鲁迪乌斯', '声优', '纳西妲', '2022-12-14 10:07:42', 843, '<p>电视动画《无职转生 II ～到了异世界就拿出真本事～》公开前导海报。本作描述 34 岁家裡蹲男性转生到剑与魔法的异世界，成为一名叫作鲁迪乌斯的少年，开始了新的人生。第二期前导海报中可以看到长大了的鲁迪乌斯，以及后方穿著斗篷的白发角色。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6230 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239281.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239281.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239281.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\"><br>\n延续第一期，鲁迪乌斯由内山夕实声演，不过在决定人选之前，制作组其实展开了相当长时间的讨论，最后请内山夕实重新试音之后，再度录取她。内山表示：「这次我依旧担任二期动画中鲁迪乌斯的配音。鲁迪乌斯在作品中的成长是相当重要的要素，制作组慎重地重新试音之后才选择了我，也让我再次绷紧了神经，想要带著这样的心情来面对这次的配音。」</p>\n<p>(c)理不尽な孙の手/MFブックス/「无职転生 Ⅱ」製作委员会</p>');
INSERT INTO `news` VALUES (11, '2023年1月新番《间谍教室》正式PV 与主视觉图公开', '动画', '纳西妲', '2022-12-15 21:11:55', 885, '<p>TV动画《间谍教室》正式PV 与主视觉图公开，将于2023年1月5日开播。</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1wR4y1k77e\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 365.433px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>片头曲：nonoc《灯火》</p>\n<p><img decoding=\"async\" title=\"2023年1月新番《间谍教室》正式PV 与主视觉图公开\" width=\"460\" src=\"http://tva3.sinaimg.cn/large/006yt1Omgy1h93mkn48ahj30nj0xcdl7.jpg\" alt=\"2023年1月新番《间谍教室》正式PV 与主视觉图公开\"></p>\n<p>【STAFF】<br>\n原作：竹町（株式会社KADOKAWA Fantasia文库刊）<br>\n原作插画：トマリ<br>\n导演：川口敬一郎<br>\n助导演：池端隆史<br>\n系列构成：猪爪慎一<br>\n角色设计：木野下澄江<br>\n副角色设计：枡田邦彰、市松模样<br>\n道具设计：岩畑刚一、铃木典孝<br>\n枪械设定：常木志伸<br>\n服装设计：本间理莉<br>\n主要原画师：枡田邦彰、佐藤元昭、清水庆太、穂积彩夏<br>\n3D监督：小川耕平<br>\n3DLO/3DCG：Marco、デジタルモーション<br>\n美术背景：プロダクションアイ<br>\n美术监督：海野よしみ<br>\n美术板：槻舘育子<br>\n美术设定：长泽顺子<br>\n色彩设计：岩井田洋<br>\n摄影监督：难波史<br>\n编集：丸山流美<br>\n音响监督：纳谷僚介<br>\n音响制作：スタジオマウス<br>\n音乐：藤泽庆昌<br>\n音乐制作：KADOKAWA<br>\n动画制作：feel.</p>\n<p>【CAST】<br>\n莉莉：雨宫天<br>\n格蕾缇：伊藤美来<br>\n吉维娅：东山奈央<br>\n莫妮卡：悠木碧<br>\n缇娅：上坂堇<br>\n莎拉：佐仓绫音<br>\n阿涅特：楠木灯<br>\n克劳斯：梅原裕一郎</p>');
INSERT INTO `news` VALUES (12, '2023年1月新番《阿鲁斯的巨兽》第一弹PV公开', '动画', '纳西妲', '2022-12-15 21:13:23', 840, '\n\n				\n		<p>TV动画《阿鲁斯的巨兽》第一弹PV公开，将于2023年1月7日开播，</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1DP4y1D76w\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 365.433px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>片头曲： PENGUIN RESEARCH『変幻自在』<br>\n片尾曲： 遥海『名もない花』</p>\n<p><img decoding=\"async\" title=\"2023年1月新番《阿鲁斯的巨兽》第一弹PV公开\" src=\"http://tvax3.sinaimg.cn/large/006yt1Omgy1h93nbqqy9qj31hc0u0wi6.jpg\" width=\"460\" alt=\"2023年1月新番《阿鲁斯的巨兽》第一弹PV公开\"></p>\n<p>【STAFF】<br>\n导演：オグロアキラ<br>\n角色原案：大枪苇人<br>\n系列构成・剧本：海法纪光<br>\n角色设计：清水洋、加藤真人<br>\n音乐：片山修志、铃木暁也<br>\n色彩设计：田中美穂<br>\n美术监督・美术设定：外谷恵美<br>\n撮影监修：山田和弘<br>\n撮影监督：长谷川奈穂<br>\n编集：本田优规<br>\n音响监督：田中亮<br>\n音响制作：ビットグルーヴプロモーション<br>\n动画制作：旭 Production</p>\n<p>【CAST】<br>\nクウミ：羊宫妃那<br>\nジイロ：森川智之<br>\nミャア：芹泽优<br>\nメラン：峯田大梦<br>\nロマーナ：日笠阳子<br>\nツルギ：濑户麻沙美<br>\nシャルト：仓持若菜<br>\nファザード：竹内良太<br>\nトオカ：青耶木真有<br>\nゼン：绪方贤一<br>\nメザミ：田丸笃志<br>\nバクラ：菅生隆之</p>\n\n	');
INSERT INTO `news` VALUES (13, '2023年1月新番《在地下城寻求邂逅是否搞错了什么》第四季「灾厄篇」正式PV公开', '动画', '纳西妲', '2022-12-15 21:15:24', 881, '\n\n				\n		<p>TV动画《在地下城寻求邂逅是否搞错了什么&nbsp;第四季 深章 灾厄篇》正式预告公开，将于2023年1月5日开播。</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1J14y1T7eD\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 365.433px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>片头曲：早见沙织「視紅」<br>\n片尾曲：sajou no hana「切り傷」</p>\n<p><img decoding=\"async\" title=\"2023年1月新番《在地下城寻求邂逅是否搞错了什么》第四季「灾厄篇」正式PV公开\" width=\"460\" src=\"http://tvax2.sinaimg.cn/large/006yt1Omgy1h93n3jwd2rj31hc0u0aem.jpg\" alt=\"2023年1月新番《在地下城寻求邂逅是否搞错了什么》第四季「灾厄篇」正式PV公开\"></p>\n<p>【STAFF】<br>\n原作：大森藤ノ（GA文库／SBクリエイティブ刊）<br>\n角色原案：ヤスダスズヒト<br>\n导演：橘秀树<br>\n系列构成：大森藤ノ、白根秀树<br>\n角色设计：木本茂树<br>\n美术监督：金廷连（ムーンフラワー）<br>\n色彩设计：安藤智美<br>\n摄影监督：福世晋吾<br>\n剪辑：坪根健太郎（REAL-T）<br>\n音响监督：明田川 仁<br>\n音乐：井内啓二<br>\n制作：EGG FIRM／SBクリエイティブ<br>\n动画制作：J.C.STAFF</p>\n<p>【CAST】<br>\nベル・クラネル：松岡禎丞<br>\nヘスティア：水瀬いのり<br>\nリリルカ・アーデ：内田真礼<br>\nヴェルフ・クロッゾ：細谷佳正<br>\nヤマト・命：赤﨑千夏<br>\nサンジョウノ・春姫：千菅春香<br>\nカシマ・桜花：興津和幸<br>\nヒタチ・千草：井口裕香<br>\nダフネ・ラウロス：小若和郁那<br>\nカサンドラ・イリオン：真野あゆみ<br>\nアイシャ・ベルカ：渡辺明乃<br>\nリュー・リオン：早見沙織<br>\nアストレア：中原麻衣<br>\nアリーゼ・ローヴェル：花守ゆみり<br>\nゴジョウノ・輝夜：千本木彩花<br>\nライラ：諏訪彩花</p>\n\n	');
INSERT INTO `news` VALUES (14, 'JOJO第9部《JOJOLANDS》23年2月连载', '漫画', '纳西妲', '2022-12-15 21:16:54', 964, '\n\n				\n		<p>荒木飞吕彦原作的《JOJO的奇妙冒险》第9部漫画《JOJOLANDS》，宣布将于2023年2月17日开始在《Ultra Jump》3月号上连载，​​​封面彩图公开。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6331 aligncenter\" width=\"460\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/20221215001.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/20221215001.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/20221215001-209x300.jpg 209w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"861\"><br>\n之前荒木飞吕彦在最新杂志访谈中透露本作的主角是乔瑟夫·乔斯达的后裔。他在乔斯达家谱中的位置与前六部世界的乔瑟夫一样，是乔纳森的孙子、小乔治和伊丽莎白的儿子、丝吉Q的丈夫与荷莉的父亲。于《乔乔福音》最后两话登场，善于用自己的木屐攻击，初登场时踢出木屐准确地一击命中正在逃跑的偷包贼。</p>\n<p>除此之外，在月初荒木飞吕彦接受访问的时候更指自己想画一部以美洲为背景的《岸边露伴一动不动》。不知道荒木飞吕彦之后会不会画出呢？</p>\n\n	');
INSERT INTO `news` VALUES (15, '舞台剧《Lycoris Recoil 莉可丽丝》公开13位演员定装照', '舞台剧', '纳西妲', '2022-12-15 21:31:05', 871, '\n\n				\n		<p>舞台剧《Lycoris Recoil 莉可丽丝》公开了演员定装照。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6292 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239619.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239619.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239619.webp-213x300.jpg 213w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"><br>\n将于 2023 年 1月7日～1月15日 期间在东京公演的本作，今天公开千束、泷奈等一共 13 位角色的定装照。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6293 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239620.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239620.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239620.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6294 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239621.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239621.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239621.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6295 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239622.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239622.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239622.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6296 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239623.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239623.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239623.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6297 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239624.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239624.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239624.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6298 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239625.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239625.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239625.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6299 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239626.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239626.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239626.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6300 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239627.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239627.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239627.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6301 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239628.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239628.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239628.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"660\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6302 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239629.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239629.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239629.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6303 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239630.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239630.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239630.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6304 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239631.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239631.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239631.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6305 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239632.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239632.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239632.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"937\"><br>\n(c)Spider Lily/アニプレックス・ABCアニメーション・BS11 (c)舞台「リコリス・リコイ儿」製作委员会</p>\n<p>舞台剧官网：https://lycoris-recoil.com/stage/</p>\n\n	');

-- ----------------------------
-- Table structure for type2anime
-- ----------------------------
DROP TABLE IF EXISTS `type2anime`;
CREATE TABLE `type2anime`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypeID` int UNSIGNED NOT NULL COMMENT '类型ID',
  `AnimeID` int UNSIGNED NOT NULL COMMENT '动漫ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `TypeID`(`TypeID` ASC) USING BTREE,
  INDEX `AnimeID`(`AnimeID` ASC) USING BTREE,
  CONSTRAINT `type2anime_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `animetype` (`TypeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type2anime
-- ----------------------------
INSERT INTO `type2anime` VALUES (13, 5, 6);
INSERT INTO `type2anime` VALUES (14, 7, 7);
INSERT INTO `type2anime` VALUES (15, 9, 7);
INSERT INTO `type2anime` VALUES (16, 11, 7);
INSERT INTO `type2anime` VALUES (17, 1, 8);
INSERT INTO `type2anime` VALUES (18, 3, 8);
INSERT INTO `type2anime` VALUES (19, 6, 8);
INSERT INTO `type2anime` VALUES (21, 8, 10);
INSERT INTO `type2anime` VALUES (22, 11, 10);
INSERT INTO `type2anime` VALUES (23, 12, 10);
INSERT INTO `type2anime` VALUES (30, 6, 2);
INSERT INTO `type2anime` VALUES (31, 7, 2);
INSERT INTO `type2anime` VALUES (32, 5, 2);
INSERT INTO `type2anime` VALUES (59, 6, 3);
INSERT INTO `type2anime` VALUES (60, 3, 3);
INSERT INTO `type2anime` VALUES (61, 1, 3);
INSERT INTO `type2anime` VALUES (69, 6, 1);
INSERT INTO `type2anime` VALUES (70, 2, 1);
INSERT INTO `type2anime` VALUES (71, 1, 1);
INSERT INTO `type2anime` VALUES (74, 8, 11);
INSERT INTO `type2anime` VALUES (75, 11, 11);
INSERT INTO `type2anime` VALUES (76, 12, 11);
INSERT INTO `type2anime` VALUES (77, 7, 11);
INSERT INTO `type2anime` VALUES (78, 6, 11);
INSERT INTO `type2anime` VALUES (79, 8, 12);
INSERT INTO `type2anime` VALUES (80, 11, 12);
INSERT INTO `type2anime` VALUES (81, 12, 12);
INSERT INTO `type2anime` VALUES (82, 11, 13);
INSERT INTO `type2anime` VALUES (86, 7, 15);
INSERT INTO `type2anime` VALUES (87, 8, 15);
INSERT INTO `type2anime` VALUES (88, 3, 16);
INSERT INTO `type2anime` VALUES (89, 7, 17);
INSERT INTO `type2anime` VALUES (90, 11, 17);
INSERT INTO `type2anime` VALUES (91, 8, 18);
INSERT INTO `type2anime` VALUES (92, 7, 18);
INSERT INTO `type2anime` VALUES (93, 11, 19);
INSERT INTO `type2anime` VALUES (98, 3, 4);
INSERT INTO `type2anime` VALUES (103, 9, 5);
INSERT INTO `type2anime` VALUES (104, 11, 5);
INSERT INTO `type2anime` VALUES (106, 7, 9);
INSERT INTO `type2anime` VALUES (110, 11, 14);
INSERT INTO `type2anime` VALUES (111, 7, 14);
INSERT INTO `type2anime` VALUES (112, 10, 14);
INSERT INTO `type2anime` VALUES (117, 8, 20);
INSERT INTO `type2anime` VALUES (118, 10, 20);

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
INSERT INTO `user` VALUES (3, '胡桃1', 'hutao', 'hutao@mihoyo.com', '1', '2022-11-29', '胡堂主是我', '女');
INSERT INTO `user` VALUES (4, '莱依拉', '\r\nlayla', 'layla@mihoyo.com', '123456', '2022-11-29', '你好', '女');
INSERT INTO `user` VALUES (5, 'm', 'm', NULL, 'm', '2022-12-14', NULL, '男');
INSERT INTO `user` VALUES (6, 'ACong', 'ACong', NULL, 'baizhiyousa99', '2022-12-20', NULL, '男');

-- ----------------------------
-- Table structure for yiyan
-- ----------------------------
DROP TABLE IF EXISTS `yiyan`;
CREATE TABLE `yiyan`  (
  `YiYanID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `AdminID` int UNSIGNED NOT NULL COMMENT '用户ID',
  `Sentence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '一言语句',
  `Origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '一言来源',
  PRIMARY KEY (`YiYanID`) USING BTREE,
  INDEX `AdminID`(`AdminID` ASC) USING BTREE,
  CONSTRAINT `yiyan_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yiyan
-- ----------------------------
INSERT INTO `yiyan` VALUES (1, 1, '万有引力可无法对坠入爱河的人负责。', '爱因斯坦');
INSERT INTO `yiyan` VALUES (2, 2, '当遇到你时，大脑连上CSGO都会掉帧。', 'Florence');
INSERT INTO `yiyan` VALUES (3, 1, '幸运的人一生都在被童年治愈，不幸的人一生都在治愈童年。', '阿尔弗雷德·阿德勒');
INSERT INTO `yiyan` VALUES (4, 1, '对于永生之人，最大的敌人，是无聊。', '东方永夜抄');
INSERT INTO `yiyan` VALUES (5, 2, '不管你说再多的慌，只有自己的内心，是无法欺骗的啊。', '七大罪');
INSERT INTO `yiyan` VALUES (6, 1, '山谷的最低点正是山的起点。', '林清玄');
INSERT INTO `yiyan` VALUES (7, 1, '生命如同寓言，其价值不在于长短，而在于内容。', '塞涅卡');
INSERT INTO `yiyan` VALUES (8, 1, '我和空太是恋人以上，友人未满的关系。', '樱花庄的宠物女孩');
INSERT INTO `yiyan` VALUES (9, 1, '如果我们能活着出去的话，千山万水，你愿意陪我一起看吗？', '狐妖小红娘');
INSERT INTO `yiyan` VALUES (10, 1, '一味地追求理想，总有一天会被现实背叛。', '名侦探柯南：绯色的子弹');
INSERT INTO `yiyan` VALUES (11, 1, '失去故土的花朵，回不去，却也离不开。', '长歌行');
INSERT INTO `yiyan` VALUES (12, 1, '你说过，人最大的敌人是自己。', '我的前半生');
INSERT INTO `yiyan` VALUES (13, 1, '大家互相帮助，一起成功，一起幸福什么的，不过是种理想。', '我的青春恋爱物语果然有问题');
INSERT INTO `yiyan` VALUES (14, 1, '孤独的人不会伤害别人，只会不断地伤害自己罢了。', '我的青春恋爱物语果然有问题');
INSERT INTO `yiyan` VALUES (15, 1, '我连宇宙尽头在哪里都不知道，怎么会知道这个。', 'JOJO的奇妙冒险');

-- ----------------------------
-- View structure for cvgroupanime
-- ----------------------------
DROP VIEW IF EXISTS `cvgroupanime`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cvgroupanime` AS select `anime`.`AnimeID` AS `AnimeID`,`anime`.`AnimeName` AS `AnimeName`,group_concat(`animecv`.`CVName` separator ',') AS `CVName` from ((`anime` join `cv2anime`) join `animecv`) where ((`anime`.`AnimeID` = `cv2anime`.`AnimeID`) and (`animecv`.`CVID` = `cv2anime`.`CVID`)) group by `anime`.`AnimeID`,`anime`.`AnimeName`;

-- ----------------------------
-- View structure for getallanime
-- ----------------------------
DROP VIEW IF EXISTS `getallanime`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `getallanime` AS select `anime`.`AnimeID` AS `AnimeID`,`anime`.`AnimeName` AS `AnimeName`,`anime`.`AnimeHot` AS `AnimeHot`,`anime`.`AnimeDescription` AS `AnimeDescription`,`anime`.`AnimeLanguage` AS `AnimeLanguage`,`anime`.`AnimeStats` AS `AnimeStats`,`anime`.`AnimeCompany` AS `AnimeCompany`,`anime`.`AnimeEpisode` AS `AnimeEpisode`,`anime`.`AnimeReleaseDate` AS `AnimeReleaseDate`,`anime`.`AnimeRecommend` AS `AnimeRecommend`,`typegroupanime`.`AnimeType` AS `AnimeType`,`cvgroupanime`.`CVName` AS `CVName` from ((`anime` join `typegroupanime` on((`anime`.`AnimeID` = `typegroupanime`.`AnimeID`))) join `cvgroupanime` on((`anime`.`AnimeID` = `cvgroupanime`.`AnimeID`)));

-- ----------------------------
-- View structure for typegroupanime
-- ----------------------------
DROP VIEW IF EXISTS `typegroupanime`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `typegroupanime` AS select `anime`.`AnimeID` AS `AnimeID`,`anime`.`AnimeName` AS `AnimeName`,group_concat(`animetype`.`Type` separator ',') AS `AnimeType` from ((`anime` join `type2anime` on((`anime`.`AnimeID` = `type2anime`.`AnimeID`))) join `animetype` on((`type2anime`.`TypeID` = `animetype`.`TypeID`))) where ((`anime`.`AnimeID` = `type2anime`.`AnimeID`) and (`type2anime`.`TypeID` = `animetype`.`TypeID`)) group by `anime`.`AnimeID`,`anime`.`AnimeName`;

-- ----------------------------
-- View structure for uploaderviaid
-- ----------------------------
DROP VIEW IF EXISTS `uploaderviaid`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `uploaderviaid` AS select `admin`.`AdminName` AS `AdminName`,`animeupdater`.`AnimeID` AS `AnimeID`,`animeupdater`.`UpdateDate` AS `UpdateDate` from (`admin` left join `animeupdater` on((`admin`.`AdminID` = `animeupdater`.`AdminID`))) where (`animeupdater`.`AnimeID` is not null);

-- ----------------------------
-- View structure for uploadervianame
-- ----------------------------
DROP VIEW IF EXISTS `uploadervianame`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `uploadervianame` AS select `uploaderviaid`.`AdminName` AS `AdminName`,`anime`.`AnimeName` AS `AnimeName`,`uploaderviaid`.`UpdateDate` AS `UpdateDate` from (`uploaderviaid` left join `anime` on((`uploaderviaid`.`AnimeID` = `anime`.`AnimeID`)));

-- ----------------------------
-- Procedure structure for admin_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `admin_login`;
delimiter ;;
CREATE PROCEDURE `admin_login`(IN account VARCHAR(255))
BEGIN
	SELECT AdminPassword FROM admin WHERE AdminAccount = account;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for filteranime
-- ----------------------------
DROP PROCEDURE IF EXISTS `filteranime`;
delimiter ;;
CREATE PROCEDURE `filteranime`()
BEGIN
	SELECT * FROM getallanime join type2anime on (type2anime.TypeID=1);
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
	SELECT 
	anime.AnimeID,
	anime.AnimeName,
	anime.AnimeHot,
	anime.AnimeDescription,
	anime.AnimeLanguage,
	anime.AnimeStats,
	anime.AnimeCompany,
	anime.AnimeEpisode,
	anime.AnimeReleaseDate,
	anime.AnimeRecommend,
	typegroupanime.AnimeType,
	cvgroupanime.CVName 
	FROM anime 
	INNER JOIN typegroupanime ON anime.AnimeID = typegroupanime.AnimeID 
	INNER JOIN cvgroupanime ON anime.AnimeID = cvgroupanime.AnimeID;
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
	SELECT 
	anime.AnimeID,
	anime.AnimeName,
	anime.AnimeHot,
	anime.AnimeDescription,
	anime.AnimeLanguage,
	anime.AnimeStats,
	anime.AnimeCompany,
	anime.AnimeEpisode,
	anime.AnimeReleaseDate,
	anime.AnimeRecommend,
	typegroupanime.AnimeType,
	cvgroupanime.CVName  
	FROM anime 
	INNER JOIN typegroupanime ON anime.AnimeID = typegroupanime.AnimeID
	INNER JOIN cvgroupanime ON anime.AnimeID = cvgroupanime.AnimeID 
	WHERE anime.AnimeID = id;
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
	SELECT
	anime.AnimeID,
	anime.AnimeName,
	anime.AnimeHot,
	anime.AnimeDescription,
	anime.AnimeLanguage,
	anime.AnimeStats,
	anime.AnimeCompany,
	anime.AnimeEpisode,
	anime.AnimeReleaseDate,
	anime.AnimeRecommend,
	typegroupanime.AnimeType,
	cvgroupanime.CVName 
	FROM anime 
	INNER JOIN typegroupanime ON anime.AnimeID = typegroupanime.AnimeID 
	INNER JOIN cvgroupanime ON anime.AnimeID = cvgroupanime.AnimeID 
	WHERE anime.AnimeName LIKE name;
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
	SELECT `user`.UserName,`comment`.CommentText,`comment`.CommentDate FROM `comment`,`user` WHERE comment.AnimeID=animeid AND `user`.UserID = `comment`.UserID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for findnewslike
-- ----------------------------
DROP PROCEDURE IF EXISTS `findnewslike`;
delimiter ;;
CREATE PROCEDURE `findnewslike`(IN name VARCHAR(255))
BEGIN
	SELECT
	*
	FROM news
	WHERE news.NewsTitle LIKE name;
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
-- Procedure structure for recommendanimes
-- ----------------------------
DROP PROCEDURE IF EXISTS `recommendanimes`;
delimiter ;;
CREATE PROCEDURE `recommendanimes`()
BEGIN
	SELECT AnimeID,AnimeName,AnimeStats,AnimeDescription FROM anime WHERE anime.AnimeRecommend="true";
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
	SET @cvid1 = (SELECT CVID FROM animecv WHERE CVName = name);
	IF (SELECT COUNT(1) FROM cv2anime WHERE AnimeID=id AND CVID=@cvid1) THEN
	 SELECT * FROM cv2anime WHERE AnimeID=id AND CVID=@cvid1;
	ELSE
		INSERT INTO cv2anime(CVID,AnimeID) VALUES(@cvid1,id);
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
	SET @typeid = (SELECT TypeID FROM animetype WHERE Type = type1);
	IF (SELECT COUNT(1) FROM type2anime WHERE AnimeID=id AND TypeID=@typeid) THEN
		SELECT * FROM type2anime WHERE AnimeID=id AND TypeID=@typeid;
	ELSE
		INSERT INTO type2anime(TypeID,AnimeID) VALUES(@typeid,id);
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
INSERT INTO animeupdater VALUES(new.AnimeID,1,current_timestamp());
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table anime
-- ----------------------------
DROP TRIGGER IF EXISTS `deleteanime`;
delimiter ;;
CREATE TRIGGER `deleteanime` AFTER DELETE ON `anime` FOR EACH ROW BEGIN
DELETE FROM animeupdater WHERE animeupdater.AnimeID = old.AnimeID;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
