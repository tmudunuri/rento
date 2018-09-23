| TENANT | CREATE TABLE `TENANT` (
  `TID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AADHAR` bigint(12) unsigned NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MINIT` varchar(50) DEFAULT NULL,
  `NAME` varchar(150) GENERATED ALWAYS AS (concat_ws(' ',`FNAME`,`MINIT`,`LNAME`)) VIRTUAL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `GENDER` char(1) NOT NULL,
  `AGE` tinyint(2) DEFAULT NULL,
  `PHONE` bigint(10) unsigned NOT NULL,
  `BDATE` date DEFAULT NULL,
  `HID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`TID`),
  UNIQUE KEY `AADHAR` (`AADHAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |



| HOUSE | CREATE TABLE `HOUSE` (
  `HID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ROOMS` tinyint(1) unsigned NOT NULL,
  `AREA` smallint(5) unsigned DEFAULT NULL,
  `FLOOR` tinyint(2) DEFAULT '0',
  `TYPE` varchar(45) DEFAULT NULL,
  `PARKING` tinyint(4) DEFAULT NULL,
  `FURNISHED` tinyint(4) DEFAULT NULL,
  `MAINTENANCE` mediumint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |



| RENTS | CREATE TABLE `RENTS` (
  `ADVANCE` int(10) unsigned NOT NULL,
  `RENT` int(10) unsigned NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |

