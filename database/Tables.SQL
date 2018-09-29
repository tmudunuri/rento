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
);



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
);



CREATE TABLE RENTS (
  HID int(10) unsigned,
  TID int(10) unsigned,
  DEPOSIT int(10) unsigned NOT NULL,
  RENT int(10) unsigned NOT NULL,
  START_DATE date DEFAULT NULL,
  END_DATE date DEFAULT NULL,
  FOREIGN KEY(HID) REFERENCES HOUSE(HID),
  FOREIGN KEY(TID) REFERENCES TENANT(TID),
  PRIMARY KEY(HID,TID)
);



CREATE TABLE PROPERTY (
  PID int(10) unsigned PRIMARY KEY AUTO_INCREMENT,
  CAPACITY int(4) unsigned NOT NULL,
  ADDRESS varchar(200) DEFAULT NULL,
  FLOORS tinyint(1) unsigned DEFAULT 1,
  TYPE enum('Apartment', 'Bungalow', 'Cottage', 'Duplex', 'Farmhouse') DEFAULT 'Apartment'
);


CREATE TABLE CO_TENANT (
  TID int(10) unsigned NOT NULL,
  NAME VARCHAR(100) NOT NULL,
  GENDER enum('M','F') NOT NULL,
  BDATE date DEFAULT NULL,
  AGE tinyint(2) GENERATED ALWAYS AS ((2018 - year(BDATE))) VIRTUAL,
  RELATIONSHIP enum('Parent', 'Spouse', 'Child', 'Cousin', 'Friend', 'Grandparent', 'Grandchild', 'Other') DEFAULT 'Other',
  PRIMARY KEY(NAME,RELATIONSHIP),
  FOREIGN KEY(TID) REFERENCES TENANT(TID) ON DELETE CASCADE ON UPDATE CASCADE
);