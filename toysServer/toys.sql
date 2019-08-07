SET NAMES UTF8;
DROP DATABASE IF EXISTS toys;
CREATE DATABASE toys CHARSET=UTF8;
USE toys;

/*商品所属主题*/
CREATE TABLE toys_topic(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  name  VARCHAR(32)
);
INSERT INTO toys_topic VALUES
(NULL,"手办"),
(NULL,"模型"),
(NULL,"软周边"),
(NULL,"文具办公"),
(NULL,"日用家居"),
(NULL,"箱包服饰"),
(NULL,"演出票务"),
(NULL,"演出周边"),
(NULL,"其他"),
(NULL,"热门品牌");

/*商品的种类*/
CREATE TABLE toys_category(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  topic_id INT,
  name  VARCHAR(32)
);
INSERT INTO toys_category VALUES
(1,1,"粘土人"),
(2,1,"可动小比例"),
(3,1,"等比例手办"),
(4,1,"盒蛋/扭蛋"),
(5,1,"景品"),
(6,2,"普通模型"),
(7,2,"拼装模型"),
(8,2,"软胶模型"),
(9,2,"汽车模型"),
(10,3,"徽章"),
(11,3,"挂件"),
(12,3,"玩偶"),
(13,3,"钥匙圈"),
(14,3,"鼠标垫/桌垫"),
(15,3,"海报/挂画"),
(16,3,"手机配件"),
(17,3,"其他周边"),
(18,4,"书签"),
(19,4,"胶带"),
(20,4,"贴纸"),
(21,4,"笔记本"),
(22,4,"文件夹"),
(23,4,"明星片"),
(24,4,"书写工具"),
(25,5,"围巾/毛巾"),
(26,5,"镜子"),
(27,5,"抱枕靠垫"),
(28,5,"床单毛毯"),
(29,5,"餐饮器具"),
(30,5,"整理收纳"),
(31,6,"服装"),
(32,6,"零钱包"),
(33,6,"手提包"),
(34,6,"双肩包"),
(35,6,"旅行箱"),
(36,7,"演出会"),
(37,7,"见面会"),
(38,7,"展览会"),
(39,8,"银光棒"),
(40,8,"服装"),
(41,8,"徽章/挂件/钥匙圈"),
(42,8,"写真"),
(43,8,"手帕/毛巾"),
(44,8,"零钱包/手提包"),
(45,8,"其他周边"),
(46,9,"费用");


/*商品详情*/
CREATE TABLE toys_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  category_id INT,        #所属种类的id
  dname VARCHAR(64),      #商品名称
  speech VARCHAR(128),     #角色话语
  price DECIMAL(10,2),    #价格
  sell_status VARCHAR(16) #出售状态
);
INSERT INTO toys_detail VALUES
(1,1,"粘土人 宫水三叶（再贩）（附特典","我们再会的话，一定立刻就会想起的。",209,"预售中"),
(2,1,"粘土人 立花泷（再贩）（附特典）","不管你在这个世界的哪里，我都会再一次去见你。",209,"预售中"),
(3,1,"粘土人 奥村英二","即使全世界与你为敌，我也是你的伙伴",269,"预售中"),
(4,1,"粘土人 狡啮慎也 SS Ver.(附特典）","我认为复仇还没有为之担上性命的价值",269,"预售中"),
(5,1,"粘土人 古立特 SSSS. DX Ver","电光雷击剑古立特剑！！",430,"预售中"),
(6,1,"【秒杀】粘土人 镜音铃/镜音连 中秋明月 Ver. 组合","",350,"未开售"),
(7,1,"粘土人 霞之丘诗羽 和服Ver.","",352,"预售中"),
(8,1,"粘土人 饿狼 Super Movable・Edition","邪恶执行。开屠杀派对！",309,"预售中"),
(9,1,"粘土人 猎人♀ 麒麟・Edition（再贩）","狩猎白银幻兽的证明",376,"预售中"),
(10,1,"粘土人 夜神月 2.0","我要成为新世界的神",315,"预售中"),
(11,1,"粘土人 花园多英（再贩）（附特典）","只要喜欢就没问题。想弹吉他的人就会去弹。",278,"预售中"),
(12,1,"粘土人 乔鲁诺·乔巴拿（附特典）","我，乔鲁诺·乔巴拿有个梦想！",349,"预售中"),
(13,1,"粘土人 埼玉 OPPAI 连帽衫Ver.（限购三个）","",300,"预售中"),
(14,1,"粘土人 旗木卡卡西（再贩）","火影系列第三弹，复制忍者卡卡西！",287,"预售中"),
(15,1,"粘土人 金","大家都是我的朋友！",299,"预售中"),
(16,2,"【包邮】Variable Action Heroes 海贼王 罗罗诺亚·索隆（重涂版）","",476,"预售中"),
(17,2,"【包邮】Variable Action Heroes 海贼王 波特卡斯·D·艾斯（再贩）","",472,"预售中"),
(18,2,"figma 初音未来 V4 中文版","能用中文唱出可爱歌曲的电子歌姬figma登场",490,"预售中"),
(19,2,"figma 桐人 Alicization ver.","我的天职是…剑士吧。",461,"预售中"),
(20,2,"Harmonia bloom 铃兰","带来春天的谷间姬百合",2778,"预售中"),
(21,3,"【包邮】G.E.M.系列 火影忍者 疾风传 宇智波斑","G.E.M.系列「火影忍者 疾风传」最希望商品化问卷调查堂堂的第1名！木叶隐村的创立者之一，「宇智波斑」登场。",1015,"预售中"),
(22,3,"【包邮】魔法记录 魔法少女小圆外传 五十铃怜","『魔法记录 魔法少女小圆外传』中腼碘的魔法少女“五十铃怜”登场。",1171,"预售中"),
(23,3,"初音未来 Memorial Dress Ver.(附特典）","从今往后，向着更高点。",2626,"预售中"),
(24,3,"【包邮】王者荣耀 心灵骇客安琪拉典藏手办","人气手游《王者荣耀》中的英雄—【安琪拉 心灵骇客】以1/7的比例手办化登场，正式开启预售咯！",738,"预售中"),
(25,4,"【包邮】狐妖小红娘系列盒蛋-涂山雅雅（附特典）","",89,"预售中"),
(26,4,"【包邮】洛天依水手服系列盒蛋（附套装特典）","",59,"预售中"),
(27,4,"【包邮】CHIMIMEGA BUDDY系列 火影忍者 疾风传 旗木卡卡西＆宇智波带土 忍界大战套装","",309,"预售中"),
(28,4,"【包邮】CHIMIMEGA Buddy系列 死神 黑崎一护＆朽木露琪亚 死神套装","",309,"预售中");
-- (29,4,"","",,""),
-- (30,4,"","",,""),


