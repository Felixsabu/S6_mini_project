-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ev_db
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `admin_charging_station_list`
--

DROP TABLE IF EXISTS `admin_charging_station_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_charging_station_list` (
  `id` int NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` char(100) NOT NULL,
  `charger_type` char(20) NOT NULL,
  `available_ports` int NOT NULL,
  `status` enum('Active','Under Maintenance','Out of Service') NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `emergency_port` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_charging_station_list`
--

LOCK TABLES `admin_charging_station_list` WRITE;
/*!40000 ALTER TABLE `admin_charging_station_list` DISABLE KEYS */;
INSERT INTO `admin_charging_station_list` VALUES (1,'ABC Charging Station','123 Main St','Thiruvananthapuram','AC Level 1 Charging',4,'Active',8.52375,76.9386,'yes'),(2,'XYZ Charging Station','456 Elm St','Kollam','AC Level 2 Charging',2,'Under Maintenance',8.91044,76.8548,NULL),(3,'123 Charging Station','789 Oak St','Pathanamthitta','DC Fast Charging',6,'Active',9.26053,76.8102,NULL),(4,'456 Charging Station','1011 Pine St','Alappuzha','AC Level 1 Charging',3,'Out of Service',9.4297,76.3453,NULL),(5,'789 Charging Station','1213 Maple St','Kottayam','AC Level 2 Charging',2,'Active',9.45486,76.782,'no'),(6,'DEF Charging Station','1415 Cedar St','Idukki','DC Fast Charging',5,'Active',9.83809,76.7459,NULL),(7,'GHI Charging Station','1617 Birch St','Ernakulam','AC Level 1 Charging',2,'Under Maintenance',9.89633,76.6283,NULL),(8,'JKL Charging Station','1819 Spruce St','Thrissur','AC Level 2 Charging',4,'Active',10.3642,76.3158,NULL),(9,'MNO Charging Station','2021 Walnut St','Palakkad','DC Fast Charging',1,'Out of Service',10.8121,75.9733,'no'),(10,'PQR Charging Station','2223 Pineapple St','Malappuram','AC Level 1 Charging',1,'Active',10.871,75.9344,NULL),(11,'ABC Charging Station','123 Main St','Kozhikode','AC Level 1 Charging',4,'Active',11.1627,75.8833,NULL),(12,'XYZ Charging Station','456 Elm St','Wayanad','AC Level 2 Charging',2,'Under Maintenance',11.6743,75.5589,NULL),(13,'123 Charging Station','789 Oak St','Kannur','DC Fast Charging',6,'Active',11.787,75.4647,NULL),(14,'456 Charging Station','1011 Pine St','Kasaragod','AC Level 1 Charging',3,'Out of Service',12.4617,75.0144,NULL),(15,'789 Charging Station','1213 Maple St','Thiruvananthapuram','AC Level 2 Charging',3,'Active',8.5337,76.9418,'no'),(16,'DEF Charging Station','1415 Cedar St','Kollam','DC Fast Charging',5,'Active',8.99533,76.831,NULL),(17,'GHI Charging Station','1617 Birch St','Pathanamthitta','AC Level 1 Charging',2,'Under Maintenance',9.32258,76.7955,NULL),(18,'JKL Charging Station','1819 Spruce St','Alappuzha','AC Level 2 Charging',4,'Active',9.48096,76.3366,NULL),(19,'MNO Charging Station','2021 Walnut St','Kottayam','DC Fast Charging',1,'Out of Service',9.59608,76.737,'no'),(20,'PQR Charging Station','2223 Pineapple St','Idukki','AC Level 1 Charging',1,'Active',9.85128,76.7378,NULL),(21,'ABC Charging Station','123 Main St','Ernakulam','AC Level 1 Charging',4,'Active',10.013,76.571,NULL),(51,'KLM Charging Station','3035 Laurel St','Thrissur','AC Level 2 Charging',3,'Active',10.4736,76.2444,NULL),(52,'STU Charging Station','3237 Ash St','Kollam','DC Fast Charging',2,'Under Maintenance',9.05239,76.8568,NULL),(53,'VWX Charging Station','3439 Cedar St','Kottayam','AC Level 1 Charging',2,'Active',9.73725,76.6723,'no'),(54,'YZA Charging Station','3641 Elm St','Ernakulam','AC Level 2 Charging',5,'Active',10.1067,76.4787,NULL),(55,'BCD Charging Station','3843 Birch St','Thiruvananthapuram','DC Fast Charging',2,'Out of Service',8.66259,76.9154,NULL),(56,'EFG Charging Station','4045 Oak St','Alappuzha','AC Level 1 Charging',3,'Active',9.55214,76.3262,NULL),(57,'HIJ Charging Station','4247 Pine St','Palakkad','AC Level 2 Charging',3,'Under Maintenance',10.8339,75.948,NULL),(58,'KLM Charging Station','4449 Walnut St','Malappuram','DC Fast Charging',6,'Active',10.9071,75.9207,NULL),(59,'NOP Charging Station','4651 Maple St','Kannur','AC Level 1 Charging',4,'Active',12.1435,75.2131,NULL),(60,'QRS Charging Station','4853 Pineapple St','Kozhikode','AC Level 2 Charging',2,'Under Maintenance',11.2567,75.8253,NULL),(61,'TUV Charging Station','5055 Oakwood St','Thrissur','DC Fast Charging',3,'Active',10.5978,76.1496,NULL),(62,'WXYZ Charging Station','5257 Chestnut St','Kollam','AC Level 1 Charging',5,'Out of Service',9.16122,76.8548,NULL),(63,'ABC2 Charging Station','5459 Walnut St','Kottayam','AC Level 2 Charging',1,'Active',9.83504,76.6449,NULL),(64,'DEF2 Charging Station','5661 Cedar St','Ernakulam','DC Fast Charging',4,'Active',10.2646,76.3559,NULL),(65,'GHI2 Charging Station','5863 Elm St','Thiruvananthapuram','AC Level 1 Charging',4,'Under Maintenance',8.75235,76.8972,NULL),(66,'JKL2 Charging Station','6065 Pine St','Alappuzha','AC Level 2 Charging',3,'Active',9.70292,76.316,NULL),(67,'MNO2 Charging Station','6267 Oak St','Palakkad','DC Fast Charging',6,'Out of Service',10.8634,75.9369,NULL),(68,'PQR2 Charging Station','6469 Pineapple St','Malappuram','AC Level 1 Charging',1,'Active',10.9465,75.9039,NULL),(69,'STU2 Charging Station','6671 Walnut St','Kannur','AC Level 2 Charging',4,'Under Maintenance',11.8996,75.3701,NULL),(70,'VWX2 Charging Station','6873 Cedar St','Kozhikode','DC Fast Charging',5,'Active',11.3679,75.7446,NULL),(71,'YZA2 Charging Station','7075 Ash St','Thrissur','AC Level 1 Charging',3,'Active',10.6114,76.1324,NULL),(101,'EVOK Charging Station Pariyaram','SH21, Athirappilly, 680724','Athirappilly','AC Level 1 Charging',4,'Active',10.2905,76.5196,'yes'),(102,'Zeon Charging Station Karukutty','69FG+56H Annapoorna Cafe Kerala 683572','Karukutty','AC Level 2 Charging',2,'Under Maintenance',10.2229,76.3759,'yes'),(103,'Tata Power Charging Station Aluva','Building No 18/615/1, Kerala 683101','Aluva','DC Fast Charging',6,'Active',10.1083,76.3494,'yes'),(104,'EVOK Charging Station Aluva','38JR+Q22, Ambattukavu, Choornikkara, Aluva, Kerala 683501','Aluva','AC Level 1 Charging',3,'Out of Service',10.0849,76.3408,'yes'),(105,'EVOK Charging Station Kakkanad','28RQ+5CC, Karippassery, North Kalamassery, Kerala 682021','Kakkanad','AC Level 2 Charging',1,'Active',10.0436,76.3383,'yes'),(106,'Electric Vehicle Charging Station Muttom','Muttom Metro Station, Choornikkara, Muttom, Kerala 683501','Muttom','DC Fast Charging',5,'Active',10.0757,76.3339,'yes'),(107,'Electric Vehicle Charging Station Edappally','28G5+RV7, near to Lulu Hyper Market, Edappally, Ernakulam, Kerala 682024','Edappally','AC Level 1 Charging',2,'Under Maintenance',10.0325,76.31,'no'),(108,'Zeon Charging Station Edappally','Gokul Oottupura Veg Restaurant, NH66, Padivattom, Edappally, Ernakulam, Kerala 682024','Edappally','AC Level 2 Charging',4,'Active',10.0158,76.3132,'no'),(109,'KSEB Charging Station Palarivattom','2843+3XX, Palarivattom, Kochi, Ernakulam, Kerala 682017','Palarivattom','DC Fast Charging',3,'Out of Service',10.0123,76.3025,'yes'),(110,'EESL Charging Station Menaka','X7GG+XX7, Menaka, Marine Drive, Kochi, Ernakulam, Kerala 682031','Marine Drive','AC Level 1 Charging',1,'Active',9.98553,76.2767,'yes'),(111,'Electric Vehicle Charging Station Panampilly Nagar','HB 39, South Bridge Ave Kerala 682036','Panampilly Nagar','AC Level 1 Charging',4,'Active',9.97255,76.293,'yes'),(112,'EVOK Charging Station Thammanam','X8M8+XFR geethanjali, Geethanjali Rd, Kerala 682032','Thammanam','AC Level 2 Charging',2,'Under Maintenance',9.98971,76.3178,'yes'),(113,'PulsePower Charging Station Thiruvaniyoor','Kochi - Madurai - Dhanushkodi Rd, Mamala, Thiruvaniyoor, Kerala 682305','Thiruvaniyoor','DC Fast Charging',6,'Active',9.95259,76.3848,'yes'),(114,'Electric Vehicle Charging Station Thiruvankulam','AMJ Arcade, Kerala 682312','Thripppunithura','AC Level 1 Charging',3,'Out of Service',9.93461,76.3882,'yes'),(115,'Electric Vehicle Charging Station Kizhakkambalam','2CJ4+VXV, Kizhakkambalam, Kerala 683562','Kizhakkambalam','AC Level 2 Charging',1,'Active',10.04,76.4099,'no'),(116,'KSEB Charging Station Pezhakkappilly','SH 1, Pezhakkappilly, Kerala 686661','Pezhakkappilly','DC Fast Charging',5,'Active',10.0198,76.5639,'no'),(117,'EVOK Charging Station Nellikkuzhi','3J93+W4F, Verpati, Kerala 686691','Nellikkuzhi','AC Level 1 Charging',2,'Under Maintenance',10.0744,76.6032,'no'),(118,'KSEB Charging Station Kothamangalam','Sub Power Station, Kothamangalam, Kerala 686691','Kothamangalam','AC Level 2 Charging',3,'Active',10.059,76.6164,'yes'),(119,'Electric Vehicle Charging Station Vannapuram','XQQR+WRP, Vannappuram, Kerala 685607','Vannapuram','DC Fast Charging',3,'Out of Service',10.0001,76.7918,'yes'),(120,'KSEB Charging Station Vazhithala','VJMX+X6W, Vazhithala, Manakkad, Kerala 685583','Vazhithala','AC Level 1 Charging',1,'Active',9.88644,76.65,'yes'),(121,'TATA Charging Station Thodupuzha','VPR4+QQC J K Buildings, Thodupuzha, Kerala 685584','Thodupuzha','AC Level 1 Charging',4,'Active',9.90065,76.707,'yes'),(122,'KSEB Charging Station Thodupuzha','VPR5+R6C, Thodupuzha, Kerala 685608','Thodupuzha','AC Level 2 Charging',3,'Active',9.89286,76.7083,'yes'),(123,'Zeon Charging Station Thodupuzha','Joance Regency, Kerala 685608','Thodupuzha','DC Fast Charging',1,'Under Maintenance',9.8952,76.7161,'no'),(124,'Electric Vehicle Charging Station Idukki','RXXH+P37, Idukki Twp, Kerala 685602','Idukki','AC Level 1 Charging',4,'Active',9.86676,76.9761,'no'),(125,'GO EC Charging Station Neendoor','Kalladanthiyil Building, Kerala 686601','Neendoor','AC Level 2 Charging',5,'Active',9.71083,76.4918,'yes'),(126,'KSEB Charging Station Thellakom','JGXX+57P, Thellakom, Kerala 686630','Thellakom','DC Fast Charging',2,'Out of Service',9.66984,76.5414,'no'),(127,'KSEB Charging Station Perumbaikad','JGMF+4Q2, Medical College Rd, Kerala 686008','Perumbaikod','AC Level 1 Charging',1,'Active',9.65184,76.5275,'no'),(128,'KSEB Charging Station Thiruvanchoor','JH5F+FQP, Naalumani Kaattu, Kerala 686019','Thiruvanchoor','AC Level 2 Charging',3,'Under Maintenance',9.61614,76.5805,'yes'),(129,'EVOK Charging Station Kumaranalloor','JG2J+HQG, Kumaranalloor, Kottayam, Kerala 686016','Kumaranalloor','DC Fast Charging',5,'Active',9.60875,76.5316,'no'),(130,'Zeon Charging Station Kottayam','Hotel Aida, Aida Junction, SH 1, Kodimatha, Kottayam, Kerala 686001','Kottayam','AC Level 1 Charging',5,'Active',9.59203,76.5174,'yes'),(131,'Tata Power Charging Station Kottayam','HGF9+GMR, Kollam - Theni Hwy, Kodimatha, Kottayam, Kerala 686004','Kottayam','AC Level 2 Charging',0,'Under Maintenance',9.57355,76.5195,'yes'),(132,'Electric Vehicle Charging Station Muppaikad','287C, opposite Malayala Manorama, Kodimatha, Kottayam, Muppaikad, Kerala 686013','Muppaikad','DC Fast Charging',3,'Active',9.56923,76.52,'yes'),(133,'Electric Vehicle Charging Station Kaduvakulam','HG3M+W9M, Kerala 686004','Kollam','AC Level 1 Charging',5,'Out of Service',9.55621,76.5333,'yes'),(134,'KSEB Charging Station Kanjikuzhi','HGPV+CRR, Puthuppally Rd, Kanjikuzhi, Kottayam, Kerala 686002','Kanjikuzhi','AC Level 2 Charging',1,'Active',9.59102,76.5429,'no'),(135,'GO EC Charging Station Ponkunnam','HP8R+HJH, Ponkunnam, Kerala 686506','Ponkunnam','DC Fast Charging',4,'Active',9.57452,76.7394,'no'),(136,'KSEB Charging Station Thiruvalla','9HPM+2PP, Thiruvalla, Kerala 689105','Thiruvalla','AC Level 1 Charging',2,'Under Maintenance',9.40673,76.5926,'yes'),(137,'KSEB Charging Station Ramapuram','QMW7+V88, Pala Ramapuram Rd, Ramapuram, Kerala 686576','Pala','AC Level 2 Charging',3,'Active',9.80894,76.6728,'yes'),(138,'KSEB Charging Station Pala','PM5G+P9V, Pala Main Rd, Kottaramattom, Pala, Kerala 686575','Pala','DC Fast Charging',5,'Out of Service',9.72503,76.6831,'yes'),(139,'KSEB Charging Station Erattupetta','MQPH+3HV, Aruvithura Crossway Rd, Aruvithura, Erattupetta, Kerala 686122','Erattupeta','AC Level 1 Charging',0,'Active',9.69166,76.7806,'no'),(140,'Zeon Charging Station Mundakkayam','RD Cinemas, Kerala 686513','Mundakkayam','AC Level 2 Charging',5,'Under Maintenance',9.55168,76.8787,'yes'),(141,'KSEB Charging Station Muvattupuzha','Bus Stand, 130, MC Rd, Junction, Muvattupuzha, Kerala 686673','Muvattupuzha','DC Fast Charging',5,'Active',9.98307,76.5791,'no'),(142,'KSEB Charging Station Perumbavoor','4F6H+QJ5, M C, SH 1, Kerala 683542','Perumbavoor','AC Level 1 Charging',3,'Active',10.1132,76.4802,'yes'),(143,'GOEC Charging Station Perumbavoor','P.O, Mudickal, Perumbavoor, Kerala 683542','Perumbavoor','AC Level 1 Charging',3,'Active',10.1278,76.4466,'yes');
/*!40000 ALTER TABLE `admin_charging_station_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `booking_date` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `station_name` varchar(50) DEFAULT NULL,
  `available_ports` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `login_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (13,'2024-03-30','19:33:00','19:36:00','Thiruvananthapuram','ABC Charging Station',4,'2024-03-02 19:30:08',40),(31,'2024-03-28','20:01:00','20:05:00','Malappuram','KLM Charging Station',6,'2024-03-02 20:00:54',40),(51,'2024-04-11','00:08:00','00:09:00','Mundakkayam','Zeon Charging Station Mundakkayam',4,'2024-04-23 00:04:09',39),(58,'2024-04-12','10:02:00','10:04:00','Kumaranalloor','EVOK Charging Station Kumaranalloor',6,'2024-04-26 10:00:43',39),(59,'2024-04-12','10:02:00','10:05:00','Pala','KSEB Charging Station Pala',6,'2024-04-26 10:01:00',39),(60,'2024-05-18','15:54:00','19:55:00','Kottayam','Zeon Charging Station Kottayam',2,'2024-05-03 15:55:08',39),(63,'2024-06-25','10:03:00','10:08:00','Kothamangalam','KSEB Charging Station Kothamangalam',4,'2024-06-16 10:04:04',30),(64,'2024-07-06','18:15:00','18:20:00','Erattupeta','KSEB Charging Station Erattupetta',1,'2024-07-05 18:15:10',30),(65,'2024-07-09','09:44:00','09:48:00','Thodupuzha','Zeon Charging Station Thodupuzha',2,'2024-07-09 09:44:55',30);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charging_station_booking`
--

DROP TABLE IF EXISTS `charging_station_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charging_station_booking` (
  `id` int NOT NULL,
  `charging_station_id` int NOT NULL,
  `user_id` int NOT NULL,
  `booking_start_time` datetime NOT NULL,
  `booking_end_time` datetime NOT NULL,
  `status` enum('Active','Cancelled','Completed') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charging_station_booking`
--

LOCK TABLES `charging_station_booking` WRITE;
/*!40000 ALTER TABLE `charging_station_booking` DISABLE KEYS */;
INSERT INTO `charging_station_booking` VALUES (1,1,1,'2022-01-01 10:00:00','2022-01-01 12:00:00','Completed'),(2,2,2,'2022-01-02 13:00:00','2022-01-02 15:00:00','Cancelled'),(3,3,3,'2022-01-03 16:00:00','2022-01-03 18:00:00','Active'),(4,4,4,'2022-01-04 19:00:00','2022-01-04 21:00:00','Active'),(5,5,5,'2022-01-05 22:00:00','2022-01-05 23:00:00','Completed'),(6,6,6,'2022-01-06 10:00:00','2022-01-06 11:00:00','Completed'),(7,7,7,'2022-01-07 12:00:00','2022-01-07 13:00:00','Active'),(8,8,8,'2022-01-08 14:00:00','2022-01-08 16:00:00','Cancelled'),(9,9,9,'2022-01-09 17:00:00','2022-01-09 19:00:00','Active'),(10,10,10,'2022-01-10 20:00:00','2022-01-10 22:00:00','Completed');
/*!40000 ALTER TABLE `charging_station_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charging_station_list`
--

DROP TABLE IF EXISTS `charging_station_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charging_station_list` (
  `id` int NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` char(100) NOT NULL,
  `charger_type` char(20) NOT NULL,
  `available_ports` int NOT NULL,
  `status` enum('Active','Under Maintenance','Out of Service') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charging_station_list`
--

LOCK TABLES `charging_station_list` WRITE;
/*!40000 ALTER TABLE `charging_station_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `charging_station_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` enum('admin','user','station') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (29,'admin','123','admin'),(30,'user2','123','user'),(31,'johnsmith','qwertyuiop','user'),(32,'johndoe','asdfghjkl','user'),(33,'janedoe','zxcvbnm','user'),(34,'admin','adminpass','user'),(35,'testuser','testpass','user'),(36,'guest','guestpass','user'),(37,'user3','pass789','user'),(38,'user4','password1234','user'),(39,'felix122333','123','user'),(40,'abc','123','user'),(41,'aashinappi','appi123','user'),(42,'station','123','station'),(43,'GHI2 Charging Station','123','station'),(44,'EVOK Charging Station Pariyaram','123','station'),(45,'KSEB Charging Station Pezhakkappilly','123','station'),(46,'EVOK Charging Station Nellikkuzhi','123','station'),(47,'KSEB Charging Station Kothamangalam','123','station'),(48,'Electric Vehicle Charging Station Vannapuram','123','station'),(49,'KSEB Charging Station Vazhithala','123','station'),(50,'TATA Charging Station Thodupuzha','123','station'),(51,'KSEB Charging Station Thodupuzha','123','station'),(52,'Zeon Charging Station Thodupuzha','123','station'),(53,'Electric Vehicle Charging Station Idukki','123','station'),(54,'GO EC Charging Station Neendoor','123','station'),(55,'KSEB Charging Station Thellakom','123','station'),(56,'KSEB Charging Station Perumbaikad','123','station'),(57,'KSEB Charging Station Thiruvanchoor','123','station'),(58,'EVOK Charging Station Kumaranalloor','123','station'),(59,'Zeon Charging Station Kottayam','123','station'),(60,'Tata Power Charging Station Kottayam','123','station'),(61,'Electric Vehicle Charging Station Muppaikad','123','station'),(62,'Electric Vehicle Charging Station Kaduvakulam','123','station'),(63,'KSEB Charging Station Kanjikuzhi','123','station'),(64,'GO EC Charging Station Ponkunnam','123','station'),(65,'KSEB Charging Station Thiruvalla','123','station'),(66,'KSEB Charging Station Ramapuram','123','station'),(67,'KSEB Charging Station Pala','123','station'),(68,'KSEB Charging Station Erattupetta','123','station'),(69,'Zeon Charging Station Mundakkayam','123','station'),(70,'KSEB Charging Station Muvattupuzha','123','station'),(71,'KSEB Charging Station Perumbavoor','123','station'),(72,'GOEC Charging Station Perumbavoor','123','station'),(73,'felix122333','123','user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (29,'John Doe','johndoe@example.com'),(30,'Jane Smith','janesmith@example.com'),(31,'Bob Johnson','bjohnson@example.com'),(32,'Sara Lee','saralee@example.com'),(33,'Maxwell Smart','msmart@example.com'),(34,'Lucy Liu','lucyliu@example.com'),(35,'Jack Black','jblack@example.com'),(36,'Amy Adams','aadams@example.com'),(37,'Tom Hanks','thanks@example.com'),(38,'Emma Watson','ewatson@example.com'),(39,'felix122333','a@a.a'),(40,'abc','test@gmail.com'),(41,'aashinappi','appi@gmail.com'),(42,'felix122333','1b3def@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dashboard`
--

DROP TABLE IF EXISTS `user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dashboard` (
  `booking_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `station` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dashboard`
--

LOCK TABLES `user_dashboard` WRITE;
/*!40000 ALTER TABLE `user_dashboard` DISABLE KEYS */;
INSERT INTO `user_dashboard` VALUES ('2023-04-27','10:00:00','New York','Station A'),('2023-04-27','14:30:00','San Francisco','Station B'),('2023-04-28','09:15:00','London','Station C'),('2023-04-28','16:00:00','Paris','Station D'),('2023-04-29','11:45:00','Sydney','Station E'),('2023-04-29','15:30:00','Tokyo','Station F'),('2023-04-30','13:00:00','Dubai','Station G'),('2023-04-30','18:45:00','Mumbai','Station H'),('2023-05-01','10:30:00','Berlin','Station I'),('2023-05-01','14:15:00','Toronto','Station J'),('2023-05-02','12:00:00','Hong Kong','Station K'),('2023-05-02','17:30:00','Chicago','Station L'),('2023-05-03','08:45:00','Barcelona','Station M'),('2023-05-03','13:15:00','Melbourne','Station N'),('2023-05-04','11:00:00','Seoul','Station O');
/*!40000 ALTER TABLE `user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'admin','admin','admin@example.com','+1-555-555-5555','123 Main St, Anytown, USA'),(2,'Jane','Smith','janesmith@example.com','+1-555-555-5555','456 Elm St, Anytown, USA'),(3,'Bob','Johnson','bobjohnson@example.com','+1-555-555-5555','789 Oak St, Anytown, USA'),(4,'Alice','Williams','alicewilliams@example.com','+1-555-555-5555','321 Pine St, Anytown, USA'),(5,'David','Brown','davidbrown@example.com','+1-555-555-5555','654 Cedar St, Anytown, USA'),(6,'Sarah','Davis','sarahdavis@example.com','+1-555-555-5555','987 Maple St, Anytown, USA'),(7,'Michael','Wilson','michaelwilson@example.com','+1-555-555-5555','456 Birch St, Anytown, USA'),(8,'Amy','Lee','amylee@example.com','+1-555-555-5555','789 Walnut St, Anytown, USA'),(9,'Kevin','Jones','kevinjones@example.com','+1-555-555-5555','123 Oak St, Anytown, USA'),(10,'Emily','Taylor','emilytaylor@example.com','+1-555-555-5555','456 Maple St, Anytown, USA');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-05 21:41:36
