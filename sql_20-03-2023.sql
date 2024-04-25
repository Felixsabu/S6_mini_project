






















/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - itec_rainfall
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


CREATE DATABASE /*!32312 IF NOT EXISTS*/`EV_DB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `EV_DB`;



-- *Table structure for table `user_profile` 

DROP TABLE IF EXISTS `user_profile`;

CREATE TABLE user_profile (
  user_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(20),
  address VARCHAR(200)
);

 /*Data for the table `user_profile` */

INSERT INTO user_profile (user_id, first_name, last_name, email, phone_number, address) VALUES
(1, 'admin', 'admin', 'admin@example.com', '+1-555-555-5555', '123 Main St, Anytown, USA'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '+1-555-555-5555', '456 Elm St, Anytown, USA'),
(3, 'Bob', 'Johnson', 'bobjohnson@example.com', '+1-555-555-5555', '789 Oak St, Anytown, USA'),
(4, 'Alice', 'Williams', 'alicewilliams@example.com', '+1-555-555-5555', '321 Pine St, Anytown, USA'),
(5, 'David', 'Brown', 'davidbrown@example.com', '+1-555-555-5555', '654 Cedar St, Anytown, USA'),
(6, 'Sarah', 'Davis', 'sarahdavis@example.com', '+1-555-555-5555', '987 Maple St, Anytown, USA'),
(7, 'Michael', 'Wilson', 'michaelwilson@example.com', '+1-555-555-5555', '456 Birch St, Anytown, USA'),
(8, 'Amy', 'Lee', 'amylee@example.com', '+1-555-555-5555', '789 Walnut St, Anytown, USA'),
(9, 'Kevin', 'Jones', 'kevinjones@example.com', '+1-555-555-5555', '123 Oak St, Anytown, USA'),
(10, 'Emily', 'Taylor', 'emilytaylor@example.com', '+1-555-555-5555', '456 Maple St, Anytown, USA');

-- Table structure for table `charging_station_list`

DROP TABLE IF EXISTS `admin_charging_station_list`;

CREATE TABLE charging_station_list (
id INT PRIMARY KEY,
station_name VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
city CHAR(100) NOT NULL,
charger_type CHAR(20) NOT NULL,
available_ports INT NOT NULL,
status ENUM('Active', 'Under Maintenance', 'Out of Service') NOT NULL
);


-- Data for table `charging_station_list`

INSERT INTO admin_charging_station_list (id, station_name, address, city, charger_type, available_ports, status)
VALUES
(1, 'ABC Charging Station', '123 Main St', 'Thiruvananthapuram', 'AC Level 1 Charging', 4, 'Active'),
(2, 'XYZ Charging Station', '456 Elm St', 'Kollam', 'AC Level 2 Charging', 2, 'Under Maintenance'),
(3, '123 Charging Station', '789 Oak St', 'Pathanamthitta', 'DC Fast Charging', 6, 'Active'),
(4, '456 Charging Station', '1011 Pine St', 'Alappuzha', 'AC Level 1 Charging', 3, 'Out of Service'),
(5, '789 Charging Station', '1213 Maple St', 'Kottayam', 'AC Level 2 Charging', 1, 'Active'),
(6, 'DEF Charging Station', '1415 Cedar St', 'Idukki', 'DC Fast Charging', 5, 'Active'),
(7, 'GHI Charging Station', '1617 Birch St', 'Ernakulam', 'AC Level 1 Charging', 2, 'Under Maintenance'),
(8, 'JKL Charging Station', '1819 Spruce St', 'Thrissur', 'AC Level 2 Charging', 4, 'Active'),
(9, 'MNO Charging Station', '2021 Walnut St', 'Palakkad', 'DC Fast Charging', 3, 'Out of Service'),
(10, 'PQR Charging Station', '2223 Pineapple St', 'Malappuram', 'AC Level 1 Charging', 1, 'Active'),
(11, 'ABC Charging Station', '123 Main St', 'Kozhikode', 'AC Level 1 Charging', 4, 'Active'),
(12, 'XYZ Charging Station', '456 Elm St', 'Wayanad', 'AC Level 2 Charging', 2, 'Under Maintenance'),
(13, '123 Charging Station', '789 Oak St', 'Kannur', 'DC Fast Charging', 6, 'Active'),
(14, '456 Charging Station', '1011 Pine St', 'Kasaragod', 'AC Level 1 Charging', 3, 'Out of Service'),
(15, '789 Charging Station', '1213 Maple St', 'Thiruvananthapuram', 'AC Level 2 Charging', 1, 'Active'),
(16, 'DEF Charging Station', '1415 Cedar St', 'Kollam', 'DC Fast Charging', 5, 'Active'),
(17, 'GHI Charging Station', '1617 Birch St', 'Pathanamthitta', 'AC Level 1 Charging', 2, 'Under Maintenance'),
(18, 'JKL Charging Station', '1819 Spruce St', 'Alappuzha', 'AC Level 2 Charging', 4, 'Active'),
(19, 'MNO Charging Station', '2021 Walnut St', 'Kottayam', 'DC Fast Charging', 3, 'Out of Service'),
(20, 'PQR Charging Station', '2223 Pineapple St', 'Idukki', 'AC Level 1 Charging', 1, 'Active'),
(21, 'ABC Charging Station', '123 Main St', 'Ernakulam', 'AC Level 1 Charging', 4, 'Active');
(51, 'KLM Charging Station', '3035 Laurel St', 'Thrissur', 'AC Level 2 Charging', 3, 'Active'),
(52, 'STU Charging Station', '3237 Ash St', 'Kollam', 'DC Fast Charging', 2, 'Under Maintenance'),
(53, 'VWX Charging Station', '3439 Cedar St', 'Kottayam', 'AC Level 1 Charging', 4, 'Active'),
(54, 'YZA Charging Station', '3641 Elm St', 'Ernakulam', 'AC Level 2 Charging', 5, 'Active'),
(55, 'BCD Charging Station', '3843 Birch St', 'Thiruvananthapuram', 'DC Fast Charging', 2, 'Out of Service'),
(56, 'EFG Charging Station', '4045 Oak St', 'Alappuzha', 'AC Level 1 Charging', 1, 'Active'),
(57, 'HIJ Charging Station', '4247 Pine St', 'Palakkad', 'AC Level 2 Charging', 3, 'Under Maintenance'),
(58, 'KLM Charging Station', '4449 Walnut St', 'Malappuram', 'DC Fast Charging', 6, 'Active'),
(59, 'NOP Charging Station', '4651 Maple St', 'Kannur', 'AC Level 1 Charging', 4, 'Active'),
(60, 'QRS Charging Station', '4853 Pineapple St', 'Kozhikode', 'AC Level 2 Charging', 2, 'Under Maintenance'),
(61, 'TUV Charging Station', '5055 Oakwood St', 'Thrissur', 'DC Fast Charging', 3, 'Active'),
(62, 'WXYZ Charging Station', '5257 Chestnut St', 'Kollam', 'AC Level 1 Charging', 5, 'Out of Service'),
(63, 'ABC2 Charging Station', '5459 Walnut St', 'Kottayam', 'AC Level 2 Charging', 1, 'Active'),
(64, 'DEF2 Charging Station', '5661 Cedar St', 'Ernakulam', 'DC Fast Charging', 4, 'Active'),
(65, 'GHI2 Charging Station', '5863 Elm St', 'Thiruvananthapuram', 'AC Level 1 Charging', 2, 'Under Maintenance'),
(66, 'JKL2 Charging Station', '6065 Pine St', 'Alappuzha', 'AC Level 2 Charging', 3, 'Active'),
(67, 'MNO2 Charging Station', '6267 Oak St', 'Palakkad', 'DC Fast Charging', 6, 'Out of Service'),
(68, 'PQR2 Charging Station', '6469 Pineapple St', 'Malappuram', 'AC Level 1 Charging', 1, 'Active'),
(69, 'STU2 Charging Station', '6671 Walnut St', 'Kannur', 'AC Level 2 Charging', 4, 'Under Maintenance'),
(70, 'VWX2 Charging Station', '6873 Cedar St', 'Kozhikode', 'DC Fast Charging', 5, 'Active'),
(71, 'YZA2 Charging Station', '7075 Ash St', 'Thrissur', 'AC Level 1 Charging', 3, 'Active');

INSERT INTO admin_charging_station_list (id, station_name, address, city, charger_type, available_ports, status,latitude,longitude)
VALUES
(101, 'EVOK Charging Station Pariyaram', 'SH21, Athirappilly, 680724', 'Athirappilly', 'AC Level 1 Charging', 4, 'Active',10.290498325721375, 76.51958865300352,'yes'),
(102, 'Zeon Charging Station Karukutty', '69FG+56H Annapoorna Cafe Kerala 683572', 'Karukutty', 'AC Level 2 Charging', 2, 'Under Maintenance',10.22294715569544, 76.37587705713896,'yes'),
(103, 'Tata Power Charging Station Aluva', 'Building No 18/615/1, Kerala 683101', 'Aluva', 'DC Fast Charging', 6, 'Active',10.108281958158196, 76.34941460823403,'yes'),
(104, 'EVOK Charging Station Aluva', '38JR+Q22, Ambattukavu, Choornikkara, Aluva, Kerala 683501', 'Aluva', 'AC Level 1 Charging', 3, 'Out of Service',10.084943311520357, 76.34075297803813,'yes'),
(105, 'EVOK Charging Station Kakkanad', '28RQ+5CC, Karippassery, North Kalamassery, Kerala 682021', 'Kakkanad', 'AC Level 2 Charging', 1, 'Active',10.0435979895523, 76.3383314605623,'yes'),
(106, 'Electric Vehicle Charging Station Muttom', 'Muttom Metro Station, Choornikkara, Muttom, Kerala 683501', 'Muttom', 'DC Fast Charging', 5, 'Active',10.07568749183402, 76.33393105098415,'yes'),
(107, 'Electric Vehicle Charging Station Edappally', '28G5+RV7, near to Lulu Hyper Market, Edappally, Ernakulam, Kerala 682024', 'Edappally', 'AC Level 1 Charging', 2, 'Under Maintenance',10.03245683941473, 76.30999830080177,'no'),
(108, 'Zeon Charging Station Edappally', 'Gokul Oottupura Veg Restaurant, NH66, Padivattom, Edappally, Ernakulam, Kerala 682024', 'Edappally', 'AC Level 2 Charging', 4, 'Active',10.015763868129744, 76.31317308055878,'no'),
(109, 'KSEB Charging Station Palarivattom', '2843+3XX, Palarivattom, Kochi, Ernakulam, Kerala 682017', 'Palarivattom', 'DC Fast Charging', 3, 'Out of Service',10.012340866627099, 76.302453704504,'yes'),
(110, 'EESL Charging Station Menaka', 'X7GG+XX7, Menaka, Marine Drive, Kochi, Ernakulam, Kerala 682031', 'Marine Drive', 'AC Level 1 Charging', 1, 'Active',9.98552467451153, 76.27674578750958,'yes'),
(111, 'Electric Vehicle Charging Station Panampilly Nagar', 'HB 39, South Bridge Ave Kerala 682036', 'Panampilly Nagar', 'AC Level 1 Charging', 4, 'Active',9.972548985693248, 76.29301070299557,'yes'),
(112, 'EVOK Charging Station Thammanam', 'X8M8+XFR geethanjali, Geethanjali Rd, Kerala 682032', 'Thammanam', 'AC Level 2 Charging', 2, 'Under Maintenance',9.989708906939256, 76.31783722948006,'yes'),
(113, 'PulsePower Charging Station Thiruvaniyoor', 'Kochi - Madurai - Dhanushkodi Rd, Mamala, Thiruvaniyoor, Kerala 682305', 'Thiruvaniyoor', 'DC Fast Charging', 6, 'Active',9.952587817450622, 76.3848358246848,'yes'),
(114, 'Electric Vehicle Charging Station Thiruvankulam', 'AMJ Arcade, Kerala 682312', 'Thripppunithura', 'AC Level 1 Charging', 3, 'Out of Service',9.934608998438321, 76.38823589540587,'yes'),
(115, 'Electric Vehicle Charging Station Kizhakkambalam', '2CJ4+VXV, Kizhakkambalam, Kerala 683562', 'Kizhakkambalam', 'AC Level 2 Charging', 1, 'Active',10.040042265321604, 76.40990831101807,'no'),
(116, 'KSEB Charging Station Pezhakkappilly', 'SH 1, Pezhakkappilly, Kerala 686661', 'Pezhakkappilly', 'DC Fast Charging', 5, 'Active',10.019835479880864, 76.56391727403943,'no'),
(117, 'EVOK Charging Station Nellikkuzhi', '3J93+W4F, Verpati, Kerala 686691', 'Nellikkuzhi', 'AC Level 1 Charging', 2, 'Under Maintenance',10.074406875301424, 76.6031952689804,'no'),
(118, 'KSEB Charging Station Kothamangalam', 'Sub Power Station, Kothamangalam, Kerala 686691', 'Kothamangalam', 'AC Level 2 Charging', 4, 'Active',10.059026180283585, 76.6164131942485,'yes'),
(119, 'Electric Vehicle Charging Station Vannapuram', 'XQQR+WRP, Vannappuram, Kerala 685607', 'Vannapuram', 'DC Fast Charging', 3, 'Out of Service',10.000131545896231, 76.79180012397113,'yes'),
(120, 'KSEB Charging Station Vazhithala', 'VJMX+X6W, Vazhithala, Manakkad, Kerala 685583', 'Vazhithala', 'AC Level 1 Charging', 1, 'Active',9.886439907788942, 76.64998883472381,'yes'),
(121, 'TATA Charging Station Thodupuzha', 'VPR4+QQC J K Buildings, Thodupuzha, Kerala 685584', 'Thodupuzha', 'AC Level 1 Charging', 4, 'Active',9.900645026256841, 76.70698041340644,'yes'),
(122, 'KSEB Charging Station Thodupuzha', 'VPR5+R6C, Thodupuzha, Kerala 685608', 'Thodupuzha', 'AC Level 2 Charging', 3, 'Active',9.89285818173515, 76.70825350365425,'yes'),
(123, 'Zeon Charging Station Thodupuzha', 'Joance Regency, Kerala 685608', 'Thodupuzha', 'DC Fast Charging', 2, 'Under Maintenance',9.895196156313608, 76.71607536136626,'no'),
(124, 'Electric Vehicle Charging Station Idukki', 'RXXH+P37, Idukki Twp, Kerala 685602', 'Idukki', 'AC Level 1 Charging', 4, 'Active',9.866758886077996, 76.97609562060475,'no'),
(125, 'GO EC Charging Station Neendoor', 'Kalladanthiyil Building, Kerala 686601', 'Neendoor', 'AC Level 2 Charging', 5, 'Active',9.710833691105341, 76.49177228675914,'yes'),
(126, 'KSEB Charging Station Thellakom', 'JGXX+57P, Thellakom, Kerala 686630', 'Thellakom', 'DC Fast Charging', 2, 'Out of Service',9.669837925262199, 76.54140656551809,'no'),
(127, 'KSEB Charging Station Perumbaikad', 'JGMF+4Q2, Medical College Rd, Kerala 686008', 'Perumbaikod', 'AC Level 1 Charging', 1, 'Active',9.651845114950948, 76.52750054843807,'no'),
(128, 'KSEB Charging Station Thiruvanchoor', 'JH5F+FQP, Naalumani Kaattu, Kerala 686019', 'Thiruvanchoor', 'AC Level 2 Charging', 3, 'Under Maintenance',9.616139929453443, 76.58053232572766,'yes'),
(129, 'EVOK Charging Station Kumaranalloor', 'JG2J+HQG, Kumaranalloor, Kottayam, Kerala 686016', 'Kumaranalloor', 'DC Fast Charging', 6, 'Active',9.608752022862033, 76.53162991586508,'no'),
(130, 'Zeon Charging Station Kottayam', 'Hotel Aida, Aida Junction, SH 1, Kodimatha, Kottayam, Kerala 686001', 'Kottayam', 'AC Level 1 Charging', 4, 'Active',9.592031428401, 76.517432442034,'yes'),
(131, 'Tata Power Charging Station Kottayam', 'HGF9+GMR, Kollam - Theni Hwy, Kodimatha, Kottayam, Kerala 686004', 'Kottayam', 'AC Level 2 Charging', 2, 'Under Maintenance',9.573547893564315, 76.51950193217004,'yes'),
(132, 'Electric Vehicle Charging Station Muppaikad', '287C, opposite Malayala Manorama, Kodimatha, Kottayam, Muppaikad, Kerala 686013', 'Muppaikad', 'DC Fast Charging', 3, 'Active',9.5692338759408, 76.5199670912158,'yes'),
(133, 'Electric Vehicle Charging Station Kaduvakulam', 'HG3M+W9M, Kerala 686004', 'Kollam', 'AC Level 1 Charging', 5, 'Out of Service',9.5562119809949, 76.53335020527894,'yes'),
(134, 'KSEB Charging Station Kanjikuzhi', 'HGPV+CRR, Puthuppally Rd, Kanjikuzhi, Kottayam, Kerala 686002', 'Kanjikuzhi', 'AC Level 2 Charging', 1, 'Active',9.591017511278965, 76.54288828883404,'no'),
(135, 'GO EC Charging Station Ponkunnam', 'HP8R+HJH, Ponkunnam, Kerala 686506', 'Ponkunnam', 'DC Fast Charging', 4, 'Active',9.574521983076977, 76.73940927984054,'no'),
(136, 'KSEB Charging Station Thiruvalla', '9HPM+2PP, Thiruvalla, Kerala 689105', 'Thiruvalla', 'AC Level 1 Charging', 2, 'Under Maintenance',9.406726160930615, 76.59262169757012,'yes'),
(137, 'KSEB Charging Station Ramapuram', 'QMW7+V88, Pala Ramapuram Rd, Ramapuram, Kerala 686576', 'Pala', 'AC Level 2 Charging', 3, 'Active',9.808943999253382, 76.67276715478164,'yes'),
(138, 'KSEB Charging Station Pala', 'PM5G+P9V, Pala Main Rd, Kottaramattom, Pala, Kerala 686575', 'Pala', 'DC Fast Charging', 6, 'Out of Service',9.725034060548715, 76.68306683680875,'yes'),
(139, 'KSEB Charging Station Erattupetta', 'MQPH+3HV, Aruvithura Crossway Rd, Aruvithura, Erattupetta, Kerala 686122', 'Erattupeta', 'AC Level 1 Charging', 1, 'Active',9.691659055501521, 76.78059920310864,'no'),
(140, 'Zeon Charging Station Mundakkayam', 'RD Cinemas, Kerala 686513', 'Mundakkayam', 'AC Level 2 Charging', 4, 'Under Maintenance',9.551683619251584, 76.8786796410133,'yes'),
(141, 'KSEB Charging Station Muvattupuzha', 'Bus Stand, 130, MC Rd, Junction, Muvattupuzha, Kerala 686673', 'Muvattupuzha', 'DC Fast Charging', 5, 'Active',9.98307328127957, 76.57910715694901,'no'),
(142, 'KSEB Charging Station Perumbavoor', '4F6H+QJ5, M C, SH 1, Kerala 683542', 'Perumbavoor', 'AC Level 1 Charging', 3, 'Active',10.113200540296589, 76.48021718230376,'yes'),
(143, 'GOEC Charging Station Perumbavoor', 'P.O, Mudickal, Perumbavoor, Kerala 683542', 'Perumbavoor', 'AC Level 1 Charging', 3, 'Active',10.127765033102104, 76.44657888089085,'yes');




-- Table structure for table `login`

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` ENUM('admin', 'user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

INSERT INTO `login` (`username`, `password`, `usertype`) VALUES
('admin', '123', 'admin'),
('user2', '123', 'user'),
('johnsmith', 'qwertyuiop', 'user'),
('johndoe', 'asdfghjkl', 'user'),
('janedoe', 'zxcvbnm', 'user'),
('admin', 'adminpass', 'user'),
('testuser', 'testpass', 'user'),
('guest', 'guestpass', 'user'),
('user3', 'pass789', 'user'),
('user4', 'password1234', 'user');

INSERT INTO login (username, password, usertype) VALUES
('KSEB Charging Station Pezhakkappilly','123','station'),
('EVOK Charging Station Nellikkuzhi','123','station'),
('KSEB Charging Station Kothamangalam','123','station'),
('Electric Vehicle Charging Station Vannapuram','123','station'),
('KSEB Charging Station Vazhithala','123','station'),
('TATA Charging Station Thodupuzha','123','station'),
('KSEB Charging Station Thodupuzha','123','station'),
('Zeon Charging Station Thodupuzha','123','station'),
('Electric Vehicle Charging Station Idukki','123','station'),
('GO EC Charging Station Neendoor','123','station'),
('KSEB Charging Station Thellakom','123','station'),
('KSEB Charging Station Perumbaikad','123','station'),
('KSEB Charging Station Thiruvanchoor','123','station'),
('EVOK Charging Station Kumaranalloor','123','station'),
('Zeon Charging Station Kottayam','123','station'),
('Tata Power Charging Station Kottayam','123','station'),
('Electric Vehicle Charging Station Muppaikad','123','station'),
('Electric Vehicle Charging Station Kaduvakulam','123','station'),
('KSEB Charging Station Kanjikuzhi','123','station'),
('GO EC Charging Station Ponkunnam','123','station'),
('KSEB Charging Station Thiruvalla','123','station'),
('KSEB Charging Station Ramapuram','123','station'),
('KSEB Charging Station Pala','123','station'),
('KSEB Charging Station Erattupetta','123','station'),
('Zeon Charging Station Mundakkayam','123','station'),
('KSEB Charging Station Muvattupuzha','123','station'),
('KSEB Charging Station Perumbavoor','123','station'),
('GOEC Charging Station Perumbavoor','123','station');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

INSERT INTO `user` (`name`, `email`) VALUES
  ('John Doe', 'johndoe@example.com'),
  ('Jane Smith', 'janesmith@example.com'),
  ('Bob Johnson', 'bjohnson@example.com'),
  ('Sara Lee', 'saralee@example.com'),
  ('Maxwell Smart', 'msmart@example.com'),
  ('Lucy Liu', 'lucyliu@example.com'),
  ('Jack Black', 'jblack@example.com'),
  ('Amy Adams', 'aadams@example.com'),
  ('Tom Hanks', 'thanks@example.com'),
  ('Emma Watson', 'ewatson@example.com');

  

/*Table structure for table `charging_station_booking` */


CREATE TABLE charging_station_booking (
id INT PRIMARY KEY,
charging_station_id INT NOT NULL,
user_id INT NOT NULL,
booking_start_time DATETIME NOT NULL,
booking_end_time DATETIME NOT NULL,
status ENUM('Active', 'Cancelled', 'Completed') NOT NULL
);
-- FOREIGN KEY (user_id) REFERENCES user_list(id)
-- FOREIGN KEY (charging_station_id) REFERENCES charging_station_list(id),



/*Data for the table `charging_station_booking` */

INSERT INTO charging_station_booking (id, charging_station_id, user_id, booking_start_time, booking_end_time, status)
VALUES
(1, 1, 1, '2022-01-01 10:00:00', '2022-01-01 12:00:00', 'Completed'),
(2, 2, 2, '2022-01-02 13:00:00', '2022-01-02 15:00:00', 'Cancelled'),
(3, 3, 3, '2022-01-03 16:00:00', '2022-01-03 18:00:00', 'Active'),
(4, 4, 4, '2022-01-04 19:00:00', '2022-01-04 21:00:00', 'Active'),
(5, 5, 5, '2022-01-05 22:00:00', '2022-01-05 23:00:00', 'Completed'),
(6, 6, 6, '2022-01-06 10:00:00', '2022-01-06 11:00:00', 'Completed'),
(7, 7, 7, '2022-01-07 12:00:00', '2022-01-07 13:00:00', 'Active'),
(8, 8, 8, '2022-01-08 14:00:00', '2022-01-08 16:00:00', 'Cancelled'),
(9, 9, 9, '2022-01-09 17:00:00', '2022-01-09 19:00:00', 'Active'),
(10, 10, 10, '2022-01-10 20:00:00', '2022-01-10 22:00:00', 'Completed');



/*Table structure for table `user_dashboard` */


CREATE TABLE user_dashboard (
  booking_date DATE,
  time TIME,
  city VARCHAR(50),
  station VARCHAR(50)
);  

/*Data for the table `user_dashboard` */



INSERT INTO user_dashboard (booking_date, time, city, station)
VALUES
('2023-04-27', '10:00:00', 'New York', 'Station A'),
('2023-04-27', '14:30:00', 'San Francisco', 'Station B'),
('2023-04-28', '09:15:00', 'London', 'Station C'),
('2023-04-28', '16:00:00', 'Paris', 'Station D'),
('2023-04-29', '11:45:00', 'Sydney', 'Station E'),
('2023-04-29', '15:30:00', 'Tokyo', 'Station F'),
('2023-04-30', '13:00:00', 'Dubai', 'Station G'),
('2023-04-30', '18:45:00', 'Mumbai', 'Station H'),
('2023-05-01', '10:30:00', 'Berlin', 'Station I'),
('2023-05-01', '14:15:00', 'Toronto', 'Station J'),
('2023-05-02', '12:00:00', 'Hong Kong', 'Station K'),
('2023-05-02', '17:30:00', 'Chicago', 'Station L'),
('2023-05-03', '08:45:00', 'Barcelona', 'Station M'),
('2023-05-03', '13:15:00', 'Melbourne', 'Station N'),
('2023-05-04', '11:00:00', 'Seoul', 'Station O');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;


/*Table for bookings*/

CREATE TABLE bookings (
booking_id INT AUTO_INCREMENT PRIMARY KEY,
booking_date DATE,
time_from TIME,
time_to TIME,
city VARCHAR(50),
station_name VARCHAR(50),
available_ports INT,
created_at DATETIME,
login_id INT 
);

insert into bookings values("19/09/02","2","3","sf","sfsd",3,"19/09/02",2)