/*商品图文详情*/
CREATE TABLE toys_detail_tw(
  tw_id INT PRIMARY KEY AUTO_INCREMENT,
  td_pic VARCHAR(256),
  text VARCHAR(512),
  xiangqing VARCHAR(1024),   #商品详情
  xq_pic VARCHAR(256)        #详情的图片
);
INSERT INTO toys_detail_tw VALUES
(1,"http://127.0.0.1:9731/detail_img/Ftv9q2z9hWKLTlxauLc0n5Kvr5Vh","有：ねんどろいど用背景紙（青空）","热门动画电影『你的名字。』中的「宫水三叶」粘土人决定再贩。
表情配件有「笑脸」和「涂鸦脸」。另外配件有绣有刺猬图案的「书包」。
替换用「持笔手腕」和「涂鸦脸」配合起来可以再现剧中给双方脸上涂鸦的场景！
请务必将她与同时预售的「粘土人 立花泷」（再贩）组合摆饰在一起欣赏吧！",""),
(2,"http://127.0.0.1:9731/detail_img/Fh465DWCRn5AWTtBtzWE_trMF021","有：ねんどろいど用背景紙（黄昏）","热门动画电影『你的名字。』中的「立花泷」粘土人决定再贩。
表情配件有「笑脸」和「涂鸦脸」。另外配件有「书包」。
替换用「持笔手腕」和「涂鸦脸」配合起来可以再现剧中给双方脸上涂鸦的场景！
请务必将他与同时预售的「粘土人 宫水三叶」（再贩）组合摆饰在一起欣赏吧！",""),
(3,null,null,"来自TV动画『BANANA FISH』中，摄影师助手的大学生「奥村英二」成为粘土人登场！
表情部件准备了「通常脸」，缓和周围气氛的「笑脸」和透露出顽固一面「沉闷脸」。
配件除了「小包」之外，还附上了剧中登场的「纳豆饭」和「筷子」，可以在现平稳的日常场景。
请务必拿到手中把玩哦♪「粘土人 亚修·林克斯」也同时预约中。",""),
(4,"http://127.0.0.1:9731/detail_img/FmT_mE1NP0gV7StZYISTc-xc4XEA","有：蚊香眼脸","剧场版动画『PSYCHO-PASS Sinners of the System』中，“原”公安局执行官的「狡啮慎也」粘土人化！
本款是比同日预售的「粘土人 狡啮慎也」配置更为豪华的「SS Ver.」。
替换表情配有眼神犀利的「普通脸」、逼真的「呐喊脸」以及叼着香烟的「抽烟脸」。
配件除了他喜欢用的「左轮手枪」和「突击步枪」、「狗牌」「香烟」「zippo打火机」，「SS Ver.」还特别附带「夹克配件」和「锻炼过的上半身替换件」。
各种配件足以最大化展现狡啮的魅力！",""),
(5,"","","TV动画『SSSS.GRIDMAN』中，电光超人「古利特」以全身可动式样粘土人化！
本款商品为同期预售的「粘土人 古利特 SSSS.Ver.」豪华增量版的「DX Ver.」！
除了可再现多样姿势之外，还附带可再现必杀技「古立特光束」的特效件。
另外，「DX Ver.」中还配有「电光雷击剑古立特剑」、「布景风格底座」、帅气的「V字手替换件」以及可放在光线下玩耍的「聚光眼睛」，丰富的配件能够增添更多的原作氛围！",""),
(6,"","","秒杀活动时间预告：2019.8.15 15：00",""),
(7,"","","已公开剧场版制作的「路人女主的养成方法」中的「霞之丘诗羽」以和服装扮粘土人化登场。

替换表情有「普通脸」「注视脸」「Kiss脸」。

配件附带开合两种状态的扇子、和伞以及与Kiss脸一同使用的「踮起脚尖的足部替换件」。

快把这位身着浓艳和服的诗羽带回家吧。",""),
(8,"","","人气TV动画『一拳超人』中，目标成为最强的怪人，狩猎英雄的青年「饿狼」以超可动粘土人的形式登场。

替换表情配有稍显讥讽的「普通脸」以及适合动作场景的「战斗脸」。

另外还附带用以再现激烈战斗场景的特效配件，可还原剧中多样的场景。

请将他与一拳超人粘土人系列组合在一起玩耍！",""),
(9,"","","任天堂3DS专用软件『怪物猎人4』中身着使用了的幻之古龙种“麒麟”素材的装备「麒麟系列」的女性猎人的粘土人决定再贩！

系列首屈一指的人气防具设计经过变型被再现了。

附属武器为『怪物猎人』系列的双剑「双雷剑麒麟」、弓「、龙弓【日轮】」两种、双剑配合「鬼人脸」和特效件能够再现鬼人化状态的斩击。

「艾露猫」也以麒麟装备登场。

和已经发售、预售中的同系列组合在一起加入狩猎吧！",""),
(10,"","","人气漫画『死亡笔记』中的「夜神月」再次登场粘土人系列！

替换表情配有「普通脸」、「惊讶脸」、以及「计划通脸」3种。

配件附带月的「死亡笔记」、写笔记用的「钢笔」和「苹果」以及表现漫画世界观的镰刀也附带在内。

运用丰富的配件可再现多种精彩场景。

敬请入手这款进化版「粘土人 夜神月 2.0」！

「粘土人 L 2.0」（另售）也将于近日开始预售。",""),
(11,"http://127.0.0.1:9731/detail_img/rvkq6fk1rtnhds2adxdqyckaovg5ritn.jpg","有：粘土人用特制背景纸（花咲川女子学园文化祭舞台）","TV动画『BanG Dream!』中「Poppin'Party」的主吉他手「花园多英」的粘土人决定再贩♪表情部件有「普通脸」、沉浸在演出中的「张嘴脸」以及「惊讶脸」。

利用配件蓝色「吉他」能够再现Live现场，与「吉他箱」组合能够再现练习完回家的样子。

请与另售的Poppin'Party成员组合在一起享受各种各样的形态吧！",""),
(12,"http://127.0.0.1:9731/detail_img/7n8x7z5gdi3xlwewckm0lu2eyu06698o.jpg","有：特制圆底座","TV动画『JOJO的奇妙冒险 黄金之风』中，具有超凡魅力以及黄金的精神的男主角「乔鲁诺·乔巴拿」粘土人化登场！

采用超可动式样设计，可以展现高度自由的动作姿势。

表情配有面容精悍的「普通脸」、战斗场景中压轴猛攻时露出的「木大木大脸」以及游刃有余的「微笑脸」。

除了可以再现多种经典造型外，搭配配件「波尔波的打火机」、阿帕基招待他喝茶用到的「茶杯」「茶托」。

此外，黄金体验镇魂曲的特效件也附带在内。请务必入手这位粘土人尺寸的乔鲁诺！",""),
(13,"","","人气TV动画『一拳超人』中的男主角「琦玉」身穿常服连帽衫粘土人化登场。

作为他标志的头部形状也在粘土人上完美再现。

替换表情配有稍微有点倦怠的「普通脸头部」，打游戏发飙的时候的「愤怒脸头部」。

搭配日常场景的「游戏手柄」和「超市购物袋」也附带在内，可借助这些来再现多种场景",""),
(14,"","","人气动画『火影忍者 疾风传』中的「旗木卡卡西」的粘土人决定再贩！

表情方面，为了能够再现遮住一只眼睛的样子，附上了两种护额。

另外，雷切特效件之类动作用部件、亲热天国之类悠闲姿势用部件等等都包含在内。

作为系列第三弹粘土人的卡卡西也极具可玩性。",""),
(15,"","","中国的人气IP『凹凸世界』中的主人公「金」在粘土人系列中登场！
表情部件有「通常脸」和「呐喊脸」以及「惊讶脸」的共3种。
配件附属了金使用特殊能力矢量箭头后的「箭头」，「滑板」和「盾」。
通过组合丰富的手部部件，可以再现多彩多样的场景。
变得小巧可爱的「粘土人 金」请务必将他迎接到您的手中！",""),
(16,"http://127.0.0.1:9731/detail_img/xs416zsohlin2vw0shknudwyxc91iu6k.jpg","","「ヴァリアブルアクションヒーローズ｣'海賊狩りのゾロ'の異名を持ち三刀流の剣士として名を馳せる'麦わらの一味'の戦闘員ロロノア・ゾロがリニューアルして再登場します｡

全高約18センチのサイズに剣術を駆使するド派手なアクションポーズを前提とした関節可動や着物には各所軟質素材を多用｡通常の頭部パーツに加え､バンダナを巻いた頭､刀を口にくわえた三刀流用のフェイスパーツと豊富な頭部パーツが付属し様々なシチュエーションを楽しむことができます｡

﻿今回のリニューアルに際して、フェイスパーツの金型の再調整を行い、よりリアルに造形と塗装を再現しています。",""),
(17,"http://127.0.0.1:9731/detail_img/","","",""),

(18,"http://127.0.0.1:9731/detail_img/","","具备纯正发音和可爱音质的初音未来中文版本『初音未来 V4 中文版』figma化！



・采用figma专用关节零件，灵活自如，能够再现多种动作。

・关键部位采用软质素材，在不破坏整体平衡的前提下确保可动性。

・表情配有可爱的「笑脸」、爽朗的「歌唱脸」和可爱的「眨眼脸」3种。

・配件附带「麦克风」&「麦克风支架」以及可爱的「团子头」和「油纸伞」。

・配合同捆的附有可动支柱的figma专用台座可再现各种创意场景。",""),
(19,"","","动画『刀剑神域 Alicization』中，男主角「桐人」以上级修剑士的身姿登场！



・采用figma专用关节零件，灵活自如，能够再现剧中各种各样的场景。

・关键部位采用软质素材，在不破坏整体平衡的前提下确保可动性。

・表情配有「微笑脸」以及「呐喊脸」、「嘻嘻笑脸」。

・配件附带桐人爱用的「夜空之剑」和尤吉欧托付给他的「红蔷薇之剑」。

・配合同捆的附有可动支柱的figma专用台座可以摆出各种各样的姿势。",""),
(20,"","","Good Smile Company推出的人偶品牌『Harmonia bloom』迎来自雪中而生，与春天共同盛开的花朵，铃兰。

犹如初雪般的白皙肌肤，指尖粉色的美甲则表现着丝丝春意。

服饰配有质感清丽的蕾丝头巾、造型如一朵铃兰花般的裙摆，以及萌芽嫩叶一般的连衣裙。

搭配的是一双与她同发色的棕色玛丽珍鞋。

请您亲手摘下这朵纯粹而拘谨、为您带来幸福的花朵。",""),
(21,"http://127.0.0.1:9731/detail_img/2xwze0sh69mky5b9nti5ejq4jswv7ep1.jpg","","G.E.M.シリーズ「NARUTO-ナルト- 疾風伝」商品化希望アンケート堂々の第1位！木ノ葉隠れの里の創立者の一人「うちはマダラ」が登場です。



大きく両手を広げて、”うちは”と大鎌を振り上げ戦うまさに「戦闘狂」を感じさせるダイナミックなポージングで立体化！



戦うために生きながらも、争いのない、誰も死ななくて良い世界を目指した「忍」の姿を刮目せよ！",""),
(22,"http://127.0.0.1:9731/detail_img/s56eksogubn1e9n9682crb4711e6bczy.jpg","『マギアレコード 魔法少女まどか☆マギカ外伝』より、 内気な魔法少女“五十鈴 れん”が登場です。","",""),
(23,"http://127.0.0.1:9731/detail_img/41x4r06x7wfu7wxs7i7mhszh51bjflh1.jpg","有：手办原画「特制文件夹」","初音未来10周年纪念手办企划举办的『初音未来插画大赛』中，获得冠军的优秀作品“向着更高点”（作者：ぽむ）借助原型师・河原隆幸之手完成立体化。

对于这款象征着备受无数粉丝热爱的「初音未来」将“向着更高点”前进的特别插画，我们对她倾注了无数的心血，最终将插画中的气质原汁原味细心凝聚于手办之中。

身穿的长裙和发饰、高高举起的右手和手中的立式麦克风，各处细节设计能令您联想起她歌唱过的多首名曲。

大幅飘散开的长发采用了透明材料，兼具分量感的同时绝妙的上色更是呈现出了浮游感。配合「向着更高点！」这一主题，充满了希望栩栩如生的表情也是一大看点。

「初音未来」的手办历来都在不断挑战这角色模型的造型极限，即便在这么多款优秀作品中，这款依旧可谓是巅峰之作。

千万不要错过这次机会，快将她带回家吧！",""),
(NUll,"http://127.0.0.1:9731/detail_img/jinltgs44ze41z6vdjidgbyr5poecj9w.jpg","","",""),
(NUll,"","有 ： 无尽酒壶挂件","","http://127.0.0.1:9731/detail_img/a5wfafysb5gr0tx0qcxxw25e8terwtno.jpg"),
(NUll,"","色纸","","http://127.0.0.1:9731/detail_img/mmdag9y62x7nmvpoigr677wy3yp4g4a5.jpg"),
(NUll,"","","",""),
(NUll,"","","","");

-- (NUll,"http://127.0.0.1:9731/detail_img/","","","http://127.0.0.1:9731/detail_img/"),
-- (NUll,"http://127.0.0.1:9731/detail_img/","","","http://127.0.0.1:9731/detail_img/"),
-- (NUll,"http://127.0.0.1:9731/detail_img/","","","http://127.0.0.1:9731/detail_img/"),



/*商品图片*/
CREATE TABLE toys_pic(
  pic_id INT PRIMARY KEY AUTO_INCREMENT,
  detail_id INT,
  pic VARCHAR(256)    #图片
);
INSERT INTO toys_pic VALUES
(NULL,1,"http://127.0.0.1:9731/detail_img/FuKmJ8AlayI91peBTKAtq999XLJL_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FhvrStiFTUvfrg9P0zlgxdKsQn5l_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FuiSdg4v8W2fqN9FaJAGkqIIsqd5_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FgcJKM8FY9CvVj1ej6pICvdYGax8_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FkmmbYRVlVidkiYCDRaQtmTYMKQH_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FvneWqi-cL4PJrH9AlXLBzdOrn-K_l.jpg"),
(NULL,1,"http://127.0.0.1:9731/detail_img/FvpArEKO6pHsV2RS3el4ZQ7peKpT_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/Fo8RhwkMFMfhghQGzXsVZrfnTXKf_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/FpyYnho92PEgi8le4YS72mdCFGFQ_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/FmI1cJQk2UrL6I1Azb70aFtVfmvB_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/FnYiXOK7_7Z9nIO_2DQ4M0Lhu2H2_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/FtD1258YAToPoCMzlnoLSjR7j5wW_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/Foz96nuVBNCA_C4gSeL1vm7IpZWK_l.jpg"),
(NULL,2,"http://127.0.0.1:9731/detail_img/Fuv-COdnsO15YzNiB__4SVdjLOiE_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/FhxzCv2IapPigo-9WOocsS5JsB6y_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/FjXsX9-O8SWf4x4h34LonFnB266Z_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/Ft5C8-ti0bP5s9yoZ0WJSwUajtS3_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/FhzQHihER1xmSQs4QT2XkI8IadUH_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/FitNRpDC-SxAktLgNBNU_WrKE5er_l.jpg"),
(NULL,3,"http://127.0.0.1:9731/detail_img/Fiv37IO5NFlyfhqy87kXVi39GbI5_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/FoxOg0ZkFwFfPpi7XsX7jh2cKfCy_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/FpgWtylGzUp-slP_eamNexnH72EP_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/Fk8DKOmCOZMnxbw084SUVdi5H2cf_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/Fgco3q-6_dbJPbEXm3oEd48Yh2ph_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/FgNfa-IM3SK1reeEiau42yAxV57S_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/FuXw7-5x8GE5UFFnjqW3sv2_lAw6_l.jpg"),
(NULL,4,"http://127.0.0.1:9731/detail_img/FqZafnkVk1JEKtyK5oeoFekEaiZP_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/Fj4KFlSq_N8d0-pnhOnNMFmivQRl_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/FuDLRUocjfguntgsCRTCCezYxIQD_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/FokSipOQirD1rT98zKZSMQyqoOiD_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/Fvj-CP0s_NLyDEbbFrD_wNX2vWti_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/Fjt4C3MOY5NUHCCU4eKcM4o0N-u4_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/FoDdU30N6_65MyQ_9imqzg5VaHB9_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/FuT_uecAS74vVLBLgobVtcxfNxgA_l.jpg"),
(NULL,5,"http://127.0.0.1:9731/detail_img/FiQOHoi3Hn5AtJ_z8Gb-F8RVsY-K_l.jpg"),
(NULL,6,"http://127.0.0.1:9731/detail_img/8xbyu1x1ncko2m78jgnyv3fl6w6g0y80.jpg"),
(NULL,6,"http://127.0.0.1:9731/detail_img/39mdnxsvdpfxo06tkg4jikt2vpc7xsq9.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/3mh9v3gx4kl05urlp0pdp98w416rwdgn.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/qr68tq439a3z2ruzylf8ebozjf3vnuat.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/gb58tax5mw5cr6lemkkencvgk9e96gwd.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/bjwfm76q00d6gs93fc0aha8bav8fcnh8.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/ykb8pb46fprknhpdr5h4ytnpfnhtagol.jpg"),
(NULL,7,"http://127.0.0.1:9731/detail_img/w849mmcpkpr256gd1hnolec5otw27zds.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/mz7hux0x607ijtufq5dxtn3b727yfu6j.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/tzb1pypgs0ebxskmeztp6bakj0o98osn.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/7iu84ecgzwp3s69cttpreqivwre3lib4.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/expsvafe0lu16hr5n2xisc8lxfqpg9ir.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/oyz6o454flfmr3v88lc02a3ql2li6zyb.jpg"),
(NULL,8,"http://127.0.0.1:9731/detail_img/um6vyp5j3luuy10aby4r509r9sne9g7k.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/qytajay9vnkuu4u6dtpscvn1ieg6y9tn.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/kq8izfbs44l3dmcobjuya8ffdhxru26k.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/g3m8okd96dyov7rqy43g7xgskmrt2gyz.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/dwv5pd42ezyqyw3wn4ttdp31fq0udvah.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/4ndm698p6qthys7ed1cffkk5573zaoqy.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/ep8u7pfshgnsp0ho15hv6cek95zp10ef.jpg"),
(NULL,9,"http://127.0.0.1:9731/detail_img/axz5rynx32jwjngxutidsmlwa4yvok4d.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/uawkowzdb6mg5rkttmfgs4hqyghuu8jv.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/66br5qbjht67f5yl9zr1vegce06w65iw.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/09psjqh32kndah0ocolgta3srhk6ocbn.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/c8qaotle2xcq11fhcvm5zq6tjowythjd.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/ezuwdde8dp9s2keuwvusch6odhi4x924.jpg"),
(NULL,10,"http://127.0.0.1:9731/detail_img/r8g3lbs01djsrtj390zj00c5u71qx3ox.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/uexhfj5dgblgnlcbp92szjj78bwknp6b.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/5n2k5v1uv1escluvys2ccr3128cczu1m.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/xwsffaafovwjqf0wrdoc98a5fku812bq.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/zot0wu163ukrv44wbj8urwzopuc3wquf.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/able265g7f9sakihesuy1s6vrhj57u66.jpg"),
(NULL,11,"http://127.0.0.1:9731/detail_img/exucwk8yzrrg4sheo96n16ea5cw3jgl6.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/mxg52u4mrfvjts9rrhtv2puga21gbitu.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/6x9cjrdrck17twg0232kab4r339oktzj.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/woccdv9eu3dd1fi9pwlold20sa192hzo.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/jlmwvpcbie5v1yc9vwyra7cr1t60z4ub.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/dwr24gqprv48yjxufsw6n0dytjy4r6hx.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/a2mqmz3c0u2omjobjjeuqf9avobt26n3.jpg"),
(NULL,12,"http://127.0.0.1:9731/detail_img/kzeyb9ptjgdztc47zyqllqufeazu3tze.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/vg46gvx1ertogxe7bhugu5r03eg9k51d.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/hf7x56g99zbljfw5asum8h6dv8wkn2p8.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/betluvnw795l05dzdc1k6dr24e2uwrlm.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/9jsnvcx3t2gzc0tb5pfe01hg54159qim.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/9oam0qppadhp7cabv2cl48cpta9w7yok.jpg"),
(NULL,13,"http://127.0.0.1:9731/detail_img/83o0vqjgpckk6aqsgkogpp1zqpnclei0.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/2p93501o83grquftows9gn8tb029mk70.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/2o6vrdtobc9w9antexbnoe8j6jfit2d1.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/0auzpw5uiv8mx8oxz0ytvhhigcoyryum.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/tr0ullonucburltiahzqz5qkjutvh3k7.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/e60i6cfq2y3ha66tqa8mdfdu86d25ayq.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/oxmmcqzjtr3aajih7529yte4rum8lae1.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/dovxtf3ku7ulbkre315mwrflrzrexqvo.jpg"),
(NULL,14,"http://127.0.0.1:9731/detail_img/j01ptux2479pn2i1kwtk6ehg2rrwp3ar.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FoP8QhmdfafvC7Mjt71pzOODJq8c_l.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FkzNyUNpaZ1MLqU5kniXkF0shlaD_l.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FqnuXEcmm_eXwW_Ybd-Dw48lrKLN_l.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FvarRzQzZ7BMr7mgBwTXzqw_tFIi_l.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FqAANI-gz-Qnko_o8JkWlSwRh4y1_l.jpg"),
(NULL,15,"http://127.0.0.1:9731/detail_img/FpmssjMClpwHnC_eEaDJc-oJOscI_l.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/wkazmr7f6vm617at59fozsyo3p3u6lkv.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/fob7bjb5lsa6h08iwa33sah28rz823oj.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/c84wkse97pzy4g5an4igord0bqcv9lhe.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/1srv2uz8a5h01rfpt4f257namzx728qx.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/0j08wsboo5ohbfq4benrsv61vd7gcwfb.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/w6sgq5l3vq2ox4xiq5oz2aw6aar4tkyw.jpg"),
(NULL,16,"http://127.0.0.1:9731/detail_img/bm1nlw0ylepur5w07mwfpkpe406kx9v5.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/949iksyvfq0ag1tmc45auhyclzpwp6wa.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/j795gje292iuoez8gcce5g5albs4ckh5.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/izojx38q33x8d1rzkne0nyb3ntpau8qw.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/su8ndl64roi6nr3vd1nf8zdx4zxkqt5t.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/depxi5b8p9cs3w947qhryquvvj43tgb6.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/emb1igtvcps0moazefmho1h1zhvx50zd.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/mstxqod1p22c698jh1bw1hv8qqanpg1b.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/d8hmd5ou8d4497veowg0g936q7sb2wcg.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/ra9zonnrc6a9ecqiixvp3j4doyyyjs50.jpg"),
(NULL,17,"http://127.0.0.1:9731/detail_img/ixi43dhzglkycg8zb2d7c6nnb7wrhcuz.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/fra10tuf4vcn0qlb0ne009zx2ggzyjzc.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/dbs2aq4h7qvooryu2bay2j8fk94b3ub9.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/kvxj04uie0o10o86nkao6fvaaho8uxzs.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/qvgh9ads3c8z8leteekkcspit5yhwg4j.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/mt5lm8859dg2j79zyzwry4zcwwv5qtju.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/xwxjww5qgd4y1vsgwraud859zafoqoft.jpg"),
(NULL,18,"http://127.0.0.1:9731/detail_img/53hf8zmfl5xnl46ve1h5e2rpbpnuuq9v.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/5t2rmh6jh93n2yo0gd2l1ws8ziikbzj5.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/zygbajumcb7rz2pba8z336sa34ufbsl7.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/v2dhoaab6yt7q8nzluigprm2gjdfjxmi.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/x4sykeq7ue54t35s0gvimdzrl3rzlnlj.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/f9s20cnchugq82i9h1wgmegry1of50ih.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/ditlhwjcknrc12qnnrf7mb3f6900jg6k.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/dntxr6dfowqwsvvt4633qe3d3ntqlfuv.jpg"),
(NULL,19,"http://127.0.0.1:9731/detail_img/a5ablswvidawrnj3pyx08g9j0lc1e6ws.jpg"),

(NULL,20,"http://127.0.0.1:9731/detail_img/x9jbih7tijhy0f45nzemn5uud3yrmb1o.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/mmi26v2vqcm64ch5szqpijmh0ytv4wd4.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/ekwykl7n05u71iyua4g5rpfivtlzcvq7.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/p2dktuozalzaikbvk4k3du2nqgxeofyj.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/pb852nz571leftkpoowccdfttoda9dj6.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/vl5k378pq9e7zgd4hwhvjzd4ij5aq25r.jpg"),
(NULL,20,"http://127.0.0.1:9731/detail_img/o7u889y3ukxgxf1dxcmfg7ao9a0ad5sy.jpg"),

(NULL,21,"http://127.0.0.1:9731/detail_img/r4kqta3pq6hej6hdb3n86xi566pg7vjs.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/ypz2m94apw05ahi7b8eei6w0tdtwupf6.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/e0m8v4wcn6zl709ig6halj4uuu3drrmn.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/o3tg31c6l6whbgicz0jirax5x6jwef07.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/4j4x9qsu3cec2clq3knc1z0tlzon38j9.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/se2zlnvi3k5r42ff2hx4o24u7jjlbdwn.jpg"),
(NULL,21,"http://127.0.0.1:9731/detail_img/s95dtxi2s4xlmir3zb0ndntknhpbui7c.jpg"),

(NULL,22,"http://127.0.0.1:9731/detail_img/md62to175p3q8qb0t58vmp6wcykbx9wa.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/ihwjnt0olon14j6gcwiee35xn6faai51.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/unkp32mu6warr3m6ymnm99smirpp624l.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/8c0gpnux8fh4l47j6jgiinqob07ddcpn.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/tsyaylzi99w0472924pnh2r7y8n8pjax.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/be2j1tmfinpjhjm5mkcnoj20p1gbmztf.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/0bsz3mobfts4bg8rp94fmpfb0n3scb08.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/ttr1zmv4jqz64bvz5666c4edem3dt9t3.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/c7eqt4ilaq0s56e2ik2tydf9fyoo135z.jpg"),
(NULL,22,"http://127.0.0.1:9731/detail_img/hhixwnb97evoql5z9opty35xiq1dd7sq.jpg"),

(NULL,23,"http://127.0.0.1:9731/detail_img/spvcyjcouts4clm5duhl6kfickxn7fm3.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/f076tceto6yb9egqgwoavv0ym9teily8.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/dtwzkzy245rm2qe89p4auzjql9dbr1gi.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/d0ayw3t7cah3v7nrsaqdt5ccz348v9sp.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/mil4ibnhilsxcbn7tzm1z4hyj1px62yg.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/ia6u3tkq6p6lk8s881fq8eaqitm84mrc.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/4dh2a7pj2arlgrj8yizuapv5h5edjmoj.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/uhfomn4un5q4idhtju3f49sk1l4d72u9.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/nwud1u8hzcrz8v9nfk87wqogp6wexcmc.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/d9rey59x5b5m0zfk6qxuj2uhqmeccd88.jpg"),
(NULL,23,"http://127.0.0.1:9731/detail_img/zvmsrbe391ivivfdzyxsm3o8xt9w1xt9.jpg"),

(NULL,24,"http://127.0.0.1:9731/detail_img/4b4jsgu37xgj2ax9c7a7u9ds93yg5wo4.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/z4i3tvmcq9ix46c9kkn9wsy9hjpm9c89.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/s7o9ldd3cp8rdocfwwcxw0vhrltdqf8s.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/ykuu9y7brc80hbcxot0h9d389v7gycur.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/dud9an0lq8aildcwzy6xykyo9d3gr4gm.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/pw6fn6khurw1rey6b5zc17gx3jxgil59.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/uf5w6d16kyt8zevio4zo0qg99cu1e7ox.jpg"),
(NULL,24,"http://127.0.0.1:9731/detail_img/zezgljwaitulqksnd7ho8cro11h68d6s.jpg"),

(NULL,25,"http://127.0.0.1:9731/detail_img/bqsf8kgi046dfdbltf39ite7a5x5nhtl.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/575xn45rs2rbp4dh09mvo3ef83d0fsd6.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/jf67hlwgd995vgsm2582te46qinzi66u.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/8axbl51qcstaxrmc6zhfa519eij5vr6k.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/psib61xx6qlxc6xxq012amc15y73ol3t.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/hjv3lhg66abbjg45j8r2t0fld5v7l5m9.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/vjmkb3eglbt6geku1psub79bmikbdq0y.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/cn3t1u5avyzv2pvj8vjtxvjyu85oau7u.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/l7zfwxsixateoia2sv48bp53s1r8ir4w.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/5excvonmutvtwv5ztcw5jwhywj1g6wg3.jpg"),
(NULL,25,"http://127.0.0.1:9731/detail_img/1w4wb5rlghpg7y958yitu3osxbhx7hht.jpg"),

(NULL,26,"http://127.0.0.1:9731/detail_img/lh4gygrahcxiebqytd3awhorgep0yxo1.jpg"),
(NULL,26,"http://127.0.0.1:9731/detail_img/a8450uynladklg75479tbzlzzkdkm2g5.jpg"),
(NULL,26,"http://127.0.0.1:9731/detail_img/n760az6ezf8dd7zh53k1lgmziw1ysvkr.jpg"),
(NULL,26,"http://127.0.0.1:9731/detail_img/sf1qz34u7amlxf5tygcjalbj5i8kqh10.jpg"),

(NULL,27,"http://127.0.0.1:9731/detail_img/FvIIF-qnMhd84fbdfALQoa8mJ6Aa_l.jpg"),
(NULL,27,"http://127.0.0.1:9731/detail_img/FrJ2HA3qkiNXT2jaYYDfpADS0WiM_l.jpg"),
(NULL,27,"http://127.0.0.1:9731/detail_img/FjDF-rJS7uPuqBoVMmJCeOMg8zA__l.jpg"),
(NULL,27,"http://127.0.0.1:9731/detail_img/FgpOGPdTsP2ADqvys8FDl1IeT9xj_l.jpg"),
(NULL,27,"http://127.0.0.1:9731/detail_img/FgXWGx2GEI8hX9AW7JLqzkjoCQYP_l.jpg");

-- (NULL,28,"http://127.0.0.1:9731/detail_img/"),







/*商品参数*/
CREATE TABLE toys_param(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  add_date BIGINT,     #上架日期
  release_date BIGINT,   #发售日期
  brand VARCHAR(64),   #品牌
  role_name VARCHAR(32),    #角色名
  works_name VARCHAR(32),   #作品名
  pro_explain VARCHAR(256),  #商品说明
  manufacturer VARCHAR(64)  #生产商
);
INSERT INTO toys_param VALUES
(1,1551685031123,1561966631123,"Good Smile Company","宫水三叶","君の名は","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(2,1551685031123,1561966631123,"Good Smile Company","立花泷","君の名は","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(3,1549525031123,1564645031123,"Orange Rouge","奥村英二","BANANA FISH","ABS&PVC 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","ORANGE ROUGE"),
(4,1547121191123,1561981991123,"Orange Rouge","狡啮慎也","PSYCHO-PASS Sinners of the System","ABS&PVC制 涂装完成品・非标准比例・附带专用底座・全高：约100mm"," Orange Rouge"),
(5,1544529752123,1559390552123,"Good Smile Company","古立特","SSSS.GRIDMAN","ABS&PVC制 涂装完成品・非标准比例・附带专用底座・全高：约110mm","Good Smile Company"),
(6,1565870552123,null,"其它品牌","","","",""),
(7,1562241752123,1577880152123,"Good Smile Company","霞之丘诗羽","路人女主的养成方法 Fine","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(8,1562068952123,1572609752123," Good Smile Company"," 饿狼"," 一拳超人","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(9,15620689521234,1572609752123,"Good Smile Company","麒麟","怪物猎人4","ABS&PVC制 涂装完成品・非标准比例・附带专用底座・全高：约100mm"," 制造商：Goodsmile Company　贩售：CAPCOM"),
(10,1562068952123,15752017521234,"Good Smile Company","夜神月","DEATH NOTE","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(11,1561636952123,15752017521234,"Good Smile Company","花园多英","BanG Dream!","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(12,1562241752123,1575201752123,"Medicos"," 乔鲁诺·乔巴拿","TV动画「JOJO的奇妙冒险 黄金之风」","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","MEDICOS ENTERTAINMENT"),
(13,1561118552123,1575201752123,"Good Smile Company","埼玉","一拳超人","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company"),
(14,1554206552123,1567425752123,"Good Smile Company","旗木卡卡西","火影忍者 疾风传","ABS&PVC 涂装完成可动手办・非标准比例・附带专属底座・全高：约100mm","Goodsmile Company"),
(15,1543147352123,1530964952123,"GOOD SMILE ARTS上海","金","凹凸世界","ABS&PVC涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","GOOD SMILE ARTS上海"),
(16,1560168152123,1570708952123,"MegaHouse","罗罗诺亚·索隆","海贼王","彩色涂装完成品可动手办，附带替换配件，全高：约18cm。","MegaHouse"),
(17,1551960152000,1564660952000,"MegaHouse","波特卡斯·D·艾斯","海贼王","彩色涂装完成可动手办","MegaHouse"),
(18,1564574552000,1580558552000,"Max Factory","初音未来","Character Vocal Series 01 初音未来","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约140mm","Max Factory"),
(19,1556193752000,1574683352000,"Max Factory","桐人","刀剑神域 Alicization","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约145mm","Max Factory"),
(20,1564574552000,1567339352000,"Good Smile Company","铃兰","Harmonia bloom","ABS&PVC制 可动人偶・附带专用底座・全高：约225mm","Good Smile Company"),
(21,1556712152000,1569931352000,"MegaHouse","宇智波斑","火影忍者 疾风传"," 彩色涂装完成品手办，附带专用底座，全高：约220mm，纵深：约300mm，全宽：约400mm。","MegaHouse"),
(22,1565006552000,1591358552000,"ALTER","五十铃怜","魔法记录 魔法少女小圆外传"," PVC制彩色涂装完成品手办，1/8标准比例，全高：约210mm。","ALTER"),
(23,1562241752000,1606824152000,"Good Smile Company","初音未来","Character Vocal Series 01 初音未来","ABS&PVC制 涂装完成品・1/7标准比例・附带专用底座・全高：约430mm","Good Smile Company"),
(24,null,null,"Hobbymax","安琪拉","王者荣耀","1/7标准比例手办，全高：约250mm。","Hobbymax"),
(25,null,null,"ACTOYS","涂山雅雅","狐妖小红娘","","ACTOYS"),
(26,null,null,"MegaHouse","旗木卡卡西＆宇智波带土","火影忍者 疾风传","","MegaHouse"),
(27,null,null,"MegaHouse","黑崎一护＆朽木露琪亚","死神"," 彩色涂装完成品2个，专用底座2个，全高约65mm","MegaHouse");
-- (28,,,"","","","",""),


/*购物车*/
CREATE TABLE toys_shoppingcart(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  detail_id INT,    #商品id
  user_id INT     #用户id
);

/*用户*/
CREATE TABLE toys_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  email VARCHAR(256),
  phone BIGINT,
  birthday VARCHAR(32)
);
INSERT INTO toys_user VALUES
(NULL,"CharlotteStar","973165084@qq.com",13729412134,null);