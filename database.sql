CREATE DATABASE  IF NOT EXISTS `angelort_chess_notation` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `angelort_chess_notation`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: angelort_chess_notation
-- ------------------------------------------------------
-- Server version	5.5.41-log

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `board` int(11) DEFAULT NULL,
  `white` varchar(45) DEFAULT NULL,
  `whiteELO` varchar(4) DEFAULT NULL,
  `black` varchar(45) DEFAULT NULL,
  `blackELO` varchar(4) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `fen` varchar(255) DEFAULT NULL,
  `pgn` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_games_users_idx` (`user_id`),
  CONSTRAINT `fk_games_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'WA K-12 Scholastic','Interlake High School','2016-03-26',2,NULL,'Alden Rigby','1449','Andrew Lebedinsky','1506','1-0',NULL,'1.c4 e5 2.g3 Nf6 3.d3 d5 4.cxd5 Nxd5 5.Nf3 Nc6 6.Bg2 Bb4+ 7.Bd2 Bxd2+ 8.Qxd2 O-O 9.O-O Be6 10.Nc3 f6 11.Rab1 Nxc3 12.bxc3 b6 13.a4 Qd7 14.c4 Na5 15.Rfc1 Qxa4 16.Ra1 Qd7 (16...Nb3 17.Rxa4 Nxd2 18.Nxd2 {Trap to win a knight. But of course he didn\'t fall for it.}) 17.Qb2 Rad8 18.Ra3 Nc6 19.Qb5 a5 20.c5 Nd4 21.Nxd4 Qxd4 22.cxb6 cxb6 23.Rc6 Bd7 24.Qd5+ Qxd5 25.Bxd5+ Kh8 26.Rxb6 a4 27.Kf1 Rc8 28.Ke1 Rc5 29.Rd6 Bb5 30.e3 h6 31.d4 exd4 32.exd4 Re8+ 33.Kd1 Be2+ 34.Kd2 Ra5 35.Bc6 Re7 36.Rxa4 Rf5 37.f4 Bh5 38.Kd3 Be2+ 39.Kc2 Bh5 40.Rd8+ Kh7 41.Bd7 Rd5 42.Ra7 Re2+ 43.Kd3 Rxh2 44.Ke4 Bf7 45.Bf5+ Rxf5 46.Kxf5 Bc4 47.d5 Re2 48.Rdd7 Bd3+ 49.Kg4 Rf2 50.Rxg7+ Kh8 51.Rge7 h5+ 52.Kxh5 Rh2+ 53.Kg4 Be2+ 54.Rxe2 Rxe2 55.d6 Re8 56.d7 Rd8 57.Kf5 Kg7 58.Ke6 Kf8 59.Kxf6 Rb8 60.Ke6 Rb6+ 61.Kd5 Ke7 62.Kc5 Rd6 63.g4 { Black resigned. }','2016-04-12 21:30:58','2016-04-12 21:30:58',1),(2,'WA K-12 Scholastic','Interlake High School','2016-04-16',1,NULL,'Jeffrey Kou',NULL,'Alden Rigby','1449','0-1',NULL,'1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.Nf3 O-O 5.e4 d6 6.Be2 c5 7.d5 e6 8.dxe6 Bxe6 9.Bg5 Qa5 10.Qc2 Nxe4 11.O-O Nxc3 12.bxc3 Qxc3 13.Qxc3 Bxc3 14.Rad1 b5 15.cxb5 Bxa2 16.Rxd6 Re8 17.b6 axb6 18.Bh6 f6 19.Bb5 Re7 20.Rd7 Nxd7 21.Bxd7 Ra7 {I should have played Rxe7 winning a piece back.} 22.Bb5 Ra5 23.Be2 Re8 24.Bd3 c4 25.Rc1 Bb3 26.Bxc4+ Bxc4 27.Rxc3 g5 28.h3 Bd5 29.Rc7 Bxf3 30.gxf3 Re1+ 31.Kg2 Raa1 32.f4 gxf4 33.Bxf4 b5 34.Bd2 Reb1 35.Bc3 Rg1+ 36.Kh2 Rh1+ 37.Kg3 Rac1 38.Rc5 f5 39.h4 h5 40.Bb4 Rxc5 41.Bxc5 f4+ 42.Kxf4 Rxh4+ 43.Kg3 Rg4+ 44.Kh3 b4 45.Bd6 b3 46.Ba3 Ra4 47.Bc1 Ra2 48.Kh4 b2 49.Bxb2 Rxb2 50.Kxh5 Rxf2 { White resigned. } ','2016-04-12 22:04:48','2016-04-12 22:04:48',1),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new pgn','2016-04-18 22:46:33','2016-04-18 23:03:10',1),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2016-04-18 22:47:38','2016-04-18 22:47:38',1),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2016-04-18 22:53:38','2016-04-18 22:53:38',1),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2016-04-18 22:54:07','2016-04-18 22:54:07',1),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2016-04-18 22:55:09','2016-04-18 22:55:09',1),(8,'','','0000-00-00',0,0,'YY','','CodeIgniter','','*','rnbqkbnr/pp1ppppp/8/2p5/4P3/8/PPPP1PPP/RNBQKB','1.e4','2016-04-18 22:55:59','2016-04-19 11:42:24',1),(9,'','','0000-00-00',0,0,'YY','','CodeIgniter','','*','rnbqkbnr/pp1ppppp/8/2p5/4P3/8/PPPP1PPP/RNBQKB','1.e4 c5','2016-04-18 22:57:50','2016-04-18 23:24:27',1),(10,'testing','','0000-00-00',0,0,'hello','','','','*','rnbqkbnr/pp1ppppp/2p5/8/3P4/8/PPP1PPPP/RNBQKB','','2016-04-18 23:38:16','2016-04-18 23:38:16',1),(11,'','','0000-00-00',0,0,'','','','','*','rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w','','2016-04-18 23:45:05','2016-04-18 23:45:05',1),(12,'','','0000-00-00',0,0,'','','','','*','rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1','','2016-04-18 23:47:01','2016-04-18 23:47:01',1),(13,'','','0000-00-00',0,0,'','','','','*','rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1','','2016-04-18 23:47:33','2016-04-18 23:47:33',1),(14,'Practice game','','0000-00-00',0,0,'Yaeyoung','','Joe','','0-1','rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1','','2016-04-19 20:38:16','2016-04-19 20:38:16',1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alden','Rigby','alden@rigby.com','0125fb16f3055d7a94b21a7435bf4fc6','fe68e02b7fa7beb0d350e48dd60012b18c71f9c228d6',9,'2016-04-12 09:55:49','2016-04-14 22:43:26'),(2,'Yaeyoung','Rigby','yy@rigby.com','ce8bd8f4c4532948ad2cd2c5e2f40f0a','a36912c7030b67f50ec9928a9f18d3fa136628f971e1',1,'2016-04-14 20:54:18','2016-04-14 20:54:18'),(3,'Joseph','Rigby','joe@rigby.com','ce8bd8f4c4532948ad2cd2c5e2f40f0a','a36912c7030b67f50ec9928a9f18d3fa136628f971e1',1,'2016-04-14 21:06:26','2016-04-14 21:06:26'),(4,'Ellie','Rigby','ellie@rigby.com','ce8bd8f4c4532948ad2cd2c5e2f40f0a','a36912c7030b67f50ec9928a9f18d3fa136628f971e1',1,'2016-04-14 21:08:12','2016-04-14 21:08:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 21:27:41
