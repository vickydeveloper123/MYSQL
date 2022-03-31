CREATE DATABASE travellingdetails;

USE travellingdetails;

CREATE TABLE travelling_details(train_no INT PRIMARY KEY, name VARCHAR(50) NOT NULL, noOfClasses INT DEFAULT 3,
                                ticketPrice FLOAT CHECK(ticketPrice>20),start_place VARCHAR(50),destination_place VARCHAR(50),
                                 start_datetime DATETIME UNIQUE ,destination_datetime DATETIME UNIQUE,type VARCHAR(50));

SELECT * FROM travelling_details;

DESCRIBE travelling_details;

INSERT INTO travelling_details VALUE(124,'HIMALAYAEXPRESS',5,150.00,'NELLORE','BANGLORE','2022-03-18  10:00:00', 
                                      '2022-03-19 11:00:00','EXPRESS'); 

SELECT *FROM travelling_details;

CREATE DATABASE travel;
USE travel;
CREATE TABLE travell_details (train_no INT PRIMARY KEY, name VARCHAR(50) NOT NULL, noOfClasses INT DEFAULT 3,
                                ticketPrice FLOAT CHECK(ticketPrice>20),start_place VARCHAR(50),destination_place VARCHAR(50),
                                 start_datetime DATETIME UNIQUE ,destination_datetime DATETIME UNIQUE,type VARCHAR(50));
                                 
SELECT * FROM travell_details;



DESCRIBE travell_details;

CREATE TABLE travell1_details(train_no INT PRIMARY KEY, name VARCHAR(50) NOT NULL, noOfClasses INT DEFAULT 3,
                                ticketPrice FLOAT CHECK(ticketPrice>20),start_place VARCHAR(50),destination_place VARCHAR(50),
                                 start_datetime DATETIME UNIQUE ,destination_datetime DATETIME UNIQUE);






