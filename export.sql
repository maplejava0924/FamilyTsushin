-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mapledata
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bbs_message`
--

DROP TABLE IF EXISTS `bbs_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs_message` (
  `serialId` int NOT NULL AUTO_INCREMENT COMMENT 'シリアル番号',
  `threadId` int NOT NULL COMMENT 'スレッドID',
  `id` int NOT NULL COMMENT 'スレ内投稿ID',
  `userType` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'true:主、false:レス',
  `iconId` varchar(30) NOT NULL COMMENT '顔アイコン',
  `name` varchar(30) NOT NULL COMMENT '名前',
  `message` varchar(5000) NOT NULL COMMENT '本文',
  `pass` varchar(1000) NOT NULL COMMENT 'パスワード',
  `disabledflg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '無効フラグ true:無効',
  `createdy` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日',
  `updatedy` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日',
  PRIMARY KEY (`serialId`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='掲示板のメッセージ管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_message`
--

LOCK TABLES `bbs_message` WRITE;
/*!40000 ALTER TABLE `bbs_message` DISABLE KEYS */;
INSERT INTO `bbs_message` VALUES (1,1,1,1,'man','スレッド主たかはし','こんにちは！スレッド樹立したぞ！','maple',0,'2020-05-01 16:34:03','2020-05-01 16:34:03'),(2,2,1,1,'man','キリン','何の予定もない…','maple',0,'2020-05-01 16:37:15','2020-05-01 16:37:15'),(3,2,2,0,'man','ほうじ茶','それは悲しいｗｗｗ','dummy',0,'2020-05-01 19:46:34','2020-05-01 19:46:34'),(4,2,3,0,'man','コラッタ','おれは映画見に行くよ。楽しみすぎる！','dummy',0,'2020-05-01 19:49:26','2020-05-01 19:49:26'),(5,1,2,0,'man','シュナイダー','めちゃくちゃ腰痛いよ～。なんか工夫してることとかある？','dummy',0,'2020-05-01 19:51:55','2020-05-01 19:51:55'),(6,1,3,1,'man','スレッド主たかはし','ん～…椅子いいやつ買ったよｗ','maple',0,'2020-05-01 20:18:08','2020-05-01 20:18:08'),(7,1,4,0,'man','シュナイダー','いいなぁ！おれもほしい(´・ω・)','dummy',0,'2020-05-01 20:22:01','2020-05-01 20:22:01'),(8,1,5,0,'man','みかん','おれなんか地べたでやってるぞｗｗ','dummy',0,'2020-05-01 20:31:48','2020-05-01 20:31:48'),(9,1,6,1,'man','スレッド主たかはし','Σ(･ω･ﾉ)ﾉ！','maple',0,'2020-05-01 20:41:47','2020-05-01 20:41:47'),(10,2,4,1,'man','キリン','いいな。何見に行くの？','maple',0,'2020-05-01 20:45:03','2020-05-01 20:45:03'),(11,3,1,1,'man','世界最強の男','ジャックハンマー大好き。','maple',0,'2020-05-01 20:57:14','2020-05-01 20:57:14'),(12,3,2,0,'man','芽キャベツ','わかってるなスレ主!!バキの兄ってのもいいよな。','dummy',0,'2020-05-01 21:51:46','2020-05-01 21:51:46'),(13,3,3,0,'man','電車男','範馬勇次郎ｗｗ\n恐竜と戦いだしたころからついていけなくなった','dummy',0,'2020-05-01 21:56:58','2020-05-01 21:56:58'),(14,3,4,1,'man','世界最強の男','それはおれもｗｗでもおもろいで','maple',0,'2020-05-01 23:08:25','2020-05-01 23:08:25'),(15,4,1,1,'man','みそしるラーメン','綾鷹コーヒーキリマンジャロブレンド。','misoshiruumaize',0,'2020-05-01 23:25:20','2020-05-01 23:25:20'),(16,5,1,1,'man','フランス育ちではない','ボンジュールおしゃれよね。','maple',0,'2020-05-01 23:46:24','2020-05-01 23:46:24'),(17,5,2,0,'man','パトリオット','オラ！ってどこの言葉だっけ？','dummy',0,'2020-05-01 23:49:10','2020-05-01 23:49:10'),(18,6,1,1,'man','総理大臣','日本の夜明けぜよ。','sakamoto1234',0,'2020-05-01 23:51:57','2020-05-01 23:51:57'),(19,6,2,0,'man','ペンタゴン勤務','坂本さん！！？','dummy',0,'2020-05-01 23:54:14','2020-05-01 23:54:14'),(20,7,1,1,'man','名もなき戦士','残業三昧。','teacher0921',0,'2020-05-02 18:57:22','2020-05-02 18:57:22'),(21,2,5,0,'man','コラッタ','パラサイト！映画館やってないせつ','',0,'2020-05-02 19:01:29','2020-05-02 19:01:29'),(22,2,6,0,'man','キン肉マソ','個人経営の映画館はほとんどやってない。おれの周りの大手のとこは1時間ごとくらいでやってる。','dummy',0,'2020-05-02 19:05:26','2020-05-02 19:05:26'),(23,2,7,1,'man','キリン','パラサイトいいね(; ･`д･´)','maple',0,'2020-05-02 19:07:38','2020-05-02 19:07:38'),(24,2,8,1,'man','キリン','おれのとこは全部閉まってるよ。\r\n映画いいな～(´・ω・)\r\nアマプラ見て過ごすか…\r\nなんかオススメの映画とかない？ｗ','maple',0,'2020-05-02 19:12:04','2020-05-02 19:12:04'),(25,8,1,1,'man','ハッカー','大阪LOVERSすき。\r\n大阪住んでないけど大阪好きになったｗ','oosakaLovers',0,'2020-05-02 20:24:27','2020-05-02 20:24:27'),(26,2,9,0,'man','肉じゃが','わかる\r\nあれもすき。なんだっけ…負けないでみたいなやつ','dummy',0,'2020-05-02 20:28:33','2020-05-02 20:28:33'),(27,2,10,0,'man','宅配便の翁','なに？ｗ\r\n何度でもかな？(。´･ω･)?','nandodemonanndodemo',0,'2020-05-02 20:29:50','2020-05-02 20:29:50'),(28,8,2,0,'man','コロッケティッシュ','京都だけどすきー','Hannariikouya',0,'2020-05-02 20:33:16','2020-05-02 20:33:16'),(29,8,3,0,'man','コロッケティッシュ','京都だけどすきー','Hannariikouya',0,'2020-05-02 20:34:26','2020-05-02 20:34:26'),(30,8,4,0,'man','コロッケティッシュ','京都だけどすきー','Hannariikouya',0,'2020-05-02 20:34:49','2020-05-02 20:34:49'),(31,8,5,0,'man','コロッケティッシュ','京都だけどすきー','Hannariikouya',0,'2020-05-02 20:37:38','2020-05-02 20:37:38'),(32,8,6,0,'man','三六','わかる～元気出るよね！！','dummy',0,'2020-05-03 19:05:52','2020-05-03 19:05:52'),(33,8,7,0,'man','コロ助','負けないでも好きだよｗｗｗ','dummy',0,'2020-05-03 19:07:12','2020-05-03 19:07:12'),(34,8,8,1,'man','ハッカー','それはそうとセカオワも好き(; ･`д･´)','oosakaLovers',0,'2020-05-03 19:09:16','2020-05-03 19:09:16'),(35,9,1,1,'man','ブランド至高','オムライスこそ至高。\r\nたまごはオムレツより、ふわっと乗せて欲しい。','mentalBreak',0,'2020-05-03 19:14:26','2020-05-03 19:14:26'),(36,8,9,0,'man','俺氏','グランドイリュージョンマジ面白いよ。\r\nトランプアクションかっこよすぎて練習したｗ','dummy',0,'2020-05-04 14:33:38','2020-05-04 14:33:38'),(37,8,10,0,'man','れもん','わかるうう','dummy',0,'2020-05-04 15:37:17','2020-05-04 15:37:17'),(38,8,11,0,'man','apple','ぼくはキングヌーすき','dummy',0,'2020-05-04 16:06:18','2020-05-04 16:06:18'),(39,6,3,0,'man','ハンニバル','この国の未来は明るい…','dummy',0,'2020-05-04 16:38:18','2020-05-04 16:38:18'),(40,9,2,0,'man','三郎','わかるで。\r\nチキンライスを楽しむんや','dummy',0,'2020-05-04 23:13:27','2020-05-04 23:13:27'),(41,8,12,0,'man','ミュージックステーション','音楽スレになってるｗ\r\n他に音楽全般語るスレもたてる？','dummy',0,'2020-05-04 23:15:02','2020-05-04 23:15:02'),(42,10,1,1,'man','みそしる大臣','・数独\r\n・プログラミング\r\n・ゲーム\r\n・庭掃除\r\n・アマゾンプライム\r\n他に何かある？','stayHome',0,'2020-05-04 23:18:50','2020-05-04 23:18:50'),(43,11,1,1,'man','ハリウッドスター','バトルシップ、ミッションインポッシブル：ゴーストプロトコル、特攻野郎Aチーム、トランスフォーマー：ダークサイドムーン、パシフィックリム、アイアンマン３、グランドイリュージョン２、アメリカンスナイパー、ローガン、レディ・プレイヤー１\r\n最近のだと、ヴェノム、アベンジャーズ：エンドゲーム、ブラックパンサー','movie',0,'2020-05-04 23:25:15','2020-05-04 23:25:15'),(44,10,2,0,'man','タピオカ','空眺める','dummy',0,'2020-05-04 23:27:03','2020-05-04 23:27:03'),(45,11,2,0,'man','たんこぶ','アクションじゃないけどジョーカー面白かった','dummy',0,'2020-05-04 23:31:15','2020-05-04 23:31:15'),(46,12,1,1,'man','メープル','マンションの階段５階から三輪車で駆け下りた','maple12345',0,'2020-05-04 23:33:29','2020-05-04 23:33:29'),(47,10,3,0,'man','aタッカー','ラズベリーパイ','dummy',0,'2020-05-05 12:31:44','2020-05-05 12:31:44'),(49,10,5,0,'man','ああああ','わ','dummy',0,'2020-05-05 12:47:46','2020-05-05 12:47:46'),(50,10,6,0,'man','ああああ','か','dummy',0,'2020-05-05 12:48:10','2020-05-05 12:48:10'),(51,10,7,0,'man','ああああ','る','dummy',0,'2020-05-05 12:48:26','2020-05-05 12:48:26'),(52,9,3,0,'man','フライド仙人','こんにちは！フライド仙人です！\r\nオムライス好きです！','dummy',0,'2021-09-22 16:41:50','2021-09-22 16:41:50'),(53,9,4,0,'man','HAZUMI','ポンポンポポン！','dummy',0,'2021-09-22 16:42:12','2021-09-22 16:42:12'),(54,13,1,1,'man','せんべいくん','私はアスレチックの動画です！(*^^)v','maple18foolish',0,'2021-09-22 16:43:45','2021-09-22 16:43:45'),(55,13,2,0,'man','ひまたろう','ひさしぶり！','dummy',0,'2022-07-15 18:19:28','2022-07-15 18:19:28');
/*!40000 ALTER TABLE `bbs_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_thread`
--

DROP TABLE IF EXISTS `bbs_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs_thread` (
  `threadId` int NOT NULL AUTO_INCREMENT COMMENT 'スレッドID',
  `title` varchar(200) NOT NULL COMMENT 'スレッドタイトル',
  `pass` varchar(1000) NOT NULL COMMENT 'パスワード',
  `closeflg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '閉じるフラグ true:閉じる',
  `disabledflg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '無効フラグ true:無効',
  `createdy` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登録日',
  `updatedy` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日',
  PRIMARY KEY (`threadId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='掲示板のスレッド管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_thread`
--

LOCK TABLES `bbs_thread` WRITE;
/*!40000 ALTER TABLE `bbs_thread` DISABLE KEYS */;
INSERT INTO `bbs_thread` VALUES (1,'最近のテレワーク事情','maple',0,0,'2020-05-01 16:34:02','2020-05-01 20:41:47'),(2,'金曜日の予定を話そう','maple',0,0,'2020-05-01 16:37:15','2020-05-02 20:29:50'),(3,'バキについて語ろうや','maple',0,0,'2020-05-01 20:57:13','2020-05-01 23:08:25'),(4,'絶対においしいお茶選手権～～！','misoshiruumaize',0,0,'2020-05-01 23:25:18','2020-05-01 23:25:18'),(5,'世界のあいさつについてかたろ～','maple',0,0,'2020-05-01 23:46:24','2020-05-01 23:49:10'),(6,'この国の未来を案じる会','sakamoto1234',0,0,'2020-05-01 23:51:57','2020-05-04 16:38:18'),(7,'教師だけど質問ある？','teacher0921',0,0,'2020-05-02 18:57:22','2020-05-02 18:57:22'),(8,'ドリカム最高','oosakaLovers',0,0,'2020-05-02 20:24:27','2020-05-04 23:15:02'),(9,'オムライスっておいしいよな','mentalBreak',0,0,'2020-05-03 19:14:26','2021-09-22 16:42:12'),(10,'ステイホーム週間をどう過ごすか','stayHome',0,0,'2020-05-04 23:18:50','2020-05-05 12:48:26'),(11,'洋画のアクションNo.1','movie',0,0,'2020-05-04 23:25:15','2020-05-04 23:31:15'),(12,'幼少期の武勇伝','maple12345',0,0,'2020-05-04 23:33:29','2020-05-04 23:33:29'),(13,'一番面白いHIKAKINの動画は？','maple18foolish',0,0,'2021-09-22 16:43:45','2022-07-15 18:19:28');
/*!40000 ALTER TABLE `bbs_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human`
--

DROP TABLE IF EXISTS `human`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `human` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human`
--

LOCK TABLES `human` WRITE;
/*!40000 ALTER TABLE `human` DISABLE KEYS */;
INSERT INTO `human` VALUES (123,'た','123456'),(9738,'柿本','10293'),(1742,'maple','5674'),(338,'たかはしみずは','hazumi'),(463928,'ペンギン','heiwjahd'),(99,NULL,NULL);
/*!40000 ALTER TABLE `human` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (21892,'プロテイン','njdkad'),(463928,'ペンギン','heiwjahd');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 18:35:05
