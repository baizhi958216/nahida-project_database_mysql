/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : nahida_anime

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 06/12/2022 18:22:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE nahida_anime;
USE nahida_anime;

-- ----------------------------
-- Table structure for anime
-- ----------------------------
DROP TABLE IF EXISTS `anime`;
CREATE TABLE `anime`  (
  `a_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_release_date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_set` int NULL DEFAULT NULL,
  `a_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `a_hot` int NULL DEFAULT NULL,
  `a_cv` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_stats` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_lang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `a_recommend` tinyint(1) NULL DEFAULT NULL,
  UNIQUE INDEX `a_id`(`a_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anime
-- ----------------------------
INSERT INTO `anime` VALUES ('000001', '魔女之旅', '2020-10-02', 'C2C', 12, '小说改,魔法,战斗', '某个地方有一位旅人，她的名字是伊蕾娜。是一位年纪轻轻就成了魔法使中最上位「魔女」的天才。因为向往着幼时读过的旅行故事，随意地进行着漫长的旅行。在这个广阔的世界里自由地漫步，接触着形形色色有趣的人，体味着人们美好的日常生活，她作为一名旅人，不带有任何目的地接触着各种国家的各色人群。还有同样数量的——「不必理会我。我只是一介旅人罢了。接下来还得继续前往下一个地方呢。」由魔女伊蕾娜所连接的，关于相遇和离别的故事……。', 100, '本渡枫,花泽香菜,黑泽朋世,日笠阳子', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000002', '莉可丽丝', '2022-07-02', 'A-1 Pictures', 13, '原创,战斗,日常', '安宁的日常——背后却暗藏秘密将犯罪防患于未然的秘密组织——“DA（Direct Attack）”隶属于DA的少女特工——“莉可丽丝”理所当然的日常，都要归功于她们。咖啡厅“莉可莉可” 作为DA支部，员工有号称史上最强莉可丽丝的精英·锦木千束、优秀却暗藏隐情的莉可丽丝·井上泷奈。这里供应的不光是咖啡和甜品，还有照顾孩子、代为购物、教外国人日语等服务，全都不像是“莉可丽丝”会做的事。自由随性又乐天的和平主义者·千束和效率至上的泷奈，反差巨大的两人组成搭档，开始了忙忙碌碌的每一天。', 40, '安济知佳,若山诗音,小清水亚美,久野美咲,榊　孝辅', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000003', '关于我转生变成史莱姆这档事 第二季', '2021-01-05', '8bit', 26, '小说改,奇幻,战斗', '主人公利姆鲁与仰慕他而聚集的众多魔物们所建立的国家「鸠拉·特恩佩斯特国」，经由与邻国的协议及交易，让「人类与魔物共同漫步的国家」这一温柔的理想逐步成形。利姆鲁作为曾是人类的史莱姆当然拥有「对人类的好意」……但这个世界中却存在着明确的「对魔物的敌意」。当这不合理的现实摆在眼前时，利姆鲁将做出选择。为了「什么都不想失去」——万众期待的转生喜剧突入暴风的新章！', 26, '利姆鲁：冈咲美保,\n大贤者：丰口惠美,\n维鲁德拉：前野智昭,\n红丸：古川慎,\n朱菜：千本木彩花,\n紫苑：M·A·O,\n苍影：江口拓也,\n白老：大冢芳忠,\n利古路德：山本兼平,\n哥布塔：泊明日菜,\n岚牙：小林亲弘,\n盖鲁德：山口太郎,\n加维尔：福岛润,\n托蕾妮：田中理惠,\n米莉姆：日高里菜,\n拉米莉丝：春野杏,\n迪亚波罗：樱井孝宏', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000004', '被开除出勇者队伍的驯兽使，邂逅了最强种猫耳少女', '2022-10-02', 'EMT SQUARED', 9, '奇幻', '“雷因，你被解雇了”突然有一天，雷因被驱逐出勇者的队伍。他选择当一个冒险家作为以后生命之路，在考试期间帮助一个摔倒的女孩。女孩名为奏，是最最强大的“猫灵族”！受到奏的邀请，雷因作为驭兽使，两人决定签订契约并组成一个队伍。在另一方面，失去雷因的勇者队伍开始意识到他的重要性。“喵……和雷因在一起的时候，总是感到惊讶”\n“不会无聊吧？”“……哇！是啊”使役一切的驭兽使和最强的伙伴凌驾于勇者队伍——。和重要的伙伴相遇并成长的冒险幻想！', 36, '千叶翔也,和气杏未,大久保瑠美,田中美海,指出毬亚,高野麻里佳,高桥李依', '连载中', '日语', 0);
INSERT INTO `anime` VALUES ('000005', '夫妇以上，恋人未满。', '2022-10-09', 'studio MOTHER', 9, '校园,恋爱', '不起眼的男高中生药院次郎，在“夫妻实习”的课堂上，和绝对不可能有关系的班上的美少女渡边星一起生活。他们对彼此的印象也很差。“阴”和“阳”不匹配非常刺激。洗完澡后的突发事件，突然的接触麻烦！？次郎虽然闷闷不乐，但还是下意识地想……“喂，真的好好地玩夫妻游戏吧”互相有想法的次郎和星为了得到交换组合的权利，认真地扮演夫妻。然而，酸甜苦辣的夫妻生活逐渐让彼此意识到各自的魅力。比“恋人”更刺激的，辣妹和无异性缘男生的“夫妻游戏”开始了  。', 42, '大西沙织,山下诚一郎,宫下早纪,增田俊树,高桥未奈美,和气杏未,小仓唯,野上翔,内田修一', '连载中', '日语', 1);
INSERT INTO `anime` VALUES ('000006', '契约之吻', '2022-07-02', 'A-1 Pictures', 13, '原创', '“贝隆市”——不属于任何国家，漂浮在太平洋上的巨型浮岛型城市。因其开采新能源资源“欧尔贡矿”而在这个世界上占有一席之地，贝隆市也经常发生被称为“D灾害”的由“恶魔”引起的特殊事件。\n只有一小部分人知道D灾害的存在，对其进行处理的是“PMC”（民间军事公司），生活在贝隆市的青年修则经营着一家，但公司的规模很小，而且修还要找工作，所以资金周转总是很困难。\n公私不分地、献身地支撑着修的生活的，是在贝隆市的学校上学的美少女高中生木更。还有一个，是修曾经所属的大型PMC的职员，也是他的前女友绫乃，她现在依然很关心修，对木更没有好感。\n木更对修有着强烈的执着，其根本在于两人的“契约”。\n她的真面目是恶魔。\n木更支撑着修的生活，也根据契约协助消灭恶魔。\n其代价是甜蜜而危险的“吻”。爱与契约，两人危险的羁绊。命运将会走向何方……', 0, '齐藤壮马,会泽纱弥,Lynn,大久保瑠美,渡边明乃,松田健一郎,长谷川芳明,内田彩,大西沙织,逢坂良太', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000007', '式守同学不只可爱而已', '2022-04-09', '动画工房', 12, '校园,恋爱,日常,漫画改', '超级“帅气女友“登场！ 和泉是一名拥有不幸体质的高中男生，他有一个和他同班的女朋友，叫做式守。 式守的笑容十分甜美、温柔，跟和泉在一起的时候脸上总是洋溢着幸福。她平时可爱动人，心中满是爱情，但只要看到和泉遇到危险，她就会……摇身一变，变成“帅气女友”！满是可爱×帅气的式守跟和泉将与他们的小伙伴一起带来无限愉快的日常！1000%美好的爱情喜剧，即将开幕！', 0, '大西沙织,梅田修一朗,松冈美里,日高里菜,冈本信彦', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000008', '关于我转生变成史莱姆这档事 第一季', '2018-10-02', '8bit', 24, '小说改,奇幻,战斗,魔法', '史莱姆生活，开始了。上班族的三上悟在道路上被歹徒给刺杀身亡后，回过神来发现自己转生到了异世界。不过，自己居然是“史莱姆”！他在得到利姆鲁这个名字后开始了自己的史莱姆人生，随着与各个种族相处交流的过程中，他定下了一个目标——那就是“建立一个任何种族都能愉快地一起生活的国家”！', 60, '冈咲美保,丰口惠美,前野智昭,花守由美里,小林亲弘,古川慎,千本木彩花', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000009', '恋爱FLOPS', '2022-10-12', 'Passione', 8, '日常', '平凡的男子高中生柏树朝，像往常一样走在一成不变的通学路上。\n然而，正和出门前无意间打开的电视里播放的奇妙占卜说的一样，他在这个早晨遭遇到了各种各样的灾难。\n在一个接一个发生的灾难中，朝和5名少女发生了可说是最糟糕的相遇。\n当他身心俱疲、好不容易到达学校时，作为转校生和新任教师的5名少女的身影却再次出现在了他的面前。\n朝努力隐藏自己的脸，但根本藏不住……\n自称是朝的好友伊集院好雄，向朝询问与5人之间的关系。\n随着与5人相处，解开了彼此之间的误会，关系也稍微融洽了一些。\n放学后，朝打开鞋柜准备回家，却发现里面放着一封情书。\n寄件人不明的情书上，写着“在校舍后面的樱花树下等你”。这也如占卜所说的一样。\n事到如今，打算把一切都弄清楚的朝，向樱花树下走去。\n樱花飞舞的季节，5阵恋风带来的淡淡苦闷的青春爱情故事，现在，拉开帷幕!', 97, '逢坂良太,伊藤美来,高桥李依,金元寿子,高野麻里佳,福山润', '连载中', '日语', 1);
INSERT INTO `anime` VALUES ('000010', '摇曳百合', '2011-07-04', '动画工房', 12, '喜剧,校园,百合', '从今天起，有点天然呆的灯里（三上枝织 配音）正式成为一名初中生，开学第一天灯里加入了好友京子（大坪由佳 配音）和结衣（津田美波 配音）所在的“娱乐部”。所谓娱乐部，其实她们只是占领了已经废部的茶道社办公室，社团活动也只不过是各种优哉游哉的喝茶闲聊。灯里的同班同学千夏（大久保瑠美 配音）因为憧憬着隶属茶道社的姐姐，阴错阳差地加入了她们。\n　　四名少女在娱乐部度着轻松欢乐、又带点百合情节的日子，京子极其喜欢外形可爱的千夏，千夏则喜欢着很会照顾人的结衣。这样一来，身为主人公的灯里无形中受到了冷落，大家在娱乐部展开了讨论会，结果会引发什么样的爆笑故事？同时，擅自占用教室一事，引来了学生会的关注，娱乐部会面临废部危机吗？', 43, '三上枝织,大久保瑠美,津田美波,大坪由佳', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000011', '摇曳百合2', '2012-07-02', '动画工房', 12, '喜剧,校园,百合', '故事发生在氛围轻松制度宽松的七森中学，为了打发无聊的课后时光，个性天真单纯的少女赤座灯里（三上枝织 配音）伙同童年好友岁纳京子（大坪由佳 配音）与船见结衣（津田美波 配音），利用荒废已久的茶道社组成了一个名为“娱乐部”的活动社团。之后，又有表面善良内心却极为腹黑的女孩吉川千夏（大久保瑠美 配音）在误打误撞之中加入，就这样，这个山寨社团的四人小组成立了。\n　　在这个没有正式申请的社团中，每天都发生着欢乐又爆笑的日常，可是没过多久，娱乐部的存在便被学生会发现了。作为副部长，杉浦绫乃（藤田咲 配音）怎能对此坐视不管？在娱乐部和学生会之间，一场轰轰烈烈的猫鼠大战开始了。', 0, '三上枝织,大久保瑠美,津田美波,大坪由佳', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000012', '摇曳百合3', '2015-08-05', 'TYO Animations', 12, '喜剧,校园,百合', '故事发生在七森中学中，茶道社因为人气不佳最终面临闭社的悲惨命运，单纯天真懵懂无知的赤座灯里（三上枝织 配音）、开朗热情的暴走少女岁纳京子（大坪由佳 配音）、沉默寡言但却是吐槽担当的船见结衣（津田美波 配音）和看似可爱人畜无害实则十分腹黑的吉川千夏（大久保瑠美 配音）四名女生占据了茶道社的活动教室，在这里另起炉灶成立了娱乐部。故事的序幕就此拉开。\n　　娱乐部的存在竟然引起了学生会的注意，身世神秘的会长松本理世（后藤沙绪里 配音）和傲娇不坦率的副会长杉浦绫乃（藤田咲 配音）的介入让本来就热闹的社团生活增添了一份欢乐。', 36, '三上枝织,大坪由佳,津田美波,大久保瑠美', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000013', '五等分的新娘 剧场版', '2022-05-20', 'Bibury Animation Studios', 1, '校园', '「濒临留级」、「讨厌念书」的五胞胎美少女，\n和身为兼差的家教老师，将他们引导到「毕业」的风太郎。\n迄今为止的努力都得到了回报，升上高三的五胞胎完成了毕业旅行，\n每个人都朝着「毕业」后的未来前行。\n与风太郎共度的时光中，五胞胎先后察觉到了自己对风太郎的爱意。\n风太郎与五胞胎的爱情会如何!? 未来的新娘是……\n可爱度500%的五胞胎恋爱喜剧，迎来完结──!! ', 100, '松冈祯丞,花泽香菜,竹达彩奈,伊藤美来,佐仓绫音,水濑祈', '已完结', '日语', 1);
INSERT INTO `anime` VALUES ('000014', '孤独摇滚！', '2022-10-08', '芳文社', 9, '动画,日常', '作为网络吉他手“Guitar Hero”而广受好评的后藤独，在现实中却是个什么都不会的沟通障碍者。独有着组建乐队的梦想，但因为不敢向人主动搭话而一直没有成功，直到一天在公园中被伊地知虹夏发现并邀请进入缺少吉他手的“结束乐队”。可是，完全没有和他人合作经历的独，在人前完全发挥不出原本的实力。为了努力克服沟通障碍，独与“结束乐队”的成员们一同开始努力…… ', 26, '青山吉能,铃代纱弓,水野朔,长谷川育美', '连载中', '日语', 1);
INSERT INTO `anime` VALUES ('000015', '调教咖啡厅', '2017-10-07', 'A-1 Pictures', 12, '日常,喜剧', '来到了有着傲娇、妹系等各种“属性”的咖啡厅，新人店员莓香竟然被店长要求\"抖S\"属性！？努力工作的同时，意外的也让\"抖S\"才能渐渐开花……充满欢乐的打工由此展开！', 66, '和气杏未,鬼头明里,春野杏,种崎敦美,德井青空,前野智昭,铃木达央', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000016', '魔王学院的不适合者', '2020-07-04', 'SILVER LINK.', 13, '奇幻', '历经两千年的时光，苏醒了的暴虐魔王——\n但他在培育魔王候补的学院中的适性却是——“不适任”？！\n尽管具备能毁灭人类、精灵，甚至是众神的力量，暴虐魔王“阿诺斯·伏尔迪哥德”却厌倦了永无止尽的斗争，梦想着和平的世界进行转生。然而在两千年后，转生后的他所迎来的，却是调节和平生活而变得过于弱小的子孙们，以及各种衰退至极的魔法。\n阿诺斯虽然进入了对被视作魔王转世之人进行集中教育的“魔王学院”，但学院却无法看出他的实力，使得他被刻上不适任者这一烙印。不仅如此，传说中的魔王还变成了和自己完全不同的其他人。\n在众人都瞧不起他的环境里，他将唯一亲切对待自己的少女米夏纳为部下，作为不适任者（魔王），在魔族的等级制度上迈向巅峰。\n“不论天理、命运还是奇迹，在我的眼前只有俯首受戮一途而已。”', 38, '铃木达央,楠木灯,夏吉优子', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000018', '雏子的笔记', '2017-04-07', 'Passione', 12, '日常,喜剧', '樱木雏子是个不擅长和人交流的女孩子。为了改变一见人就像稻草人一样僵住的自己，以升入有着自己憧憬的演剧部的高中为契机而离开乡下的雏子，来到了住宿地点四季庄。那里住着喜爱书与食物的玖井菜、虽然年长却小巧玲珑又擅长料理的真雪、沉默而又身材拔群的房东千秋等住客……！？虽然有点奇怪却充满魅力的四季庄住民，与前稻草人少女所展开的可爱又快乐的演剧喜剧现在开幕！', 41, 'M·A·O,富田美忧,小仓唯,东城日沙子,高野麻里佳,吉田有里', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000017', '冰菓', '2012-04-22', '京都动画', 22, '校园,日常', '在众多将要展开「玫瑰色」生活的高中生之中，本作的男主角折木奉太郎却是一个「灰色」的节能主义者。凡是没必要的事就不做，因为不想后悔，被人说是疏离、厌世也无所谓，因为这就是他的作风。这样的折木奉太郎，却因为姐姐的命令而进入了濒临废社的「古籍研究社」。研究社虽然好不容易招到了四名新社员，但却又卷入了四十五年前社长突然肄业的谜团之中。社长当年留下的名为「冰菓」的社刊，内里究竟隐藏了什么神秘的讯息呢……', 29, '中村悠一,佐藤聪美,阪口大助,茅野爱衣,雪野五月,置鲇龙太郎,由加奈,小山茉美,早见沙织', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000019', '宇崎学妹想要玩!', '2022-07-10', 'ENGI', 12, '校园', '性格有些孤僻喜爱安静的大学３年级生，樱井真一。总是被小一届，同高中毕业的学妹宇崎花，以各种照顾爱耍孤僻的学长的名义为由，进行各种无厘头的纠缠。虽然一开始觉得有点困扰，但却逐渐习惯起来…', 18, '宇崎花：大空直美\n樱井真一：赤羽根健治\n亚细亚实：竹达彩奈\n榊逸仁：高木朋弥\n亚细亚纪彦：秋元羊介\n宇崎月：早见沙织', '已完结', '日语', 0);
INSERT INTO `anime` VALUES ('000020', '宇崎酱想要玩耍 第二季', '2022-10-01', 'ENGI', 10, '喜剧,动画', '#宇崎学妹想要玩#第二季制作决定！', 10, '宇崎花：大空直美\n樱井真一：赤羽根健治\n亚细亚实：竹达彩奈\n榊逸仁：高木朋弥\n亚细亚纪彦：秋元羊介\n宇崎月：早见沙织', '连载中', '日语', 0);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('da是真的垃 系统日常宕机 一线作战人员也没点警觉 看到无人机在动都没点反应 我的评价是还不如叙利亚民兵', 'zhongli', '2022-12-04 07:35:18');
INSERT INTO `comment` VALUES ('心脏:无所谓 我会逃走', 'nahida', '2022-12-04 07:35:27');
INSERT INTO `comment` VALUES ('我是鱼鱼，哈哈哈，我是鳗鱼，嗨害嗨', 'keqing', '2022-07-15 07:35:44');
INSERT INTO `comment` VALUES ('泷奈：杀入东京，夺了鸟位。千束哥哥当大总统，我们几个做大官。大口吃牛排，大碗喝红酒，大秤分刀乐。', 'yoimiya', '2022-07-22 07:35:57');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'nahida', '123456', 'Admin');
INSERT INTO `users` VALUES (10, 'keqing', '123456', 'Admin');
INSERT INTO `users` VALUES (11, 'tianxuan', '123456', 'Admin');
INSERT INTO `users` VALUES (12, 'legion', '123456', 'Admin');
INSERT INTO `users` VALUES (13, 'ying', '123456', 'Admin');
INSERT INTO `users` VALUES (14, 'kong', '123456', 'Admin');
INSERT INTO `users` VALUES (15, 'ayaka', '123456', 'Admin');
INSERT INTO `users` VALUES (16, 'kazuha', '123456', 'Admin');
INSERT INTO `users` VALUES (17, 'yoimiya', '123456', 'Admin');
INSERT INTO `users` VALUES (18, 'zhongli', '123456', 'Admin');

-- ----------------------------
-- Table structure for yiyan
-- ----------------------------
DROP TABLE IF EXISTS `yiyan`;
CREATE TABLE `yiyan`  (
  `yiyan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fromwhere` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yiyan
-- ----------------------------
INSERT INTO `yiyan` VALUES ('万有引力可无法对坠入爱河的人负责。', '爱因斯坦');
INSERT INTO `yiyan` VALUES ('当遇到你时，大脑连上CSGO都会掉帧。', 'Florence');
INSERT INTO `yiyan` VALUES ('幸运的人一生都在被童年治愈，不幸的人一生都在治愈童年。', '阿尔弗雷德·阿德勒');
INSERT INTO `yiyan` VALUES ('对于永生之人，最大的敌人，是无聊。', '东方永夜抄');
INSERT INTO `yiyan` VALUES ('不管你说再多的慌，只有自己的内心，是无法欺骗的啊。', '七大罪');
INSERT INTO `yiyan` VALUES ('山谷的最低点正是山的起点。', '林清玄');
INSERT INTO `yiyan` VALUES ('生命如同寓言，其价值不在于长短，而在于内容。', '塞涅卡');
INSERT INTO `yiyan` VALUES ('我和空太是恋人以上，友人未满的关系。', '樱花庄的宠物女孩');
INSERT INTO `yiyan` VALUES ('如果我们能活着出去的话，千山万水，你愿意陪我一起看吗？', '狐妖小红娘');
INSERT INTO `yiyan` VALUES ('一味地追求理想，总有一天会被现实背叛。', '名侦探柯南：绯色的子弹');

SET FOREIGN_KEY_CHECKS = 1;
