TABLE TENANT {
  TID int(10) unsigned PK,
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
}



TABLE HOUSE {
  HID int(10) unsigned PK AUTO_INCREMENT,
  ROOMS tinyint(1) unsigned NOT NULL,
  AREA smallint(5) unsigned DEFAULT NULL,
  FLOOR tinyint(2) DEFAULT '0',
  TYPE enum('Apartment', 'Bungalow', 'Cottage', 'Duplex', 'Farmhouse') DEFAULT NULL,
  PARKING boolean DEFAULT NULL,
  FURNISHED boolean DEFAULT NULL,
  MAINTENANCE mediumint(4) unsigned DEFAULT NULL,
  PID int(10) unsigned
}



TABLE RENTS {
  HID int(10) unsigned PK,
  TID int(10) unsigned PK,
  DEPOSIT int(10) unsigned NOT NULL,
  RENT int(10) unsigned NOT NULL,
  START_DATE date DEFAULT NULL,
  END_DATE date DEFAULT NULL
}


TABLE PROPERTY {
  PID int(10) unsigned PK AUTO_INCREMENT,
  CAPACITY int(4) unsigned NOT NULL,
  ADDRESS varchar(200) DEFAULT NULL,
  FLOORS tinyint(1) unsigned DEFAULT 1,
  TYPE enum('Apartment', 'Bungalow', 'Cottage', 'Duplex', 'Farmhouse') DEFAULT 'Apartment'
}


TABLE CO_TENANT {
  TID int(10) unsigned NOT NULL,
  NAME varchar(100) NOT NULL PK,
  GENDER enum('M','F') NOT NULL,
  BDATE date DEFAULT NULL,
  AGE tinyint(2) GENERATED ALWAYS AS ((2018 - year(BDATE))) VIRTUAL,
  RELATIONSHIP enum('Parent', 'Spouse', 'Child', 'Cousin', 'Friend', 'Grandparent', 'Grandchild', 'Other') DEFAULT 'Other' PK
}

Ref: TENANT.TID < CO_TENANT.TID

Ref: PROPERTY.PID < HOUSE.PID

Ref: HOUSE.HID - RENTS.HID

Ref: TENANT.TID - RENTS.TID














----------------------------------











CREATE TABLE `TENANT` 
(
	`TID` int PRIMARY KEY,
	`AADHAR` bigint,
	`FNAME` varchar(255),
	`LNAME` varchar(255),
	`MINIT` varchar(255),
	`NAME` varchar(255),
	`ADDRESS` varchar(255),
	`GENDER` enum,
	`PHONE` bigint,
	`BDATE` date,
	`AGE` tinyint
);

CREATE TABLE `HOUSE` 
(
	`HID` int PRIMARY KEY,
	`ROOMS` tinyint,
	`AREA` smallint,
	`FLOOR` tinyint,
	`TYPE` enum,
	`PARKING` boolean,
	`FURNISHED` boolean,
	`MAINTENANCE` mediumint,
	`PID` int
);

CREATE TABLE `RENTS` 
(
	`HID` int PRIMARY KEY,
	`TID` int PRIMARY KEY,
	`DEPOSIT` int,
	`RENT` int,
	`START_DATE` date,
	`END_DATE` date
);

CREATE TABLE `PROPERTY` 
(
	`PID` int PRIMARY KEY,
	`CAPACITY` int,
	`ADDRESS` varchar(255),
	`FLOORS` tinyint,
	`TYPE` enum
);

CREATE TABLE `CO_TENANT` 
(
	`TID` int,
	`NAME` varchar(255) PRIMARY KEY,
	`GENDER` enum,
	`BDATE` date,
	`AGE` tinyint,
	`RELATIONSHIP` enum PRIMARY KEY
);

ALTER TABLE `CO_TENANT` ADD FOREIGN KEY (`TID`) REFERENCES `TENANT` (`TID`);

ALTER TABLE `HOUSE` ADD FOREIGN KEY (`PID`) REFERENCES `PROPERTY` (`PID`);

ALTER TABLE `RENTS` ADD FOREIGN KEY (`HID`) REFERENCES `HOUSE` (`HID`);

ALTER TABLE `RENTS` ADD FOREIGN KEY (`TID`) REFERENCES `TENANT` (`TID`);
