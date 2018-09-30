CREATE TABLE `TENANT` (
TID INT(10),
AADHAR INT(12),
FNAME VARCHAR(50),
LNAME VARCHAR(50),
MINIT VARCHAR(50),
BDATE DATE,
ADDRESS VARCHAR(200),
PHONE INT(10),
GENDER VARCHAR(10)
);

CREATE TABLE `PROPERTY` (
PID INT(10),
CAPACITY INT(12),
ADDRESS VARCHAR(200),
FLOORS INT(10),
TYPE VARCHAR(50)
);

CREATE TABLE `HOUSE` (
HID INT(10),
ROOMS INT(12),
AREA INT(5),
FLOOR INT(10),
TYPE VARCHAR(50),
PARKING VARCHAR(10),
FURNISHED VARCHAR(12),
MAINTENANCE INT(50),
PID INT(10)
);

CREATE TABLE `RENTS` (
HID INT(10),
TID INT(12),
DEPOSIT INT(10),
RENT INT(10),
START_DATE DATE,
END_DATE DATE
);

CREATE TABLE `CO_TENANT` (
TID INT(10),
NAME VARCHAR(30),
GENDER VARCHAR(5),
BDATE DATE,
AGE INT(50),
RELATIONSHIP VARCHAR(50)
);

Parent,Spouse,Child,Cousin,Friend,Grandparent,Grandchild
Apartment,Bungalow,Cottage,Duplex,Farmhouse