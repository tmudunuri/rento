-- Generation time: Sat, 29 Sep 2018 18:44:27 +0000
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

DROP TABLE IF EXISTS `PROPERTY`;
CREATE TABLE PROPERTY (
  PID int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  NAME varchar(20),
  CAPACITY int(4) unsigned NOT NULL,
  ADDRESS varchar(200) DEFAULT NULL,
  FLOORS tinyint(1) unsigned DEFAULT 1,
  TYPE enum('Apartment', 'Bungalow', 'Cottage', 'Duplex', 'Farmhouse') DEFAULT 'Apartment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PROPERTY` (PID,NAME,CAPACITY,ADDRESS,FLOORS,TYPE)
VALUES ('5','Jason Manor','7','88783 Aiyana View Suite 376\nSouth Jessyberg, MN 54246-9002','5','Farmhouse'),
('29','Palm Meadows','6','1383 Gusikowski Grove Apt. 802\nSchinnerstad, NH 41778-4758','9','Bungalow'),
('4','Anugraha Meadows','16','02036 Murray Forge\nKileyborough, NH 03679','4','Duplex'),
('17','Brooklyn Heights','6','4285 Marlee Alley\nSouth Kalishire, OH 34126-0906','10','Duplex'),
('40','Lake View','7','619 Coralie Lane Suite 757\nSouth Mellie, CT 43057-4673','5','Apartment'),
('21','American Heights','4','192 Meda Rapids\nWest Ledaville, OK 97217-0094','1','Bungalow'),
('19','Joe Farm','15','33129 Schneider Creek\nJacobsonhaven, IA 64199','1','Farmhouse'),
('2','Plantsville','15','9555 Cartwright Glens\nLilliemouth, MA 90536','4','Farmhouse'),
('13','Baskerhut','2','601 Kara Pike\nLake Aryannaview, LA 84685-7248','5','Farmhouse'),
('14','Jimmy Mansion','5','68040 Fisher Trafficway Suite 301\nNew Augustine, AR 32723-1507','8','Cottage'),
('11','Aparna Meadows','4','85444 Ezekiel Valleys Apt. 786\nEast Chadport, DC 74592','3','Duplex'),
('37','Shai Heights','4','2041 Jacobson Stream Suite 981\nLavonneport, NM 33583-8680','6','Farmhouse'),
('32','Sharma farm','19','59566 Funk Ridges\nSouth Melbaport, WV 37131-1835','10','Farmhouse'),
('16','Simran Household','7','38185 Annabel Keys\nSkileschester, TN 43807-2595','3','Duplex'),
('23','Forlorn Cottages','4','643 Manley Hills\nSouth Winston, ND 88778','4','Cottage'),
('31','Swapna Manor','6','340 Harris Stravenue Suite 982\nLake Kassandra, NY 94816','5','Duplex'),
('3','James Hospitality','17','5894 Adelbert Squares\nPiercemouth, VA 57620-9880','3','Bungalow'),
('7','Varma Meadows','1','018 Goodwin Trail\nPort Vidal, CO 44517','5','Farmhouse'),
('8','Lake View','14','910 Rylee Branch Suite 368\nNorth Raquel, NJ 93574','5','Bungalow'),
('35','Dream View','16','27918 Mae Harbor\nWest Trinity, NH 25384','1','Duplex'),
('6','Venezia','7','69495 River Valleys\nWest Barneyport, WI 36438-9169','12','Bungalow'),
('1','Dominoes Residence','6','57712 Kassandra Loop\nKuphalton, LA 31207','11','Cottage'),
('30','Tsangpo View','20','40489 Jorge Via\nMonserratport, MT 38587','4','Duplex'),
('20','Amazon Heights','5','451 Sigmund Road Apt. 749\nLake Pascale, LA 00436','9','Cottage'),
('24','Lux Villa','14','168 Windler Meadows\nTheresiabury, VA 57365-2405','6','Farmhouse'),
('10','Mary Heights','16','2392 Nola Camp Apt. 624\nJalenshire, NH 08776','8','Apartment'),
('33','The Rock','6','28448 Bert Squares\nPort Kailee, RI 76224','7','Farmhouse'),
('12','The Shack','17','04835 Allie Course\nHarveyburgh, AK 99691-9442','4','Farmhouse'),
('26','Gardenia','9','25628 Thad Isle\nConsidineville, SC 30340','5','Cottage'),
('39','Manoj Estate','11','094 Dickens Throughway Apt. 692\nBirdieland, KS 77972-4048','2','Duplex'),
('38','Jim Farm','5','34290 Hunter Street\nVernonville, MN 77887','3','Bungalow'),
('18','Loyola Tower','11','6809 Nikolaus Cliff Apt. 031\nO\'Connelltown, AL 27000','10','Farmhouse'),
('34','Rahul Residence','20','9451 Merritt Pike\nMonahanville, MN 21590-8966','2','Duplex'),
('27','Prakash Manor','2','72759 Amos Skyway Apt. 828\nEast Gilesside, KS 30554-4933','4','Cottage'),
('22','Dove Meadows','19','2593 Marie Plains\nWillland, NJ 36794-8207','1','Farmhouse'),
('36','Ramesh Heghts','9','57296 Reinger Lodge\nPfannerstillberg, MI 61218-4252','2','Cottage'),
('15','Pune Residence','12','83799 Elinor Street Suite 249\nNew Marcellusstad, DC 26396','6','Bungalow'),
('9','Shae Bhavan','17','49588 Lenore Divide\nSouth Grant, WY 11746-8256','12','Bungalow'),
('28','Murthy Bhavan','1','6444 Autumn Mount\nPort Davionstad, WI 28792-8867','10','Farmhouse'),
('25','Saral Residence','10','561 Annie Ferry Suite 312\nRueckerport, DE 43188','7','Bungalow'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

