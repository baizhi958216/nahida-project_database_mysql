/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : anime

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 02/02/2023 08:58:52
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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of anime
-- ----------------------------
INSERT INTO `anime` VALUES (1, '魔女之旅', 'C2C', '2020-10-02', 12, '已完结', '日语', 6, 'false', '某个地方有一位旅人，她的名字是伊蕾娜。是一位年纪轻轻就成了魔法使中最上位「魔女」的天才。因为向往着幼时读过的旅行故事，随意地进行着漫长的旅行。在这个广阔的世界里自由地漫步，接触着形形色色有趣的人，体味着人们美好的日常生活，她作为一名旅人，不带有任何目的地接触着各种国家的各色人群。还有同样数量的——「不必理会我。我只是一介旅人罢了。接下来还得继续前往下一个地方呢。」由魔女伊蕾娜所连接的，关于相遇和离别的故事……。');
INSERT INTO `anime` VALUES (2, '莉可丽丝', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'false', '安宁的日常——背后却暗藏秘密将犯罪防患于未然的秘密组织——“DA（Direct Attack）”隶属于DA的少女特工——“莉可丽丝”理所当然的日常，都要归功于她们。咖啡厅“莉可莉可” 作为DA支部，员工有号称史上最强莉可丽丝的精英·锦木千束、优秀却暗藏隐情的莉可丽丝·井上泷奈。这里供应的不光是咖啡和甜品，还有照顾孩子、代为购物、教外国人日语等服务，全都不像是“莉可丽丝”会做的事。自由随性又乐天的和平主义者·千束和效率至上的泷奈，反差巨大的两人组成搭档，开始了忙忙碌碌的每一天。');
INSERT INTO `anime` VALUES (3, '关于我转生变成史莱姆这档事 第二季', '8bit', '2021-01-05', 26, '已完结', '日语', 12, 'false', '主人公利姆鲁与仰慕他而聚集的众多魔物们所建立的国家「鸠拉·特恩佩斯特国」，经由与邻国的协议及交易，让「人类与魔物共同漫步的国家」这一温柔的理想逐步成形。利姆鲁作为曾是人类的史莱姆当然拥有「对人类的好意」……但这个世界中却存在着明确的「对魔物的敌意」。当这不合理的现实摆在眼前时，利姆鲁将做出选择。为了「什么都不想失去」——万众期待的转生喜剧突入暴风的新章！');
INSERT INTO `anime` VALUES (4, '被开除出勇者队伍的驯兽使，邂逅了最强种猫耳少女', 'EMT SQUARED', '2022-10-02', 13, '已完结', '日语', 23, 'false', '“雷因，你被解雇了”突然有一天，雷因被驱逐出勇者的队伍。他选择当一个冒险家作为以后生命之路，在考试期间帮助一个摔倒的女孩。女孩名为奏，是最最强大的“猫灵族”！受到奏的邀请，雷因作为驭兽使，两人决定签订契约并组成一个队伍。在另一方面，失去雷因的勇者队伍开始意识到他的重要性。“喵……和雷因在一起的时候，总是感到惊讶”\n“不会无聊吧？”“……哇！是啊”使役一切的驭兽使和最强的伙伴凌驾于勇者队伍——。和重要的伙伴相遇并成长的冒险幻想！');
INSERT INTO `anime` VALUES (5, '夫妇以上，恋人未满。', 'studio MOTHER', '2022-10-09', 12, '已完结', '日语', 32, 'false', '不起眼的男高中生药院次郎，在“夫妻实习”的课堂上，和绝对不可能有关系的班上的美少女渡边星一起生活。他们对彼此的印象也很差。“阴”和“阳”不匹配非常刺激。洗完澡后的突发事件，突然的接触麻烦！？次郎虽然闷闷不乐，但还是下意识地想……“喂，真的好好地玩夫妻游戏吧”互相有想法的次郎和星为了得到交换组合的权利，认真地扮演夫妻。然而，酸甜苦辣的夫妻生活逐渐让彼此意识到各自的魅力。比“恋人”更刺激的，辣妹和无异性缘男生的“夫妻游戏”开始了  。');
INSERT INTO `anime` VALUES (6, '契约之吻', 'A-1 Pictures', '2022-07-02', 13, '已完结', '日语', 20, 'false', '“贝隆市”——不属于任何国家，漂浮在太平洋上的巨型浮岛型城市。因其开采新能源资源“欧尔贡矿”而在这个世界上占有一席之地，贝隆市也经常发生被称为“D灾害”的由“恶魔”引起的特殊事件。\r\n只有一小部分人知道D灾害的存在，对其进行处理的是“PMC”（民间军事公司），生活在贝隆市的青年修则经营着一家，但公司的规模很小，而且修还要找工作，所以资金周转总是很困难。\r\n公私不分地、献身地支撑着修的生活的，是在贝隆市的学校上学的美少女高中生木更。还有一个，是修曾经所属的大型PMC的职员，也是他的前女友绫乃，她现在依然很关心修，对木更没有好感。\r\n木更对修有着强烈的执着，其根本在于两人的“契约”。\r\n她的真面目是恶魔。\r\n木更支撑着修的生活，也根据契约协助消灭恶魔。\r\n其代价是甜蜜而危险的“吻”。爱与契约，两人危险的羁绊。命运将会走向何方……');
INSERT INTO `anime` VALUES (7, '式守同学不只可爱而已', '动画工房', '2022-04-09', 12, '已完结', '日语', 22, 'false', '超级“帅气女友“登场！ 和泉是一名拥有不幸体质的高中男生，他有一个和他同班的女朋友，叫做式守。 式守的笑容十分甜美、温柔，跟和泉在一起的时候脸上总是洋溢着幸福。她平时可爱动人，心中满是爱情，但只要看到和泉遇到危险，她就会……摇身一变，变成“帅气女友”！满是可爱×帅气的式守跟和泉将与他们的小伙伴一起带来无限愉快的日常！1000%美好的爱情喜剧，即将开幕！');
INSERT INTO `anime` VALUES (8, '关于我转生变成史莱姆这档事 第一季', '8bit', '2018-10-02', 24, '已完结', '日语', 12, 'false', '史莱姆生活，开始了。上班族的三上悟在道路上被歹徒给刺杀身亡后，回过神来发现自己转生到了异世界。不过，自己居然是“史莱姆”！他在得到利姆鲁这个名字后开始了自己的史莱姆人生，随着与各个种族相处交流的过程中，他定下了一个目标——那就是“建立一个任何种族都能愉快地一起生活的国家”！');
INSERT INTO `anime` VALUES (9, '恋爱FLOPS', 'Passione', '2022-10-12', 12, '已完结', '日语', 22, 'false', '平凡的男子高中生柏树朝，像往常一样走在一成不变的通学路上。\r\n然而，正和出门前无意间打开的电视里播放的奇妙占卜说的一样，他在这个早晨遭遇到了各种各样的灾难。\r\n在一个接一个发生的灾难中，朝和5名少女发生了可说是最糟糕的相遇。\r\n当他身心俱疲、好不容易到达学校时，作为转校生和新任教师的5名少女的身影却再次出现在了他的面前。\r\n朝努力隐藏自己的脸，但根本藏不住……\r\n自称是朝的好友伊集院好雄，向朝询问与5人之间的关系。\r\n随着与5人相处，解开了彼此之间的误会，关系也稍微融洽了一些。\r\n放学后，朝打开鞋柜准备回家，却发现里面放着一封情书。\r\n寄件人不明的情书上，写着“在校舍后面的樱花树下等你”。这也如占卜所说的一样。\r\n事到如今，打算把一切都弄清楚的朝，向樱花树下走去。\r\n樱花飞舞的季节，5阵恋风带来的淡淡苦闷的青春爱情故事，现在，拉开帷幕!');
INSERT INTO `anime` VALUES (10, '摇曳百合', '动画工房', '2011-07-04', 12, '已完结', '日语', 12, 'false', '从今天起，有点天然呆的灯里（三上枝织 配音）正式成为一名初中生，开学第一天灯里加入了好友京子（大坪由佳 配音）和结衣（津田美波 配音）所在的“娱乐部”。所谓娱乐部，其实她们只是占领了已经废部的茶道社办公室，社团活动也只不过是各种优哉游哉的喝茶闲聊。灯里的同班同学千夏（大久保瑠美 配音）因为憧憬着隶属茶道社的姐姐，阴错阳差地加入了她们。\r\n　　四名少女在娱乐部度着轻松欢乐、又带点百合情节的日子，京子极其喜欢外形可爱的千夏，千夏则喜欢着很会照顾人的结衣。这样一来，身为主人公的灯里无形中受到了冷落，大家在娱乐部展开了讨论会，结果会引发什么样的爆笑故事？同时，擅自占用教室一事，引来了学生会的关注，娱乐部会面临废部危机吗？');
INSERT INTO `anime` VALUES (11, '摇曳百合2', '动画工房', '2012-07-02', 12, '已完结', '日语', 7, 'false', '故事发生在氛围轻松制度宽松的七森中学，为了打发无聊的课后时光，个性天真单纯的少女赤座灯里（三上枝织 配音）伙同童年好友岁纳京子（大坪由佳 配音）与船见结衣（津田美波 配音），利用荒废已久的茶道社组成了一个名为“娱乐部”的活动社团。之后，又有表面善良内心却极为腹黑的女孩吉川千夏（大久保瑠美 配音）在误打误撞之中加入，就这样，这个山寨社团的四人小组成立了。\n　　在这个没有正式申请的社团中，每天都发生着欢乐又爆笑的日常，可是没过多久，娱乐部的存在便被学生会发现了。作为副部长，杉浦绫乃（藤田咲 配音）怎能对此坐视不管？在娱乐部和学生会之间，一场轰轰烈烈的猫鼠大战开始了。');
INSERT INTO `anime` VALUES (12, '摇曳百合3', 'TYO Animations', '2015-08-05', 12, '已完结', '日语', 19, 'false', '故事发生在七森中学中，茶道社因为人气不佳最终面临闭社的悲惨命运，单纯天真懵懂无知的赤座灯里（三上枝织 配音）、开朗热情的暴走少女岁纳京子（大坪由佳 配音）、沉默寡言但却是吐槽担当的船见结衣（津田美波 配音）和看似可爱人畜无害实则十分腹黑的吉川千夏（大久保瑠美 配音）四名女生占据了茶道社的活动教室，在这里另起炉灶成立了娱乐部。故事的序幕就此拉开。\n　　娱乐部的存在竟然引起了学生会的注意，身世神秘的会长松本理世（后藤沙绪里 配音）和傲娇不坦率的副会长杉浦绫乃（藤田咲 配音）的介入让本来就热闹的社团生活增添了一份欢乐。');
INSERT INTO `anime` VALUES (13, '五等分的新娘 剧场版', 'Bibury Animation Studios', '2022-05-20', 1, '已完结', '日语', 0, 'false', '「濒临留级」、「讨厌念书」的五胞胎美少女，\n和身为兼差的家教老师，将他们引导到「毕业」的风太郎。\n迄今为止的努力都得到了回报，升上高三的五胞胎完成了毕业旅行，\n每个人都朝着「毕业」后的未来前行。\n与风太郎共度的时光中，五胞胎先后察觉到了自己对风太郎的爱意。\n风太郎与五胞胎的爱情会如何!? 未来的新娘是……\n可爱度500%的五胞胎恋爱喜剧，迎来完结──!! ');
INSERT INTO `anime` VALUES (14, '孤独摇滚！', '芳文社', '2022-10-08', 12, '已完结', '日语', 16, 'false', '作为网络吉他手“Guitar Hero”而广受好评的后藤独，在现实中却是个什么都不会的沟通障碍者。独有着组建乐队的梦想，但因为不敢向人主动搭话而一直没有成功，直到一天在公园中被伊地知虹夏发现并邀请进入缺少吉他手的“结束乐队”。可是，完全没有和他人合作经历的独，在人前完全发挥不出原本的实力。为了努力克服沟通障碍，独与“结束乐队”的成员们一同开始努力…… ');
INSERT INTO `anime` VALUES (15, '调教咖啡厅', 'A-1 Pictures', '2017-10-07', 12, '已完结', '日语', 0, 'false', '来到了有着傲娇、妹系等各种“属性”的咖啡厅，新人店员莓香竟然被店长要求\"抖S\"属性！？努力工作的同时，意外的也让\"抖S\"才能渐渐开花……充满欢乐的打工由此展开！');
INSERT INTO `anime` VALUES (16, '魔王学院的不适合者', 'SILVER LINK.', '2020-07-04', 13, '已完结', '日语', 0, 'false', '历经两千年的时光，苏醒了的暴虐魔王——\n但他在培育魔王候补的学院中的适性却是——“不适任”？！\n尽管具备能毁灭人类、精灵，甚至是众神的力量，暴虐魔王“阿诺斯·伏尔迪哥德”却厌倦了永无止尽的斗争，梦想着和平的世界进行转生。然而在两千年后，转生后的他所迎来的，却是调节和平生活而变得过于弱小的子孙们，以及各种衰退至极的魔法。\n阿诺斯虽然进入了对被视作魔王转世之人进行集中教育的“魔王学院”，但学院却无法看出他的实力，使得他被刻上不适任者这一烙印。不仅如此，传说中的魔王还变成了和自己完全不同的其他人。\n在众人都瞧不起他的环境里，他将唯一亲切对待自己的少女米夏纳为部下，作为不适任者（魔王），在魔族的等级制度上迈向巅峰。\n“不论天理、命运还是奇迹，在我的眼前只有俯首受戮一途而已。”');
INSERT INTO `anime` VALUES (17, '冰菓', '京都动画', '2012-04-22', 22, '已完结', '日语', 0, 'false', '在众多将要展开「玫瑰色」生活的高中生之中，本作的男主角折木奉太郎却是一个「灰色」的节能主义者。凡是没必要的事就不做，因为不想后悔，被人说是疏离、厌世也无所谓，因为这就是他的作风。这样的折木奉太郎，却因为姐姐的命令而进入了濒临废社的「古籍研究社」。研究社虽然好不容易招到了四名新社员，但却又卷入了四十五年前社长突然肄业的谜团之中。社长当年留下的名为「冰菓」的社刊，内里究竟隐藏了什么神秘的讯息呢……');
INSERT INTO `anime` VALUES (18, '雏子的笔记', 'Passione', '2017-04-07', 12, '已完结', '日语', 0, 'false', '樱木雏子是个不擅长和人交流的女孩子。为了改变一见人就像稻草人一样僵住的自己，以升入有着自己憧憬的演剧部的高中为契机而离开乡下的雏子，来到了住宿地点四季庄。那里住着喜爱书与食物的玖井菜、虽然年长却小巧玲珑又擅长料理的真雪、沉默而又身材拔群的房东千秋等住客……！？虽然有点奇怪却充满魅力的四季庄住民，与前稻草人少女所展开的可爱又快乐的演剧喜剧现在开幕！');
INSERT INTO `anime` VALUES (19, '宇崎学妹想要玩!', 'ENGI', '2022-07-10', 12, '已完结', '日语', 13, 'false', '性格有些孤僻喜爱安静的大学３年级生，樱井真一。总是被小一届，同高中毕业的学妹宇崎花，以各种照顾爱耍孤僻的学长的名义为由，进行各种无厘头的纠缠。虽然一开始觉得有点困扰，但却逐渐习惯起来…');
INSERT INTO `anime` VALUES (20, '宇崎酱想要玩耍 第二季', 'ENGI', '2022-10-01', 13, '已完结', '日语', 0, 'false', '#宇崎学妹想要玩#第二季制作决定！');
INSERT INTO `anime` VALUES (21, '别当欧尼酱了!', 'STUDIO BIND', '2023-01-05', 4, '连载中', '日语', 43, 'true', '2年足不出户，沉迷于不正经游戏的“家里蹲”绪山真寻。中午一觉醒来，身体总觉得有些不对劲…\n一边感到不可思议一边从被窝里爬起来拿起平板电脑，画面上出现了一个素不相识的“可爱女孩”！\n真寻看着自己的样子感到混乱，跳级进入大学的天才科学家妹妹绪山美波里出现后，告诉他自己在饮料里下了药！\n作为实验“变性药”的对象要进行观察，真寻突然开始了女孩子的生活！包括上厕所和洗澡...\n“原”哥哥真寻的命运将会如何！？ ');
INSERT INTO `anime` VALUES (22, '转生王女与天才千金的魔法革命', 'diomedéa', '2023-01-04', 5, '连载中', '日语', 49, 'true', '接下来将要述说的，是某个王国王女的故事。\n这是以憧憬魔法的王女恢复了前世的记忆为起始的故事。\n时而顽皮闹事，时而惹人心往，不断追求着魔法的魅力和真理。\n接下来，就是物语的开始。 ');
INSERT INTO `anime` VALUES (23, '关于我在无意间被隔壁的天使变成废柴这件事', 'project No.9', '2023-01-07', 4, '连载中', '日语', 43, 'true', '藤宫周所住公寓的隔壁，住着学校第一的美少女椎名真昼。两人原本并没有什么瓜葛。有一天，周看到她淋在雨中，把伞借给了她。此后，两人开始了不可思议的交流。 真昼看不下去周自甘堕落的独居生活，帮忙做饭、打扫房间，在各个方面都照顾着周。 真昼渴望家庭间的关系，逐渐敞开心扉开始撒娇，而周却不能完全带着自信接受她的好意。两人尽管不坦率，但还是一点一点缩短着距离…… ');
INSERT INTO `anime` VALUES (24, '魔王学院的不适合者 第二季', 'SILVER LINK.', '2023-01-07', 4, '连载中', '日语', 36, 'true', '尽管具备能毁灭人类、精灵，甚至是众神的力量，\n暴虐魔王阿诺斯却厌倦了永无止尽的斗争，梦想着和平的世界进行转生。\n然而在两千年后，转生后的他所迎来的，却是适应和平生活而变得过于弱小的子孙们，以及各种衰退至极的魔法。\n阿诺斯虽然进入了把被认定是魔王转生者的人召集起来「魔王学院」就读，学院却无法看出他的实力，使他被盖上不适任者的烙印。\n在众人都瞧不起他的环境里，他将唯一亲切对待自己的少女米夏纳为部下，\n不适任者（魔王）在魔族的阶级制度上迈向巅峰！ ');
INSERT INTO `anime` VALUES (25, '因为太怕痛就全点防御力了 第二季', 'SILVER LINK.', '2023-01-11', 4, '连载中', '日语', 23, 'true', '梅普露缺乏一般游戏常识，把所有配点都灌到防御力（VIT）去了。\n动作缓慢，又不会用魔法，搞得连兔子都耍得她团团转。\n咦，可是完全不会痛耶……而且根本没受伤？\n全点防御力，使梅普露取得了特殊技能【绝对防御】，甚至附送一击必杀的反击技──？\n能使任何攻击打不出效果，以致命施毒技能蹂躏全场的「移动要塞型」新人，\n毫不觉得自己奇怪地出场走跳喽！ ');
INSERT INTO `anime` VALUES (26, '生而为狗 我很幸福', 'Quad', '2023-01-06', 4, '连载中', '日语', 14, 'true', '好想做犬饲小姐的狗！\n一觉醒来，就变成酷酷的美少女·犬饲饲养的狗！\n犬饲在学校面无表情。但是她超溺爱狗，非常喜欢小狗！！\n散步，上厕所，被自己喜欢的女孩子调教，这样下去身心都会变成狗！！\n放弃人类系(！？)有点H的喜剧！ ');
INSERT INTO `anime` VALUES (27, '埃罗芒阿老师', 'A-1 Pictures', '2017-04-08', 14, '已完结', '日语', 37, 'false', '高中生兼爱情小说作家，也就是我——和泉正宗（）。我有一个没有血缘关系的妹妹——和泉纱雾。\n从一年前开始我的妹妹她就不怎么出房间了，今天她也是把地板跺得咚咚响，来催我做饭。\n这样的关系可不是“兄妹”范畴了，我总是想让她自觉地走出房间，因为所谓“家人”，也就只有我们二人而已。\n我的搭挡担任插画家的“埃罗芒阿老师”，是个能够画出非常棒的煽情图的可靠伙伴，虽然没见过面，不过我想他的相貌大概是个猥琐宅男。\n但我一直很感谢他！……但是，我突然发现冲击的事实。\n埃罗芒阿老师，居然就是我妹妹！\n住在同一个屋檐下，却一直闷在房里的我的可爱的妹妹，居然一直在画H图！？\n随即，我们的兄妹关系因另一位实力强劲的美少女作家作为竞争对手的加入，逐渐发生了改变。。。。\n全新的兄妹爱情喜剧上演了！');
INSERT INTO `anime` VALUES (28, '龙王的工作！', 'Project No.9', '2018-01-08', 12, '已完结', '日语', 37, 'false', '本片围绕着“将棋”这个竞技项目展开，主人公“九头龙八一”仅16岁就获得了将棋界最强头衔“龙王”，某天他的家中竟突然出现了一名9岁的小学女生“雏鹤爱”，并且对方还要成为八一的弟子？！在这样的背景下，一场奇妙的同居生活就此开始。');
INSERT INTO `anime` VALUES (29, '喜欢本大爷的竟然就你一个？', 'CONNECT', '2019-10-02', 13, '已完结', '日语', 21, 'false', '题目来了。如果你有兴趣的对象邀你去约会，你会怎么做？\n而且对象不只一个，有冰山美人型Cosmos学姐和可爱型儿时玩伴葵花这两大美少女！\n这种时候当然会意气风发地前往碰面地点吧？\n结果她们向我表明的「心意」是！ ……要找我「恋爱咨商」怎么追我的好友啊哈哈哈……\n我不干了！不干不干！\n我终于从「迟钝型无害角色」变回原来的本大爷啦，可是本大爷不会在这种时候怨天尤人。\n因为只要帮她们做这恋爱咨商，说不定她们就会喜欢上本大爷啊！\n然而，有一名少女从旁看着本大爷这种悲哀的孤军奋战。\n她是Pansy──三色院堇子，是个绑辫子戴眼镜的阴沉女。\n该怎么说，本大爷讨厌这女的，偏偏……喜欢本大爷的竟然就你一个？ ');
INSERT INTO `anime` VALUES (30, '轻音少女 第一季', 'Kyoto Animation', '2009-04-02', 14, '已完结', '日语', 23, 'false', '新学年开始，樱丘高中轻音部（轻音乐社）因原有部员全部毕业离校而无法达到部员最低人数（4人）。轻音部新成员只有秋山澪和田井中律。就在此时，天然呆平泽唯在阴差阳错的情况下把“轻音乐”当作“简单的音乐”，又因小时候玩响板得到老师表扬，所以萌发申请入部的想法。另一方面，温柔可爱的千金大小姐琴吹䌷被田井中律强拉入社。于是，便有了贝司手秋山澪、吉他手平泽唯、鼓手田井中律及键盘手琴吹䌷。动画第9话加入学妹中野梓担任第二把吉他手。 ');
INSERT INTO `anime` VALUES (31, '轻音少女 第二季', 'Kyoto Animation', '2010-04-06', 27, '已完结', '日语', 0, 'false', '新学年开始，樱丘高中轻音部（轻音乐社）因原有部员全部毕业离校而无法达到部员最低人数（4人）。轻音部新成员只有秋山澪和田井中律。就在此时，天然呆平泽唯在阴差阳错的情况下把“轻音乐”当作“简单的音乐”，又因小时候玩响板得到老师表扬，所以萌发申请入部的想法。另一方面，温柔可爱的千金大小姐琴吹䌷被田井中律强拉入社。于是，便有了贝司手秋山澪、吉他手平泽唯、鼓手田井中律及键盘手琴吹䌷。动画第9话加入学妹中野梓担任第二把吉他手。 ');
INSERT INTO `anime` VALUES (32, '在地下城寻求邂逅是否搞错了什么 第四季 新章 迷宫篇 ', 'J.C.STAFF', '2022-07-22', 12, '已完结', '日语', 29, 'false', '迷宫都市欧拉丽，被统称为“迷宫”，拥有宏伟地下迷宫的巨大城市。\n在这条街上，与一柱小女神相遇的冒险家志愿的少年，组成了伙伴，挑战了迷宫，穿过了很多死地，完成了进一步的“升级”。\n给那样的他带来的一封信。写的是对未到达迷宫阶层的远征任务。\n面对未知的冒险，少年和伙伴们一起迈出了新的一步。\n这是少年的步伐，女神的记载——【眷族的故事】');
INSERT INTO `anime` VALUES (33, '在地下城寻求邂逅是否搞错了什么 第四季 深章 灾厄篇', 'J.C.STAFF', '2023-01-06', 4, '连载中', '日语', 18, 'true', '噩梦不会结束。\n绝望招来毁灭，厄灾招来祸害。\n在与破坏者札格纳特的战斗中，贝尔·克朗尼和琉·璃昂消失在深渊之中\n结果来到了所有冒险者都畏惧的迷宫深渊——深层。\n贝尔他们伤痕累累，孤立无援，厄灾迫在眉睫。\n迷宫决死之行的过程中，被五年前的悔事折磨的妖精琉·璃昂开始回忆过去的伙伴们。\n另一边，出现在没有贝尔的队伍面前的是双头巨龙安菲斯·巴耶纳\n破坏的化身喷出的凶恶火焰将一切吞噬。\n在失去希望和光明的迷宫中，等待着冒险者们的命运将会是什么...\n这是少年与妖精抵抗袭来的死亡，并且充满严酷的眷族物语.');
INSERT INTO `anime` VALUES (34, '被神捡到的男人', 'MAHO FILM', '2020-10-04', 12, '已完结', '日语', 17, 'false', '在黑心企业担任系统工程师的39岁单身工薪族竹林龙马在公寓独自结束了孤独的一生。被召唤到天界的龙马，被创造之神、爱之女神、生命之神要求协助，以小孩的姿态转生到异世界！？在森林中开始悠闲生活的8岁龙马，研究着用魔法驯养的史莱姆，开始新人生。被温柔的人们包围的快乐每一天悠闲的异世界慢生活幻想作品！');
INSERT INTO `anime` VALUES (35, '被神捡到的男人 第二季', 'MAHO FILM', '2023-01-08', 4, '连载中', '日语', 21, 'true', '在黑心企业担任系统工程师的39岁单身工薪族竹林龙马在公寓独自结束了孤独的一生。被召唤到天界的龙马，被创造之神、爱之女神、生命之神要求协助，以小孩的姿态转生到异世界！？在森林中开始悠闲生活的8岁龙马，研究着用魔法驯养的史莱姆，开始新人生。被温柔的人们包围的快乐每一天悠闲的异世界慢生活幻想作品！');
INSERT INTO `anime` VALUES (36, 'Hundred百武装战记', 'Production IMS', '2016-04-05', 12, '已完结', '日语', 17, 'false', '“百武装展开！！”“HUNDRED”──那是能对抗袭击地球的神祕生物“蛮族”（Savage）的唯一武器。主角如月隼人为了成为能够驾驭HUNDRED的武艺者（Slayer），进入海上学园都市舰“Little Garden”就读。然而──“我好想你喔，隼人!!”“你、你到底是……？” 对於似乎很了解自己的室友艾米尔‧克劳福德，隼人产生了某种怀念的异样感受。不仅如此，才一入学，学园最强的武艺者“女王”克蕾亚‧哈维便向他提出决斗要求……!?箕崎准(ocelot)×大熊猫介（Nitro+）联手推出！“究极”学园风动作小说，就此开幕！');
INSERT INTO `anime` VALUES (37, 'Seiren清恋', 'Studio五组／AXsiZ', '2017-01-05', 12, '已完结', '日语', 14, 'false', '高中2年级的夏天。嘉味田正一由于志愿调查表的内容而被班主任叫出来，以此为契机开始感受到对于长大成人的不安。这样的他，与各种各样的女孩子相遇……他将会以怎样的未来为目标呢。\n奔向未来的等身大高中生与清廉可怜的女主角们的恋爱物语，现在开始！ ');

