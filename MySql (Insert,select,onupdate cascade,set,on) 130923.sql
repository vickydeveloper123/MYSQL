CREATE database VCUBE;

USE VCUBE;

CREATE table vcube_employerss(
  empno int (20) ,
  empName varchar(30),
  empRole varchar(25),
  empTeamName varchar(30),
  empMobileNumber BigInt(23),
  empEmailId varchar(30),
  

  primary key(empno)
  

);

Select * from vcube_employerss;

INSERT INTO vcube_employerss values(123,'SriVignesh','TechLead','AAA',55652,'srivignesh@gmail.com'),
								  (125,'Ashish','Lead','AAA',53242,'ashish@gmail.com'),
                                  (122,'Lucky','SoftwareDeveloper','BBB',556852,'lucky@gmail.com'),
                                  (153,'Pratik','AssociateEngineer','AAA',67652,'pratik@gmail.com'),
                                  (163,'Rafi','Junior Software Engineer','BBB',54352,'pratik@gmail.com')


;

CREATE TABLE empProjectDetailsListss1(
empProjectName varchar(24),
empManagerName varchar(30),
empProjectCountry varchar(10),
empno int  not null ,

primary key(empProjectName),
foreign key(empno) references vcube_employers(empno)
on update cascade

);

select * from empProjectDetailsListss1;


INSERT INTO empProjectDetailsListss1 VALUES 
                                      ('Banking','Michel','London',123),
                                      ('Insunrance','John','Newyork',122),
                                      ('Healthcare','Vignesh','India',153)

;


UPDATE vcube_employerss SET empno=111 where empno=123;

SELECT   empno=122 from empProjectDetailsListss1 where empProjectName='Baxcvsd';

 
SELECT 
 emp.empno,
 emp.empName,
 emp.empRole,
 emp.empTeamName,
 emp.empMobileNumber,
 emp.empEmailId,
 empPD.empProjectName,
 empPD.empManagerName,
 empPD.empProjectCountry
 
 
 from vcube_employers as emp
 
  Left join   empProjectDetailsListss1 as empPD  ON emp.empno=empPD.empno

 
 Left Join vcube_employers as empData on empData.empno=empData.empno and emp.empno= empPD.empProjectCountry;
 
 
 
 
 
 SELECT 
 emp.empno,
 emp.empName,
 emp.empRole,
 emp.empTeamName,
 emp.empMobileNumber,
 emp.empEmailId,
 empPD.empProjectName,
 empPD.empManagerName,
 empPD.empProjectCountry
 
 
 from vcube_employers as emp
 
  Inner join   empProjectDetailsListss1 as empPD  ON emp.empno=empPD.empno

 
 Inner Join vcube_employers as empData on empData.empno=empData.empno and emp.empno= empPD.empProjectCountry;
 
 
 