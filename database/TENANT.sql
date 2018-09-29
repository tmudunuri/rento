-- Generation time: Sat, 29 Sep 2018 18:40:16 +0000
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

DROP TABLE IF EXISTS `TENANT`;
CREATE TABLE TENANT (
  TID int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  AADHAR bigint(12) unsigned NOT NULL UNIQUE,
  FNAME varchar(50) NOT NULL,
  LNAME varchar(50) NOT NULL,
  MINIT varchar(50) DEFAULT NULL,
  NAME varchar(150) GENERATED ALWAYS AS (concat_ws(' ',FNAME,MINIT,LNAME)) VIRTUAL,
  ADDRESS varchar(200) DEFAULT NULL,
  GENDER enum('M','F') NOT NULL,
  PHONE bigint(10) unsigned NOT NULL,
  BDATE date DEFAULT NULL,
  AGE tinyint(2) GENERATED ALWAYS AS ((2018 - year(BDATE))) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TENANT` (TID,AADHAR,FNAME,LNAME,MINIT,BDATE,ADDRESS,PHONE,GENDER)
VALUES ('4','58130092','Ronaldo','Dickens','MD','1974-08-11','850 Cristopher Glen Apt. 698\nSouth Earlenechester, FL 08745-7657','49968481','M'),
('11','78698409','Chyna','Feil','V','1979-07-14','76722 Jaeden Manors Apt. 460\nHuberthaven, NM 06196-4935','55024330','F'),
('17','66508773','Matteo','Dickinson','PhD','1999-03-25','40390 Keeling Lane\nWindlerberg, MT 81308-8807','22489293','F'),
('1','73418127','Dariana','Pacocha','II','2007-01-16','45147 Carleton Street Suite 547\nArneside, MT 67183-3976','536712','F'),
('18','88463118','Kristy','Treutel','MD','2000-08-26','31027 Lavina Mill Apt. 696\nWintheiserview, AZ 07756-5239','24108919','F'),
('19','539530009','Rahul','Ullrich','V','2002-05-10','42297 Wilfred Union\nDurwardmouth, WA 23675-6382','73133427','M'),
('16','22101819','Manuel','Williamson','I','2001-08-08','37754 Gutmann Lane\nSouth Shanaland, WV 47649','83636001','M'),
('3','57182029','Rossie','Schmeler','IV','1973-09-25','449 Kohler Avenue\nEast Gertrudeburgh, MS 07478','42795749','M'),
('9','75272633','Mylene','Sauer','MD','2005-03-08','76951 Pagac Club Apt. 071\nNew Perry, KS 68663','66255740','F'),
('10','67555245','Henry','Herzog','Jr.','2009-07-20','0288 Cassin Road\nNew Newtonshire, IA 25619-7684','70869471','F'),
('14','635180517','Myra','Keebler','DDS','2004-07-06','202 Eichmann Radial Suite 222\nNorth Pearlieland, NM 77242-2071','76429027','F'),
('15','52016573','Zion','O\'Kon','DDS','1999-01-01','0136 Karli Center Apt. 009\nRosenbaummouth, NE 89749-2967','17781566','M'),
('13','30380356','Emilie','Mayer','DDS','1991-06-07','4197 Boehm Burg Suite 256\nKassulketon, IL 47307','45174754','M'),
('7','89110517','Chaim','Macejkovic','Sr.','1996-01-15','225 Cassin Alley\nAdamburgh, IN 73805','89169232','F'),
('6','700711552','Shanon','DuBuque','Sr.','2018-02-02','246 Conroy Summit Apt. 738\nCreminville, OR 55518-7865','8658828','M'),
('12','102019811','Eloy','Corkery','III','1985-06-11','59730 Nicolas Square Apt. 136\nBerniershire, MA 49826','10418555','F'),
('8','79704734','Sienna','Watsica','IV','1999-03-30','26122 Koss Wall\nEast Sadye, RI 59357-6998','31308008','M'),
('5','97681659','Destini','Bahringer','DDS','1984-05-03','54887 Eduardo Inlet Suite 361\nEast Owen, DC 28517','61586414','F'),
('20','70803024','Erich','Jaskolski','I','1971-03-23','3805 Neal Mountains\nSouth Kelsieville, MN 50864','26429938','F'),
('2','19487120','Boris','Collins','PhD','1991-12-18','502 Vincenza Turnpike\nHoseatown, MA 80236','25608546','F'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