-- ----------------------------
-- Table structure for animecv
-- ----------------------------
DROP TABLE IF EXISTS `animecv`;
CREATE TABLE `animecv`  (
  `CVID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'CVID',
  `CVName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'CV名字',
  PRIMARY KEY (`CVID`) USING BTREE,
  UNIQUE INDEX `CVName`(`CVID` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `animecv` VALUES (80, '石原夏织');
INSERT INTO `animecv` VALUES (81, '羚邦国际');
INSERT INTO `animecv` VALUES (82, '石见舞菜香');
INSERT INTO `animecv` VALUES (83, '白石晴香');
INSERT INTO `animecv` VALUES (84, '八代拓');
INSERT INTO `animecv` VALUES (85, '梅原裕一郎');
INSERT INTO `animecv` VALUES (86, '杉山纪彰');
INSERT INTO `animecv` VALUES (87, '诹访奈奈香');
INSERT INTO `animecv` VALUES (88, '加隈亚衣');
INSERT INTO `animecv` VALUES (89, '新井里美');
INSERT INTO `animecv` VALUES (90, '野口瑠璃子');
INSERT INTO `animecv` VALUES (91, '相良茉优');
INSERT INTO `animecv` VALUES (92, '小坂井祐莉绘');
INSERT INTO `animecv` VALUES (93, '藤田茜');
INSERT INTO `animecv` VALUES (94, '木户衣吹');
INSERT INTO `animecv` VALUES (95, '石川由依');
INSERT INTO `animecv` VALUES (96, '茅野愛衣');
INSERT INTO `animecv` VALUES (97, '内田雄馬');
INSERT INTO `animecv` VALUES (98, '佐倉綾音');
INSERT INTO `animecv` VALUES (99, '久保ユリカ');
INSERT INTO `animecv` VALUES (100, '橋本ちなみ');
INSERT INTO `animecv` VALUES (101, '小倉唯');
INSERT INTO `animecv` VALUES (102, '岡本信彦');
INSERT INTO `animecv` VALUES (103, '三泽纱千香');
INSERT INTO `animecv` VALUES (104, '内田雄马');
INSERT INTO `animecv` VALUES (105, '户松遥');
INSERT INTO `animecv` VALUES (106, '山下大辉');
INSERT INTO `animecv` VALUES (107, '丰崎爱生');
INSERT INTO `animecv` VALUES (108, '寿美菜子');
INSERT INTO `animecv` VALUES (109, '真田麻美');
INSERT INTO `animecv` VALUES (110, '米泽圆');
INSERT INTO `animecv` VALUES (111, '藤东知夏');
INSERT INTO `animecv` VALUES (112, '千菅春香');
INSERT INTO `animecv` VALUES (113, '赤崎千夏');
INSERT INTO `animecv` VALUES (114, '细谷佳正');
INSERT INTO `animecv` VALUES (115, '内田真礼');
INSERT INTO `animecv` VALUES (116, '小野大辅');
INSERT INTO `animecv` VALUES (117, '桑原由气');
INSERT INTO `animecv` VALUES (118, '田所梓');
INSERT INTO `animecv` VALUES (119, '子安武人');
INSERT INTO `animecv` VALUES (120, '广濑友纪');
INSERT INTO `animecv` VALUES (121, '高田忧希');
INSERT INTO `animecv` VALUES (122, '福绪唯');
INSERT INTO `animecv` VALUES (123, '稻田彻');
INSERT INTO `animecv` VALUES (124, '清川元梦');
INSERT INTO `animecv` VALUES (125, '井上喜久子');
INSERT INTO `animecv` VALUES (126, '小市真琴');
INSERT INTO `animecv` VALUES (127, '安元洋贵');
INSERT INTO `animecv` VALUES (128, '加藤敦子');
INSERT INTO `animecv` VALUES (129, '吉冈茉祐');
INSERT INTO `animecv` VALUES (130, '奥野香耶');
INSERT INTO `animecv` VALUES (131, '羽多野涉');
INSERT INTO `animecv` VALUES (132, '衣川里佳');
INSERT INTO `animecv` VALUES (133, '牧野由依');
INSERT INTO `animecv` VALUES (134, '堀江由衣');
INSERT INTO `animecv` VALUES (135, '佐藤利奈');
INSERT INTO `animecv` VALUES (136, '今村彩夏');
INSERT INTO `animecv` VALUES (137, '木村珠莉');
INSERT INTO `animecv` VALUES (138, '井泽诗织');
INSERT INTO `animecv` VALUES (139, '黑木穗乃香');
INSERT INTO `animecv` VALUES (140, '下地紫野');
INSERT INTO `animecv` VALUES (141, '沼仓爱美');
INSERT INTO `animecv` VALUES (142, '田丸笃志');
INSERT INTO `animecv` VALUES (143, '浅利辽太');

-- ----------------------------
-- Table structure for animetype
-- ----------------------------
DROP TABLE IF EXISTS `animetype`;
CREATE TABLE `animetype`  (
  `TypeID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '动漫类型ID',
  `Type` enum('小说改','魔法','奇幻','架空','原创','战斗','日常','喜剧','动画','校园','百合','恋爱') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '动漫类型名字',
  PRIMARY KEY (`TypeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `animeupdater` VALUES (21, 1, '2023-01-15 17:15:10');
INSERT INTO `animeupdater` VALUES (22, 1, '2023-01-15 17:26:41');
INSERT INTO `animeupdater` VALUES (23, 1, '2023-01-15 17:33:00');
INSERT INTO `animeupdater` VALUES (24, 1, '2023-01-16 07:00:48');
INSERT INTO `animeupdater` VALUES (25, 1, '2023-01-16 07:25:40');
INSERT INTO `animeupdater` VALUES (26, 1, '2023-01-16 07:30:44');
INSERT INTO `animeupdater` VALUES (27, 1, '2023-01-20 15:16:27');
INSERT INTO `animeupdater` VALUES (28, 1, '2023-01-21 00:28:33');
INSERT INTO `animeupdater` VALUES (29, 1, '2023-01-21 00:35:02');
INSERT INTO `animeupdater` VALUES (30, 1, '2023-01-21 15:36:07');
INSERT INTO `animeupdater` VALUES (31, 1, '2023-01-21 15:37:53');
INSERT INTO `animeupdater` VALUES (32, 1, '2023-01-22 14:08:37');
INSERT INTO `animeupdater` VALUES (33, 1, '2023-01-22 14:13:20');
INSERT INTO `animeupdater` VALUES (34, 1, '2023-01-22 15:07:47');
INSERT INTO `animeupdater` VALUES (35, 1, '2023-01-22 15:42:35');
INSERT INTO `animeupdater` VALUES (36, 1, '2023-01-30 16:02:07');
INSERT INTO `animeupdater` VALUES (37, 1, '2023-01-30 16:05:41');

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `comment` VALUES (16, '2022-12-24 04:01:20', '真的真的很好看~~~~~', 6, 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 672 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `cv2anime` VALUES (262, 5, 8);
INSERT INTO `cv2anime` VALUES (263, 5, 28);
INSERT INTO `cv2anime` VALUES (264, 5, 29);
INSERT INTO `cv2anime` VALUES (265, 5, 30);
INSERT INTO `cv2anime` VALUES (266, 5, 31);
INSERT INTO `cv2anime` VALUES (267, 4, 32);
INSERT INTO `cv2anime` VALUES (268, 4, 33);
INSERT INTO `cv2anime` VALUES (269, 4, 34);
INSERT INTO `cv2anime` VALUES (270, 4, 35);
INSERT INTO `cv2anime` VALUES (271, 4, 36);
INSERT INTO `cv2anime` VALUES (272, 4, 10);
INSERT INTO `cv2anime` VALUES (273, 9, 14);
INSERT INTO `cv2anime` VALUES (274, 9, 36);
INSERT INTO `cv2anime` VALUES (275, 9, 49);
INSERT INTO `cv2anime` VALUES (276, 9, 43);
INSERT INTO `cv2anime` VALUES (277, 9, 35);
INSERT INTO `cv2anime` VALUES (278, 9, 48);
INSERT INTO `cv2anime` VALUES (279, 14, 52);
INSERT INTO `cv2anime` VALUES (280, 14, 53);
INSERT INTO `cv2anime` VALUES (281, 14, 54);
INSERT INTO `cv2anime` VALUES (282, 14, 55);
INSERT INTO `cv2anime` VALUES (283, 20, 76);
INSERT INTO `cv2anime` VALUES (284, 20, 77);
INSERT INTO `cv2anime` VALUES (285, 20, 13);
INSERT INTO `cv2anime` VALUES (286, 20, 78);
INSERT INTO `cv2anime` VALUES (287, 20, 79);
INSERT INTO `cv2anime` VALUES (288, 20, 70);
INSERT INTO `cv2anime` VALUES (292, 13, 12);
INSERT INTO `cv2anime` VALUES (293, 13, 2);
INSERT INTO `cv2anime` VALUES (294, 13, 13);
INSERT INTO `cv2anime` VALUES (295, 13, 14);
INSERT INTO `cv2anime` VALUES (296, 13, 15);
INSERT INTO `cv2anime` VALUES (297, 13, 16);
INSERT INTO `cv2anime` VALUES (382, 27, 12);
INSERT INTO `cv2anime` VALUES (383, 27, 18);
INSERT INTO `cv2anime` VALUES (384, 27, 22);
INSERT INTO `cv2anime` VALUES (385, 27, 93);
INSERT INTO `cv2anime` VALUES (386, 27, 94);
INSERT INTO `cv2anime` VALUES (387, 27, 95);
INSERT INTO `cv2anime` VALUES (397, 28, 46);
INSERT INTO `cv2anime` VALUES (398, 28, 49);
INSERT INTO `cv2anime` VALUES (399, 28, 96);
INSERT INTO `cv2anime` VALUES (400, 28, 97);
INSERT INTO `cv2anime` VALUES (401, 28, 98);
INSERT INTO `cv2anime` VALUES (402, 28, 99);
INSERT INTO `cv2anime` VALUES (403, 28, 100);
INSERT INTO `cv2anime` VALUES (404, 28, 101);
INSERT INTO `cv2anime` VALUES (405, 28, 102);
INSERT INTO `cv2anime` VALUES (411, 29, 106);
INSERT INTO `cv2anime` VALUES (412, 29, 105);
INSERT INTO `cv2anime` VALUES (413, 29, 83);
INSERT INTO `cv2anime` VALUES (414, 29, 103);
INSERT INTO `cv2anime` VALUES (415, 29, 104);
INSERT INTO `cv2anime` VALUES (432, 30, 107);
INSERT INTO `cv2anime` VALUES (433, 30, 4);
INSERT INTO `cv2anime` VALUES (434, 30, 64);
INSERT INTO `cv2anime` VALUES (435, 30, 108);
INSERT INTO `cv2anime` VALUES (436, 30, 13);
INSERT INTO `cv2anime` VALUES (437, 30, 109);
INSERT INTO `cv2anime` VALUES (438, 30, 110);
INSERT INTO `cv2anime` VALUES (439, 30, 111);
INSERT INTO `cv2anime` VALUES (440, 31, 4);
INSERT INTO `cv2anime` VALUES (441, 31, 13);
INSERT INTO `cv2anime` VALUES (442, 31, 64);
INSERT INTO `cv2anime` VALUES (443, 31, 107);
INSERT INTO `cv2anime` VALUES (444, 31, 108);
INSERT INTO `cv2anime` VALUES (445, 31, 109);
INSERT INTO `cv2anime` VALUES (446, 31, 110);
INSERT INTO `cv2anime` VALUES (447, 31, 111);
INSERT INTO `cv2anime` VALUES (463, 32, 12);
INSERT INTO `cv2anime` VALUES (464, 32, 16);
INSERT INTO `cv2anime` VALUES (465, 32, 18);
INSERT INTO `cv2anime` VALUES (466, 32, 70);
INSERT INTO `cv2anime` VALUES (467, 32, 112);
INSERT INTO `cv2anime` VALUES (468, 32, 113);
INSERT INTO `cv2anime` VALUES (469, 32, 114);
INSERT INTO `cv2anime` VALUES (470, 32, 115);
INSERT INTO `cv2anime` VALUES (518, 34, 118);
INSERT INTO `cv2anime` VALUES (519, 34, 117);
INSERT INTO `cv2anime` VALUES (520, 34, 116);
INSERT INTO `cv2anime` VALUES (521, 34, 70);
INSERT INTO `cv2anime` VALUES (522, 34, 119);
INSERT INTO `cv2anime` VALUES (523, 34, 35);
INSERT INTO `cv2anime` VALUES (524, 34, 120);
INSERT INTO `cv2anime` VALUES (525, 34, 121);
INSERT INTO `cv2anime` VALUES (526, 34, 122);
INSERT INTO `cv2anime` VALUES (527, 34, 123);
INSERT INTO `cv2anime` VALUES (528, 34, 124);
INSERT INTO `cv2anime` VALUES (529, 34, 125);
INSERT INTO `cv2anime` VALUES (530, 34, 126);
INSERT INTO `cv2anime` VALUES (531, 34, 127);
INSERT INTO `cv2anime` VALUES (532, 34, 30);
INSERT INTO `cv2anime` VALUES (604, 33, 12);
INSERT INTO `cv2anime` VALUES (605, 33, 16);
INSERT INTO `cv2anime` VALUES (606, 33, 18);
INSERT INTO `cv2anime` VALUES (607, 33, 70);
INSERT INTO `cv2anime` VALUES (608, 33, 112);
INSERT INTO `cv2anime` VALUES (609, 33, 113);
INSERT INTO `cv2anime` VALUES (610, 33, 114);
INSERT INTO `cv2anime` VALUES (611, 33, 115);
INSERT INTO `cv2anime` VALUES (612, 21, 35);
INSERT INTO `cv2anime` VALUES (615, 36, 41);
INSERT INTO `cv2anime` VALUES (616, 36, 128);
INSERT INTO `cv2anime` VALUES (617, 36, 10);
INSERT INTO `cv2anime` VALUES (618, 36, 129);
INSERT INTO `cv2anime` VALUES (619, 36, 130);
INSERT INTO `cv2anime` VALUES (620, 36, 72);
INSERT INTO `cv2anime` VALUES (621, 36, 131);
INSERT INTO `cv2anime` VALUES (622, 36, 11);
INSERT INTO `cv2anime` VALUES (623, 36, 132);
INSERT INTO `cv2anime` VALUES (624, 36, 133);
INSERT INTO `cv2anime` VALUES (625, 36, 134);
INSERT INTO `cv2anime` VALUES (626, 36, 135);
INSERT INTO `cv2anime` VALUES (627, 36, 136);
INSERT INTO `cv2anime` VALUES (628, 37, 15);
INSERT INTO `cv2anime` VALUES (629, 37, 137);
INSERT INTO `cv2anime` VALUES (630, 37, 138);
INSERT INTO `cv2anime` VALUES (631, 37, 9);
INSERT INTO `cv2anime` VALUES (632, 37, 139);
INSERT INTO `cv2anime` VALUES (633, 37, 140);
INSERT INTO `cv2anime` VALUES (634, 37, 141);
INSERT INTO `cv2anime` VALUES (635, 37, 142);
INSERT INTO `cv2anime` VALUES (636, 37, 143);
INSERT INTO `cv2anime` VALUES (637, 26, 37);
INSERT INTO `cv2anime` VALUES (638, 26, 44);
INSERT INTO `cv2anime` VALUES (639, 26, 91);
INSERT INTO `cv2anime` VALUES (640, 26, 92);
INSERT INTO `cv2anime` VALUES (641, 35, 118);
INSERT INTO `cv2anime` VALUES (642, 35, 117);
INSERT INTO `cv2anime` VALUES (643, 35, 116);
INSERT INTO `cv2anime` VALUES (644, 35, 70);
INSERT INTO `cv2anime` VALUES (645, 35, 119);
INSERT INTO `cv2anime` VALUES (646, 35, 35);
INSERT INTO `cv2anime` VALUES (647, 35, 120);
INSERT INTO `cv2anime` VALUES (648, 35, 121);
INSERT INTO `cv2anime` VALUES (649, 35, 122);
INSERT INTO `cv2anime` VALUES (650, 35, 123);
INSERT INTO `cv2anime` VALUES (651, 35, 124);
INSERT INTO `cv2anime` VALUES (652, 35, 125);
INSERT INTO `cv2anime` VALUES (653, 35, 126);
INSERT INTO `cv2anime` VALUES (654, 35, 127);
INSERT INTO `cv2anime` VALUES (655, 35, 30);
INSERT INTO `cv2anime` VALUES (656, 23, 82);
INSERT INTO `cv2anime` VALUES (657, 23, 83);
INSERT INTO `cv2anime` VALUES (658, 23, 84);
INSERT INTO `cv2anime` VALUES (659, 24, 60);
INSERT INTO `cv2anime` VALUES (660, 24, 61);
INSERT INTO `cv2anime` VALUES (661, 24, 62);
INSERT INTO `cv2anime` VALUES (662, 24, 85);
INSERT INTO `cv2anime` VALUES (663, 25, 1);
INSERT INTO `cv2anime` VALUES (664, 25, 70);
INSERT INTO `cv2anime` VALUES (665, 25, 86);
INSERT INTO `cv2anime` VALUES (666, 25, 87);
INSERT INTO `cv2anime` VALUES (667, 25, 88);
INSERT INTO `cv2anime` VALUES (668, 25, 89);
INSERT INTO `cv2anime` VALUES (669, 25, 90);
INSERT INTO `cv2anime` VALUES (670, 22, 51);
INSERT INTO `cv2anime` VALUES (671, 22, 82);

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form`  (
  `PostID` int NOT NULL,
  `PostTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PostAuthor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PostDate` date NULL DEFAULT NULL,
  `PostBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`PostID`) USING BTREE,
  INDEX `PostAuthor`(`PostAuthor` ASC) USING BTREE,
  CONSTRAINT `form_ibfk_1` FOREIGN KEY (`PostAuthor`) REFERENCES `user` (`UserName`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of form
-- ----------------------------
INSERT INTO `form` VALUES (1, '魅族20官宣，2023春天见，魅族汽车也有望到来', 'ACong', '2022-12-23', '这玩意好用吗？');
INSERT INTO `form` VALUES (2, '魅族20系列现身数据库，搭载骁龙 8 Gen 2', 'ACong', '2022-12-24', '火龙888');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `news` VALUES (16, '《孤独摇滚！》来年四月举行实体见面会＆迷你演唱会，蓝光第一卷附活动抽选资格券', '活动', '纳西妲', '2022-12-24 11:05:51', 857, '\n\n				\n		<p>电视动画《孤独摇滚！》将于 2023 年 4 月 23 日于东京都内举办实体见面会与迷你演唱会。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6233 alignnone\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239296.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239296.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239296.webp-300x169.jpg 300w\" sizes=\"(max-width: 460px) 100vw, 749px\" width=\"460\" height=\"422\"><br>\n活动预计请到声演后藤一里的青山吉能、声演伊地知虹夏的铃代纱弓、声演山田凉的水野朔、声演喜多郁代的长谷川育美，活动优先申请资格券将附在 12月28日 发售的蓝光／DVD 第一卷中，想要参加活动的粉丝务必记得抢购！</p>\n<p>(c)はまじあき/芳文社・アニプレックス</p>\n\n	');
INSERT INTO `news` VALUES (17, '轻小说《无名记忆》TV动画化，特报PV及视觉图公开', '动画', '纳西妲', '2022-12-24 11:07:00', 929, '\n\n				\n		<p>古宫九时原作、 chibi插画的轻小说《Unnamed Memory&nbsp;无名记忆》宣布TV动画化，特报PV及先导视觉图公开，将于2023年播出。</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1yV4y1w7vF\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 297.667px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p><img decoding=\"async\" title=\"轻小说《无名记忆》TV动画化，特报PV及视觉图公开\" \nwidth=460 src=\"http://tva2.sinaimg.cn/large/006yt1Omgy1h92i3bfbcrj30u016fwlt.jpg\" alt=\"轻小说《无名记忆》TV动画化，特报PV及视觉图公开\"></p>\n<p>【STAFF】<br>\n原作：古宫九时（电撃の新文芸/ＫＡＤＯＫＡＷＡ刊）<br>\n原作插画：chibi<br>\n导演：三浦和也<br>\n系列构成：赤尾でこ<br>\n角色设计：能海知佳<br>\n音乐：松田彬人<br>\n动画制作：ENGI</p>\n<p>【CAST】<br>\nオスカー：中岛良树<br>\nティナーシャ：种崎敦美</p>\n\n	');
INSERT INTO `news` VALUES (18, '《妖幻三重奏》公开正式宣传海报及播出前PV，性转恋爱喜剧开演！', '动画', '纳西妲', '2022-12-24 11:10:10', 841, '\n\n				\n		<p>动画《妖幻三重奏》公开正式宣传海报及播出前 PV，公开新参演声优名单。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6513 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240586.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240586.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4240586.webp-212x300.jpg 212w\" sizes=\"(max-width:460px) 100vw, 655px\" width=\"460\" height=\"926\"></p>\n<p><iframe src=\"//player.bilibili.com/player.html?aid=648971616&amp;bvid=BV1Re4y1K7MW&amp;cid=928444664&amp;page=1\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width:460px; height: 297.667px;\" width=\"460\" height=\"380\" frameborder=\"no\"> </iframe><br>\n播出前 PV 中可以看到因为妖猫白金施术而让男主角‧祭裡的身体变成了女性，青梅竹马花奏铃也露出了困惑的表情，而两人就将在这样的未解之谜中踏入高中生活！</p>\n<p>新参演的声优包括：户松遥声演铃从中学以来交往的好友‧鸟羽弥生，木野日菜声演喜欢次文化的月丘露西，石毛翔弥声演拥有「神速」别名的祓忍二之曲宗牙，新井裡美声演宗牙的「式鬼」二之曲波之助。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6514 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240581.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240581.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4240581.webp-300x169.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4240581.webp-768x432.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4240581.webp-800x450.jpg 460w\" sizes=\"(max-width: 460px) 100vw, 854px\" width=\"460\" height=\"480\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6515 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240582.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240582.webp.jpg 854w, https://www.hotacg.com/wp-content/uploads/2022/12/4240582.webp-300x169.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4240582.webp-768x432.jpg 768w, https://www.hotacg.com/wp-content/uploads/2022/12/4240582.webp-800x450.jpg 800w\" sizes=\"(max-width: 854px) 100vw, 854px\" width=\"854\" height=\"480\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6516 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240583.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240583.webp.jpg 854w, https://www.hotacg.com/wp-content/uploads/2022/12/4240583.webp-300x169.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4240583.webp-768x432.jpg 768w, https://www.hotacg.com/wp-content/uploads/2022/12/4240583.webp-800x450.jpg 800w\" sizes=\"(max-width: 854px) 100vw, 854px\" width=\"854\" height=\"480\"></p>\n<p><img decoding=\"async\" class=\"size-full wp-image-6517 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240584.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4240584.webp.jpg 854w, https://www.hotacg.com/wp-content/uploads/2022/12/4240584.webp-300x169.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4240584.webp-768x432.jpg 768w, https://www.hotacg.com/wp-content/uploads/2022/12/4240584.webp-800x450.jpg 800w\" sizes=\"(max-width: 854px) 100vw, 854px\" width=\"854\" height=\"480\"><br>\n(c)矢吹健太朗／集英社・あやかしトライアングル製作委员会</p>\n\n	');
INSERT INTO `news` VALUES (19, '《怕痛的我把防御力点满就对了》第2季新预告', '动画', '纳西妲', '2022-12-24 11:11:17', 869, '\n\n				\n		<p>日本着名长名系列人气轻小说《怕痛的我把防御力点满就对了》TV动画第二季确定将于2023年1月11日开播，日前官方公布了最新预告第二弹以及主艺图。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6520 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/1671325842_335170.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/1671325842_335170.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/1671325842_335170.webp-211x300.jpg 211w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"813\"><br>\n《怕痛的我，把防御力点满就对了》是夕蜜柑着作，狐印负责插画的轻小说，蠢萌可爱的主人公梅普露缺乏一般游戏常识，把所有配点都灌到防御力（VIT）去了。全点防御力，使梅普露取得了特殊技能「绝对防御」，甚至附送一击必杀的反击技。<br>\n<iframe src=\"//player.bilibili.com/player.html?aid=733976333&amp;bvid=BV18D4y1h7md&amp;cid=927616966&amp;page=1\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 470px; height: 297.667px;\" width=\"600\" height=\"380\" frameborder=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span> </iframe></p>\n\n	');
INSERT INTO `news` VALUES (20, '2023年4月新番《可爱过头大危机》第一弹PV公布', '动画', '纳西妲', '2022-12-24 11:13:10', 1129, '\n\n				\n		<p>TV动画《可爱过头大危机》第一弹PV及新视觉图公开，将于2023年4月播出。</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1Kg411J7P9\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 297.667px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>从宇宙帝国来到地球做调查的丽莎。本来想着「直接毁掉不就好了吗」，但她在偶然间遇到了『猫』，并受到了这种来自未体验过的可爱的冲击…!?</p>\n<p><img decoding=\"async\" title=\"2023年4月新番《可爱过头大危机》第一弹PV公布\" \nwidth=460\nsrc=\"http://tvax2.sinaimg.cn/large/006yt1Omgy1h989a0ni3dj31jk26kgzq.jpg\" alt=\"2023年4月新番《可爱过头大危机》第一弹PV公布\"></p>\n<p>【STAFF】<br>\n原作：城戸みつる 『カワイスギクライシス』<br>\n(集英社 ジャンプコミックス刊)<br>\n导演：羽鳥潤<br>\n系列构成·剧本：皐月彩<br>\n角色设计：渡辺まゆみ<br>\n音乐：成田旬·瀬尾悠介<br>\n色彩设计：瀬戸治子<br>\n美术监督：和田千帆<br>\n摄影监督：坪内弘樹<br>\n編集：村井秀明<br>\n音响监督：中谷希美<br>\n音响效果：風間結花<br>\n音响制作：ビットグルーヴプロモーション<br>\n音乐制作：ポニーキャニオン<br>\n动画制作：SynergySP</p>\n<p>【CAST】<br>\nリザ・ルーナ役：花守ゆみり<br>\nよぞら役：藤原夏海<br>\n向井誠二役：小笠原仁<br>\n矢薙華澄役：会沢紗弥<br>\nガルミ・ルゥ役：伊藤彩沙<br>\nラスタ・コール役：宮本侑芽<br>\nアマト・ロイ役：中村悠一<br>\nフィアナ・ティアリー役：近藤玲奈<br>\n亜妻光彦役：緑川光<br>\n亜妻ささら役：富田美憂</p>\n\n	');
INSERT INTO `news` VALUES (21, '2023年1月新番《转生王女与天才千金的魔法革命》艾妮丝菲亚角色介绍 PV公开', '动画', '纳西妲', '2022-12-24 11:14:48', 898, '\n\n				\n		<p>TV动画《转生王女与天才千金的魔法革命》艾妮丝菲亚（CV：千本木彩花）角色介绍 PV公开，该作将在2023年1月4日开播</p>\n<p><iframe class=\"wpjam_video\" src=\"https://player.bilibili.com/player.html?bvid=BV1Q8411n76Z\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\" data-origwidth=\"600\" data-origheight=\"380\" style=\"width: 460px; height: 297.667px;\" width=\"460\" height=\"380\" frameborder=\"no\"></iframe></p>\n<p>安妮丝菲亚·文·帕雷迪亚<br>\n帕雷迪亚王国的公主和转生者。 虽然不能使用魔法，但应用了前世的知识发明了自己的魔法技术“魔法学”。</p>\n<p>片头曲：花たん《アルカンシェル》<br>\n片尾曲：千本木彩花、石见舞菜香《Only for you》</p>\n<p><img decoding=\"async\" title=\"2023年1月新番《转生王女与天才千金的魔法革命》艾妮丝菲亚角色介绍 PV公开\" \nwidth=460 src=\"http://tva3.sinaimg.cn/large/006yt1Omgy1h9clhsk12ej31hc0u0n1n.jpg\" alt=\"2023年1月新番《转生王女与天才千金的魔法革命》艾妮丝菲亚角色介绍 PV公开\"></p>\n<p>【STAFF】<br>\n原作：鸦ぴえろ<br>\n角色原案：きさらぎゆり<br>\n导演：玉木慎吾<br>\n系列构成：渡航<br>\n角色设计：井出直美<br>\n生物设计：宫泽努<br>\n印象板：益田贤治<br>\n美术设定：滝口胜久<br>\n美术监督：细井友保<br>\n色彩设计：林由稀<br>\n撮影监督：伊藤康行<br>\noff-line编集：小岛俊彦<br>\n音响监督：立石弥生<br>\n音响制作：ビットグルーヴプロモーション<br>\n音乐：日向萌<br>\n音乐制作：KADOKAWA<br>\n动画制作：diomedéa</p>\n<p>【CAST】<br>\n艾妮丝菲亚·温·帕雷提亚：千本木彩花<br>\n尤菲莉亚·玛赞塔：石见舞菜香<br>\n伊莉亚·克拉尔：加隈亚衣<br>\n亚尔加德·伯纳·帕雷提亚：坂田将吾<br>\n蕾妮·席昂：羊宫妃那<br>\n提尔提·克拉雷特：篠原侑<br>\n奥尔芬斯·伊尔·帕雷提亚：滨田贤二<br>\n格兰茨·玛曾达：坪井智浩<br>\n夏尔特鲁兹伯爵：露崎亘<br>\n莫里茨·夏尔特鲁兹：八代拓<br>\n纳乌尔·斯普劳德：冈野友佑<br>\n萨兰·梅奇：手冢宏通<br>\n旁白：钉宫理惠</p>\n\n	');
INSERT INTO `news` VALUES (22, '《天使降临到我身边！珍贵的朋友》治愈上映！萝莉泡澡场面电影不缺席！', '电影', '纳西妲', '2022-12-24 11:16:34', 945, '\n\n				\n		<p>改编自椋木 Nanatsu 同名百合作品，2022 年最治愈动画《天使降临到我身边！珍贵的朋友》，赶在本周五（12月16日）正式上映前，片商抢先宣布连续四周的入场特典。五位主要声优日前也齐聚一堂，异口同声表示超喜欢这部作品之外，甚至喊话：「各位如果未来真的还想看到这些角色的话，我们无论年纪多大都可以继续演！」<br>\n<img decoding=\"async\" class=\"size-full wp-image-6321 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239538.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239538.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239538.webp-210x300.jpg 210w, https://www.hotacg.com/wp-content/uploads/2022/12/4239538.webp-717x1024.jpg  460w\" sizes=\"(max-width:  460px) 100vw, 756px\" width=\" 460\" height=\"1080\"><br>\n由指出毬亚、长江里加、鬼头明里、大和田仁美、大空直美等五位声优携手合作，充满超可爱萝莉的动画剧场版《天使降临到我身边！珍贵的朋友》，甚至被日本网友选出「愈」这个字代表此片，形容能被如此舒心的作品给治愈实在太美好。《天使降临到我身边！珍贵的朋友》充满超可爱萝莉，五位声优也亲口表示自己超爱。无论是为角色配音，或是组团举办演唱会，开心之外更是相当幸福，鬼头明里强调《天使降临到我身边！》并不是需要打倒强敌、有着远大目标的作品，表示自己可以一直演下去。尤其整个团队都有同样想法，笑说：「无论到几岁，我都可以继续演这个角色！」<br>\n<img decoding=\"async\" class=\"size-full wp-image-6322 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239539.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239539.webp.jpg  460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239539.webp-300x126.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4239539.webp-1024x428.jpg  460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239539.webp-768x321.jpg  460w\" sizes=\"(max-width:  460px) 100vw,  460px\" width=\" 460\" height=\"502\"><br>\n至于电视版播出时引起粉丝话题，几乎每集都会出现的「泡澡」场景，导演平牧大辅被问到这是不是一种「粉丝福利」时，他笑说完全没有这种念头，反而是想要打造一个可以放松谈心的场景。好康的是，这回在本片当中，再度可以听到两位角色在浴缸哼歌的画面。导演透露这其实是借用了粉丝的想法，获得对方同意后而得以在电影版中实现。<br>\n<img decoding=\"async\" class=\"size-full wp-image-6323 aligncenter\" src=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239540.webp.jpg\" alt=\"\" srcset=\"https://www.hotacg.com/wp-content/uploads/2022/12/4239540.webp.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239540.webp-300x126.jpg 300w, https://www.hotacg.com/wp-content/uploads/2022/12/4239540.webp-1024x428.jpg 460w, https://www.hotacg.com/wp-content/uploads/2022/12/4239540.webp-768x321.jpg 460w\" sizes=\"(max-width: 460px) 100vw, 460px\" width=\"460\" height=\"502\"><br>\n《天使降临到我身边！珍贵的朋友》将于本周五（12月16日）在中国台湾上映，采昌国际多媒体除了希望粉丝们可以趁着进电影院，随着剧情治愈身心之外，更也公布只要在上映影厅购买电影票乙张，就可以获得入场特典乙份，第一周送「日本原装迷你色纸」、第二到第四周均送「角色限定明信片」，数量有限，赠完即止，赠送日期请依各影城公告为准。</p>\n\n	');

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
) ENGINE = InnoDB AUTO_INCREMENT = 259 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `type2anime` VALUES (86, 7, 15);
INSERT INTO `type2anime` VALUES (87, 8, 15);
INSERT INTO `type2anime` VALUES (88, 3, 16);
INSERT INTO `type2anime` VALUES (89, 7, 17);
INSERT INTO `type2anime` VALUES (90, 11, 17);
INSERT INTO `type2anime` VALUES (91, 8, 18);
INSERT INTO `type2anime` VALUES (92, 7, 18);
INSERT INTO `type2anime` VALUES (93, 11, 19);
INSERT INTO `type2anime` VALUES (131, 9, 5);
INSERT INTO `type2anime` VALUES (132, 11, 5);
INSERT INTO `type2anime` VALUES (133, 3, 4);
INSERT INTO `type2anime` VALUES (134, 7, 9);
INSERT INTO `type2anime` VALUES (135, 11, 14);
INSERT INTO `type2anime` VALUES (136, 7, 14);
INSERT INTO `type2anime` VALUES (137, 10, 14);
INSERT INTO `type2anime` VALUES (138, 8, 20);
INSERT INTO `type2anime` VALUES (139, 10, 20);
INSERT INTO `type2anime` VALUES (146, 11, 13);
INSERT INTO `type2anime` VALUES (191, 7, 27);
INSERT INTO `type2anime` VALUES (192, 8, 27);
INSERT INTO `type2anime` VALUES (194, 1, 28);
INSERT INTO `type2anime` VALUES (196, 11, 29);
INSERT INTO `type2anime` VALUES (201, 11, 30);
INSERT INTO `type2anime` VALUES (202, 10, 30);
INSERT INTO `type2anime` VALUES (203, 10, 31);
INSERT INTO `type2anime` VALUES (204, 11, 31);
INSERT INTO `type2anime` VALUES (210, 6, 32);
INSERT INTO `type2anime` VALUES (218, 7, 34);
INSERT INTO `type2anime` VALUES (219, 1, 34);
INSERT INTO `type2anime` VALUES (220, 4, 34);
INSERT INTO `type2anime` VALUES (238, 6, 33);
INSERT INTO `type2anime` VALUES (239, 12, 21);
INSERT INTO `type2anime` VALUES (240, 8, 21);
INSERT INTO `type2anime` VALUES (243, 6, 36);
INSERT INTO `type2anime` VALUES (244, 11, 37);
INSERT INTO `type2anime` VALUES (245, 8, 26);
INSERT INTO `type2anime` VALUES (246, 3, 26);
INSERT INTO `type2anime` VALUES (247, 4, 35);
INSERT INTO `type2anime` VALUES (248, 7, 35);
INSERT INTO `type2anime` VALUES (249, 1, 35);
INSERT INTO `type2anime` VALUES (250, 11, 23);
INSERT INTO `type2anime` VALUES (251, 10, 23);
INSERT INTO `type2anime` VALUES (252, 6, 24);
INSERT INTO `type2anime` VALUES (253, 10, 24);
INSERT INTO `type2anime` VALUES (254, 1, 25);
INSERT INTO `type2anime` VALUES (255, 3, 25);
INSERT INTO `type2anime` VALUES (256, 6, 25);
INSERT INTO `type2anime` VALUES (257, 3, 22);
INSERT INTO `type2anime` VALUES (258, 10, 22);

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
  UNIQUE INDEX `UserAccount`(`UserAccount` ASC, `UserEmail` ASC) USING BTREE,
  INDEX `UserName`(`UserName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
