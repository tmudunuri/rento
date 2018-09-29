-- Generation time: Sat, 29 Sep 2018 18:41:13 +0000
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

DROP TABLE IF EXISTS `CO_TENANT`;
CREATE TABLE CO_TENANT (
  TID int(10) unsigned NOT NULL,
  NAME VARCHAR(100) NOT NULL,
  GENDER enum('M','F') NOT NULL,
  BDATE date DEFAULT NULL,
  AGE tinyint(2) GENERATED ALWAYS AS ((2018 - year(BDATE))) VIRTUAL,
  RELATIONSHIP enum('Parent', 'Spouse', 'Child', 'Cousin', 'Friend', 'Grandparent', 'Grandchild', 'Other') DEFAULT 'Other',
  PRIMARY KEY(NAME,RELATIONSHIP),
  FOREIGN KEY(TID) REFERENCES TENANT(TID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CO_TENANT` (TID,NAME,GENDER,BDATE,RELATIONSHIP)
VALUES ('1','Cale Borer','M','2017-04-21','Spouse'),
('2','Prof. Tito Lindgren','M','2009-12-03','Child'),
('3','Alberta Hayes','M','1981-11-04','Parent'),
('4','Micaela Shanahan','F','1975-06-29','Spouse'),
('5','Marcellus Hodkiewicz','M','2009-07-06','Parent'),
('6','Prof. Reinhold Bauch','F','1992-11-14','Friend'),
('7','Dr. Kade Ullrich I','F','2015-06-13','Grandchild'),
('8','Simone Hessel DDS','M','2012-01-09','Friend'),
('9','Wilburn Corwin','M','2007-11-17','Grandparent'),
('10','Laisha Eichmann Jr.','F','1984-08-28','Grandparent'),
('11','Grady Bechtelar','M','1980-12-11','Friend'),
('12','Patrick Mayert','F','2014-08-16','Grandparent'),
('13','Etha Bosco','M','2013-02-03','Parent'),
('14','Mack Batz','M','1998-04-13','Spouse'),
('15','Maurine DuBuque','M','2011-09-16','Friend'),
('16','Nichole Crooks PhD','M','2005-03-30','Child'),
('17','Emily Miller','F','2015-04-28','Friend'),
('18','Katrine Jakubowski','F','1995-11-16','Cousin'),
('19','Leanne Huels','M','2017-03-27','Child'),
('20','Dr. Prince Smitham I','M','2016-11-16','Friend'),
('1','Reed Fadel','M','1973-02-09','Grandchild'),
('2','Dr. Holly Mayert DDS','F','1994-12-22','Friend'),
('3','Dalton Ledner','F','2007-11-16','Friend'),
('4','Kale Botsford','F','2000-12-28','Parent'),
('5','Idell Heathcote','M','1980-04-21','Child'),
('6','Deion Swaniawski PhD','M','1984-04-14','Grandparent'),
('7','Dr. Carroll Nicolas IV','F','2009-01-08','Cousin'),
('8','Jenifer Ziemann','M','2015-01-09','Friend'),
('9','Miss Dana Muller PhD','M','2016-05-12','Cousin'),
('10','Salvatore Rippin','M','1985-01-16','Parent'),
('11','Isabel Reynolds','F','1996-07-21','Grandparent'),
('12','Prof. Maximilian Doyle DVM','M','2008-07-16','Spouse'),
('13','Prof. Katrine Lesch','F','2015-07-13','Spouse'),
('14','Hillard Hessel V','F','2017-05-01','Parent'),
('15','Miss Kacie Feest','M','2018-09-10','Child'),
('16','Nichole Cummings IV','F','1985-06-02','Grandparent'),
('17','Lucinda Gusikowski IV','M','1986-12-15','Grandparent'),
('18','Maria Batz','M','2009-02-15','Grandchild'),
('19','Coralie Pollich','F','1981-07-13','Spouse'),
('20','Jonathan Nicolas I','M','1999-08-23','Friend'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

