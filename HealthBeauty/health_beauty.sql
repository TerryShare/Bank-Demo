CREATE DATABASE  IF NOT EXISTS `health_beauty` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `health_beauty`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: health_beauty
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activityId` int(12) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(50) NOT NULL,
  `activityDes` varchar(500) NOT NULL,
  `discount` float DEFAULT '1',
  `fullPrice` int(12) DEFAULT NULL,
  `reducePrice` int(12) DEFAULT NULL,
  `fullNum` int(12) DEFAULT NULL,
  `reduceNum` int(12) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'default','default activity',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressID` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `detailAddr` varchar(50) NOT NULL,
  `conName` varchar(50) NOT NULL,
  `conTel` varchar(50) NOT NULL,
  PRIMARY KEY (`addressID`),
  KEY `addressID` (`addressID`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (6,11,'山西省','太原市','杏花岭区','建设路 100号','张三','18888888888');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` int(12) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cateId` int(12) NOT NULL AUTO_INCREMENT,
  `cateName` varchar(50) NOT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'美容知识'),(2,'热门文章'),(3,'明星爆款'),(4,'唇妆'),(5,'眼妆'),(6,'护发'),(7,'卸妆');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `chatId` int(20) NOT NULL AUTO_INCREMENT,
  `sendUser` int(12) NOT NULL,
  `receiveUser` int(12) NOT NULL,
  `MsgContent` varchar(255) NOT NULL,
  `MsgTime` datetime NOT NULL,
  PRIMARY KEY (`chatId`),
  KEY `sendUser` (`sendUser`),
  KEY `receiveUser` (`receiveUser`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`sendUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`receiveUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `collectTime` datetime NOT NULL,
  PRIMARY KEY (`userId`,`goodsId`),
  KEY `collection_ibfk_2` (`goodsId`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (11,96,'2018-03-30 11:15:07');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `point` int(8) NOT NULL,
  `content` varchar(255) NOT NULL,
  `commentTime` datetime NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `userId` (`userId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (4,11,95,3,'123123','2018-03-30 10:38:19');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliver`
--

DROP TABLE IF EXISTS `deliver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliver` (
  `deliverId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `sendId` int(12) NOT NULL,
  PRIMARY KEY (`deliverId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `deliver_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliver`
--

LOCK TABLES `deliver` WRITE;
/*!40000 ALTER TABLE `deliver` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goodsId` int(12) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) NOT NULL,
  `price` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  `upTime` datetime NOT NULL,
  `category` int(12) NOT NULL,
  `detailCate` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `activityId` int(12) NOT NULL DEFAULT '1',
  PRIMARY KEY (`goodsId`),
  KEY `activityId` (`activityId`),
  KEY `category` (`category`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`cateId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (90,'宛若天成的伪素颜，都是“妆”出来的',0,1,'2018-03-29 20:36:56',1,'','现在越来越多的女明星都喜欢晒自己的“素颜照”，证明自己的颜值是宛若天成的。有的人傻傻地信以为真，还以为真的是纯素颜出镜，然而这种想法还是太天真了。基本上没有多少女生敢完全素颜出镜的，除非她真的很自信（这种自信不是因为她真的很美），平时也不爱化妆。很多好看的“素颜”自拍，其实都是带有妆容的。\r\n\r\n\r\n★精雕细琢才是化妆的王道，那种看似没有化，仿佛天生的美肌妆才是最能博取好感的★\r\n\r\n1、用清水和优质香皂洗脸，然后用爽肤水收敛一下毛孔，再涂上润肤霜，油性皮肤可以不涂润肤霜。\r\n\r\n2、用手把粉底液均匀地抹在脸上，再用海绵粉扑沾水，拧干(稍带湿润)，把脸上的粉底液抹匀面部各处，抹粉底一定要薄而均匀，如穿低领则粉底要抹里整个颈部。\r\n\r\n3、打眼影（请大家尽量选择比较淡雅的颜色，比如粉色和橘色，大地色也是比较不容易错的）。用棉棒晕开上眼睑眼影，淡扫整个眼盖。\r\n\r\n4、用眼线笔在贴近睫毛根处画上、下眼线。再用睫毛卷曲器卷一下睫毛，最后涂上睫毛膏。天气过分炎热的话，可省去这个步骤，以免由于出汗而脱妆，弄污眼睛。\r\n\r\n5、淡扫娥眉。先用眉刷将眉向上刷平，细细观察，如眉过淡、过碎，用眉笔画得连贯些，眉过重、过粗，要修淡、修细一些。\r\n\r\n6、抹胭脂。以颧骨为中心抹上一层薄薄的胭脂，再轻扫额、两侧颊部、鼻子、下巴。注意整个脸部要用同色胭脂。\r\n\r\n7、最后涂口红。先用唇线笔画出唇的轮廓，再用唇膏涂满嘴唇。涂口红时注意不能涂出唇线外，上、下唇在口角处要相接。\r\n\r\n夏天最适合化这种“伪素颜”妆容，你学会了吗？',1),(91,'人生必备断货王，你有钱都不一定买得到！',0,1,'2018-03-29 20:41:48',3,'','现在的人买东西越来越精明，好用又性价比高的东西越来越紧俏，频频被爆出断货的消息！但是有一些产品真的是火爆到只有超人才能买到，但是我们依然愿意等待，没有别的，原因只有一个，就是太美啦！\r\n\r\n所以今天小编来拉仇恨了，专门给妹子们看看那些好用又美丽的断货王们！\r\n\r\nMAC子弹头唇膏\r\n\r\n要说到断货王，很多妹子肯定会说到这款MAC子弹头唇膏！因为实在是太难买啦！！\r\n\r\n断货狂魔必须是MAC 子弹头口红 chili色，是有点砖红色的，跟小辣椒一样的红，上脸显白显气质第一名！！它属于一种暗橘调的大红色，除了美艳还散发着一种气场全开的女人味，简直是显白显气质又显贵的利器！\r\n\r\n哑光系列的砖红色真的是很适合暖皮，白皮，薄薄地画咬唇跟自己原本唇色融合在一起又很自然很好看，颜色不过于严肃也不会有显病态的情况，显得唇型非常好看，厚涂也显气质。\r\n\r\n城野医生毛孔收缩水\r\n\r\n没错，断货王必须包括城野医生毛孔收敛水！是不是经常想买都买不到呢？城野医生毛孔收敛水消炎镇静、收缩毛孔的效果是相当好，平时可以用它浸泡化妆棉来湿敷面部毛孔粗大的地方，上次小编去日本，发现2个药妆店都在断货，看来真的是断货王啊！\r\n\r\n无印良品睫毛夹\r\n\r\n这个MUJI家便捷睫毛夹很受欢迎，我去日本的时候买回来好几个都被大家抢光了，听说之前国内很多店里都断货了，现在应该没这么容易断货啦！这款睫毛夹超级容易上手，又方便携带，而且不会夹到眼皮~随便一夹就有好看的睫毛弧度，好用又价格超级亲民，这就是造成断货的理由吧！\r\n\r\nVisee蕾丝眼影盘\r\n\r\n高丝家出的这盒美到哭的蕾丝眼影盘，也就是传说中的“斩男盘”，据说是男生最喜欢女生用的眼影色系。它不但颜色美，粉质也非常细，几乎不怎么会飞粉，它还是Nars吉隆坡的替代色，不到一半的价格，美貌度和好用度却是一点也不差~\r\n\r\nCanmake2016秋冬新品5色眼影\r\n\r\n断货王还有canmake的这盘五色眼影新色——14#复古红宝石！一上市就被岛国妹子们抢的差不多了，这个配色真心好看啊！血浆感爆棚但是又超级温柔！超级适合秋冬！\r\n\r\n其实我们人生中必备的断货王还有很多，大周末的就不馋大家了~\r\n\r\n如果有幸遇到，请马上剁手，千万别犹豫啊！',1),(92,'素人挑战网红眉型，终于不是“买家秀”了',0,1,'2018-03-29 20:45:14',2,'','相信各位女生都会有这样的体验：如果没时间化妆，但是只要稍微画一下眉毛和嘴唇，整个人看上去都会变得气色好很多！\r\n\r\n曾经一字眉火爆一时，几乎成了每个女生的标配\r\n\r\n\r\n然而现在流行的是自然的3D裸眉，所以越来越多妹砸洗掉了韩式一字眉回归中式弯弯蛾眉，画风一下子高级又清爽了。\r\n\r\n \r\n今天就来挑战裸眉！画出最自然的眉型，相信有了一对漂亮工整的眉毛，你会觉得整个脸孔的气质完全不一样！\r\n\r\nPoint 1：眉峰要圆滑\r\n\r\n3D裸眉的眉峰是圆滑处理的弧线，眉头到眉峰的高低落差不大，只是一个顺滑的流线型。\r\n\r\nPoint 2：眉色要清淡\r\n\r\n如果你本身是有眉毛的，只需要淡淡的描一层颜色就可以了。如果你本身眉毛较少较淡，则可以着重描绘眉尾部分，眉头依旧是淡淡的扫一层就好。\r\n\r\n\r\n接下来就让我们开始吧~\r\n\r\n第一步：选择适合自己肤色的砍刀眉笔，轻轻在眉部勾勒出眉毛的轮廓。\r\n\r\n\r\n这里用的是bobbi brown的砍刀眉笔，颜色是（）色，很自然，适合发色较浅的妹子。\r\n\r\n\r\n第二步：想要画出好看的眉形，将眉头下侧和眉尾调试在同一水平线上，眉尾的调试在同一水平线上，眉尾的位置要在鼻翼和眼尾的延长线长。\r\n\r\n\r\n第三步：用修眉小剪刀去除，眉形之外多余的眉毛，延长线长。\r\n\r\n\r\n第四步：用眉粉或者眉笔将轮廓以内进行填充。\r\n\r\n\r\n这里用到的是芭比布朗的眉粉，色号为浅棕，染发的妹子很适合这个色号哦~\r\n\r\n\r\n第五步：左边填充眉尾，让眉部更加显眼部轮廓立体，右边填充眉头及眉毛中部\r\n\r\n \r\n第六步：用螺旋眉刷扫掉眉毛上的皮屑，按照眉毛的生长方向进行梳理。\r\n\r\n\r\n这样一个超自然的眉毛就画好了，用眉笔描轮廓，眉粉填充是最合适的组合。\r\n\r\n不仅保证眉部轮廓清晰，而且自然不生硬，更接近原始眉毛~\r\n\r\n\r\n芭比布朗的眉笔和眉粉防水性也超好哦，用湿纸巾大力擦，也不见明显痕迹。\r\n\r\n\r\n之前写韩妆有人留言说要抵制韩货，那你有把你的韩式一字眉给洗了吗？',1),(93,'美国NARS丝绒迷雾唇笔亮泽唇膏笔',199,200,'2018-03-29 20:52:52',4,'','商品名称：	美国NARS丝绒迷雾唇笔亮泽唇膏笔2.4g 热门豆沙色\n所属品牌：	NARS\n产    地：	美国',1),(94,'韩国memebox pony我爱蜡笔唇膏口红滋润唇笔2.4g',39,40,'2018-03-29 21:08:59',4,'','商品名称：	韩国memebox pony我爱蜡笔唇膏口红滋润唇笔2.4g\r\n所属品牌：	美美箱\r\n产    地：	韩国',1),(95,'法国Armani阿玛尼Lip Magnet小胖丁丝绒哑光唇釉3.9ml',269,52,'2018-03-29 21:20:55',4,'','商品名称：	法国Armani阿玛尼Lip Magnet小胖丁丝绒哑光唇釉3.9ml    \r\n所属品牌：	阿玛尼    \r\n产    地：	 法国',1),(96,'韩国The saem得鲜双头双色气垫珠光哑光卧蚕笔不晕染大地色眼影棒2.4g',49,64,'2018-03-29 21:24:33',5,'','商品名称：	韩国The saem得鲜双头双色气垫珠光哑光卧蚕笔不晕染大地色眼影棒2.4g     \r\n所属品牌：	得鲜     \r\n产    地：	韩国',1),(97,'日本Kanebo嘉娜宝KATE三色造型立体眉粉饼/眉粉3g 持久上色',85,21,'2018-03-29 21:46:05',5,'','商品名称：	日本Kanebo嘉娜宝KATE三色造型立体眉粉饼/眉粉3g 持久上色    \r\n所属品牌：	嘉娜宝    \r\n产    地：	日本',1),(98,'台湾Solone缤纷乐园8色眼彩盒 大地色珠光亚光',56,18,'2018-03-29 21:47:35',5,'','足足有8个颜色哦！每个颜色都是很 常用、比较受欢迎的系列。8种颜色可以不同搭配，一周7天， 天天换。一盒在手魔力无穷啊！无论单擦、叠擦还是晕染，都能打造出动感妆容！',1),(99,'韩国Amore爱茉莉蜂蜜玫瑰护发精油70ml 免洗护发改善毛躁',56,76,'2018-03-29 21:48:51',6,'','免洗护发 适用于因烫染而受损的发质 恢复头发光泽 由内到外深度滋养你的秀发',1),(100,'日本SHISEIDO资生堂Fino强效渗透改善发质滋养护发膜230g',58,322,'2018-03-29 21:50:37',6,'','特别适用于经常烫染、头发干枯毛躁的MM。留住水分，修复受损发质，让秀发充满光泽，而且能保持染过的头发的色泽',1),(101,'法国TAAJ塔姿达达姬雪域活泉清泉卸妆水500ml 清洁卸妆',113,452,'2018-03-29 21:52:21',7,'','肤色明亮清新，此款卸妆水亦可卸掉防水睫毛膏,有效舒缓粉刺并给受压的肌肤补充水分，用完不干燥，不紧绷，并且对眼部充血有明显的减轻作用',1),(102,'美国Maybelline美宝莲眼部及唇部卸妆液油150ml 快速卸妆温和不刺激',53,525,'2018-03-29 21:53:29',7,'','美宝莲眼唇卸妆水，卸妆快速、温和、不伤肌肤。不糊眼睛，卸眼妆唇妆无压力，价格也相当亲民哦！',1),(103,'日本Nursery肌肤舒缓卸妆乳啫喱柚子味 高效清洁',188,732,'2018-03-29 21:54:38',7,'','质地是柔和清爽的啫喱，清洁力媲美卸妆油，还含有透明质酸呵护整个清洁过程。它诠释了\"护肤从卸妆开始\"。后续可以不再洁面，懒妹妹必败！',1),(104,'法国BIODERMA贝德玛舒妍卸妆水干性（粉色）500ml 温和卸妆',156,185,'2018-03-29 21:56:42',7,'','粉瓶适合中性、干性和敏感肌。温和干净的卸妆水，卸妆水中的佼佼者，卸日常妆真心妥妥的毫无压力的说，个别会碰到变态防水的眼线笔，用化妆棉敷一会也能卸得掉~',1),(105,'日本LB媚姿晶钻啫喱眼线笔鲜奶油眼影眼线胶笔0.5g 阿花花酱推荐',65,97,'2018-03-29 21:58:10',5,'','一款好用的眼线笔+多练习=变仙女+走上人生巅峰惹~',1),(106,'法国Armani阿玛尼臻致丝绒哑光唇釉液体唇彩唇膏6.5ml 水润丰盈',288,85,'2018-03-29 22:02:06',4,'','水润舒适 双唇犹如由內发出光芒',1);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagepath`
--

DROP TABLE IF EXISTS `imagepath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagepath` (
  `pathId` int(12) NOT NULL AUTO_INCREMENT,
  `goodId` int(12) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`pathId`),
  KEY `goodid` (`goodId`),
  CONSTRAINT `imagepath_ibfk_1` FOREIGN KEY (`goodId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagepath`
--

LOCK TABLES `imagepath` WRITE;
/*!40000 ALTER TABLE `imagepath` DISABLE KEYS */;
INSERT INTO `imagepath` VALUES (112,90,'ef21d7bdc1f24106834cdea485c929faTB2qczhpbBkpuFjy1zk.jpg'),(113,91,'7c0737d5ae44491ca377d294c5cf8c9cTB2uHpsshlmpuFscenes.png'),(114,92,'b7c175711d374fabb5fe430ea8915571TB2SMYYh_cCL1Fj.jpg'),(115,93,'500a8ccf488b49068c06b378e22d21fec37778a1a475.jpg'),(116,94,'aa0c7e099ad944c3af5e569dcbd84f792e53dd4f56775.png'),(117,94,'4a8e64e2bda9439e98b7d265f35f9f8c2e53dd4f4d94e.jpg'),(118,94,'f478f75bb6fb4c40b054a24b6d5c10aa6898619d6e99.jpg'),(119,95,'5fa464cb8ff24fd0bbc7cddd2c8b78f3c365363ca934.jpg'),(120,96,'05858a1b2bfc4294bfeefd12786fb9b128a2282bb4320.jpg'),(121,97,'e50e5c4b8b9c4739b54fd66d731331e711e83e1f6b873.jpg'),(122,98,'67bfcab0639f4986ba5ed5a9c5c56bca1d483fe406171.jpg'),(123,99,'c682b65ddf68486da54f7b47bcb8dce7179803d6cf350.jpg'),(124,100,'f372b2b06db74e3aba69de4e1bee8110289d36d03fb4a.jpg'),(125,101,'02ca8e7616c04131bb8963c0d33d520211ea03f3c6f14.jpg'),(126,102,'1e707b66b2e44e18bc61924c77e7d5a72e46e059c6c41.jpg'),(127,103,'3db6ab6e921047ae86cd63e5067abb91c3ab3cef922f.jpg'),(128,104,'433067775bd44d7194a9cb569522c0b2340490d751ec7.jpg'),(129,105,'ac8badbbf9204b81b771b6df080d187e68a63f26f13f.jpg'),(130,106,'95cceeb0802d4a9bb49b613065793e2e140066460e68.jpg'),(131,106,'ff5fada0162b42a387dca1cc3f99e74a611534234234.jpg');
/*!40000 ALTER TABLE `imagepath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indent`
--

DROP TABLE IF EXISTS `indent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indent` (
  `orderId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `orderTime` datetime NOT NULL,
  `oldPrice` float NOT NULL,
  `newPrice` float NOT NULL,
  `isPay` tinyint(1) NOT NULL,
  `isSend` tinyint(1) NOT NULL,
  `isReceive` tinyint(1) NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `addressId` int(12) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  KEY `orderGoods` (`orderTime`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `indent_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indent_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indent`
--

LOCK TABLES `indent` WRITE;
/*!40000 ALTER TABLE `indent` DISABLE KEYS */;
INSERT INTO `indent` VALUES (21,11,'2018-03-30 10:41:38',56,56,1,1,1,1,6);
/*!40000 ALTER TABLE `indent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `itemId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `orderId` (`orderId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (21,21,98,1);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopcart`
--

DROP TABLE IF EXISTS `shopcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopcart` (
  `userId` int(12) NOT NULL,
  `goodsid` int(12) NOT NULL,
  `cateDate` datetime NOT NULL,
  `goodsNum` int(12) NOT NULL,
  PRIMARY KEY (`userId`,`goodsid`),
  KEY `userId` (`userId`),
  KEY `goodsid` (`goodsid`),
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopcart`
--

LOCK TABLES `shopcart` WRITE;
/*!40000 ALTER TABLE `shopcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `regTime` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'zhangsan','11111111','2018-03-27 17:24:53','zhangsan@163.com','18888888888');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'health_beauty'
--

--
-- Dumping routines for database 'health_beauty'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 11:16:09
