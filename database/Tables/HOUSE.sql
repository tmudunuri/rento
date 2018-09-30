-- Generation time: Sat, 29 Sep 2018 18:47:49 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `HOUSE`;
CREATE TABLE HOUSE (
  HID int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  ROOMS tinyint(1) unsigned NOT NULL,
  AREA smallint(5) unsigned DEFAULT NULL,
  FLOOR tinyint(2) DEFAULT '0',
  TYPE enum('Apartment', 'Bungalow', 'Cottage', 'Duplex', 'Farmhouse') DEFAULT NULL,
  PARKING boolean DEFAULT NULL,
  FURNISHED boolean DEFAULT NULL,
  MAINTENANCE mediumint(4) unsigned DEFAULT NULL,
  PID int(10) unsigned,
  FOREIGN KEY(PID) REFERENCES PROPERTY(PID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `HOUSE` (HID,ROOMS,AREA,FLOOR,TYPE,PARKING,FURNISHED,MAINTENANCE,PID)
VALUES ('31','6','3609','8','Cottage',TRUE,TRUE,'2173','1'),
('29','3','4714','6','Apartment',TRUE,FALSE,'1125','2'),
('7','1','1479','5','Cottage',FALSE,FALSE,'7207','3'),
('34','5','2424','2','Cottage',TRUE,TRUE,'4366','4'),
('2','5','1962','3','Cottage',FALSE,FALSE,'2035','5'),
('5','3','1265','4','Bungalow',FALSE,TRUE,'7024','6'),
('18','4','4571','9','Bungalow',TRUE,TRUE,'4542','7'),
('28','5','1335','10','Bungalow',FALSE,TRUE,'8482','8'),
('32','2','3465','3','Bungalow',FALSE,FALSE,'8093','9'),
('24','4','2123','10','Bungalow',TRUE,FALSE,'1521','10'),
('16','3','4559','8','Cottage',TRUE,FALSE,'2374','11'),
('14','3','3327','8','Bungalow',TRUE,FALSE,'4690','12'),
('26','1','2395','8','Farmhouse',TRUE,TRUE,'7712','13'),
('3','3','2751','6','Farmhouse',TRUE,FALSE,'1812','14'),
('1','2','4509','1','Apartment',TRUE,FALSE,'9143','15'),
('4','3','4829','1','Bungalow',TRUE,TRUE,'5487','16'),
('17','2','1762','1','Cottage',FALSE,TRUE,'3499','17'),
('30','1','2183','4','Cottage',FALSE,TRUE,'7597','18'),
('40','2','4052','8','Farmhouse',FALSE,TRUE,'6232','19'),
('10','6','2927','4','Cottage',TRUE,FALSE,'8012','20'),
('21','2','3517','1','Duplex',TRUE,FALSE,'8803','21'),
('8','3','3514','1','Cottage',TRUE,TRUE,'6916','22'),
('6','1','3385','7','Bungalow',TRUE,FALSE,'3120','23'),
('27','3','2152','6','Cottage',TRUE,FALSE,'4730','24'),
('25','3','4464','2','Bungalow',TRUE,TRUE,'9235','25'),
('35','5','3552','3','Duplex',TRUE,TRUE,'4734','26'),
('36','2','2429','7','Duplex',TRUE,FALSE,'5356','27'),
('23','3','3013','9','Bungalow',TRUE,TRUE,'8310','28'),
('38','2','2306','0','Duplex',FALSE,FALSE,'1422','29'),
('39','4','2368','9','Apartment',FALSE,FALSE,'6345','30'),
('15','5','2879','8','Duplex',TRUE,FALSE,'2874','31'),
('11','6','3937','6','Duplex',FALSE,TRUE,'5243','32'),
('19','6','4241','0','Farmhouse',FALSE,TRUE,'2557','33'),
('12','3','2670','0','Bungalow',FALSE,FALSE,'5816','34'),
('22','2','4255','10','Farmhouse',FALSE,TRUE,'4506','35'),
('20','2','3818','2','Apartment',FALSE,FALSE,'5689','36'),
('33','3','1726','2','Apartment',TRUE,FALSE,'4604','37'),
('37','3','2526','9','Duplex',TRUE,FALSE,'6219','38'),
('13','1','4436','0','Apartment',TRUE,TRUE,'7809','39'),
('9','4','2030','0','Cottage',FALSE,TRUE,'2024','40');




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

