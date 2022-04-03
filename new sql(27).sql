SELECT * FROM travellingdetails.travell1_details;

-- find the highest ticket price from the train details table

SELECT MAX(ticketPrice) AS highest_ticket_price FROM travell1_details;

SELECT MIN(ticketPrice) AS Minimum_ticket_price FROM travell1_details;

SELECT * FROM travell1_details WHERE start_place IS  null;

SELECT * FROM travell1_details WHERE destination_place IS  NOT  null;

SELECT MAX(noOfClasses) AS highest_number_classes FROM travell1_details;


SELECT SUM(ticketPrice) AS Total_ticket_price FROM travell1_details;


SELECT MIN(ticketPrice) AS Total_ticket_price FROM travell1_details;

SELECT AVG(ticketPrice) AS Total_ticket_price FROM travell1_details;

SELECT AVG(noOfClasses) AS No_of_classes FROM travell1_details;

SELECT MAX(noOfClasses) AS No_of_classes FROM travell1_details;

SELECT MIN(noOfClasses) AS No_of_classes FROM travell1_details;

SELECT SUM(noOfClasses) AS No_of_classes FROM travell1_details;

SELECT COUNT(noOfClasses) AS No_of_classes FROM travell1_details;



SELECT curdate() AS present_date;

SELECT current_time() AS present_time;

SELECT NOW() AS travell1_details;












-- second highest ticket price
SELECT MAX(ticketPrice) AS Second_Highest_TicketPrice FROM travell1_details WHERE ticketPrice<125;


-- find the details of the train which has the second highest ticket_price.

SELECT * FROM travell1_details WHERE ticketPrice=(SELECT MAX(ticketPrice) AS Second_Highest_TicketPrice FROM travell1_details WHERE ticketPrice<250
);

-- find the third highest ticketprice.

SELECT MAX(ticketPrice) AS Third_Highest_TicketPrice FROM travell1_details WHERE ticketPrice<(SELECT MAX(ticketPrice) FROM travell1_details);  	


SELECT * FROM travell1_details WHERE ticketPrice=(SELECT MAX(ticketPrice) AS Third_Highest_TicketPrice FROM travell1_details
 WHERE ticketPrice<(SELECT MAX(ticketPrice) FROM travell1_details));
 
 -- Find the details of the train which has the  lowest ticketPrice.
 
 SELECT * FROM travell1_details WHERE ticketPrice=(SELECT MIN(ticketPrice) FROM travell1_details); -- 100
 
  -- Find the details of the train which has the  lowest ticketPrice and highest ticket price.
  
  SELECT * FROM travell1_details WHERE ticketPrice=250  OR ticketPrice=200;
  
  -- when we have multiple OR we have to use IN 
  
    SELECT * FROM travell1_details WHERE ticketPrice IN ((SELECT MAX(ticketPrice)FROM travell1_details),
    (SELECT MIN(ticketPrice)FROM travell1_details));
    
    -- here we can write any number of sub-queries in the IN operater.
    
    -- find the details of the train which has highest number of the class  in each start place more than  4.alter
    
    SELECT MAX(noOfClasses) ,start_place FROM travell1_details GROUP BY start_place;
    
	SELECT MAX(noOfClasses)  FROM travell1_details GROUP BY start_place;
        
 SELECT MAX(noOfClasses),start_place  FROM travell1_details GROUP BY start_place HAVING MAX(noOfClasses>30);
 
 
-- finding maximum number of classes where noOfClasses >30

SELECT * FROM travell1_details WHERE noOfClasses IN(( SELECT MAX(noOfClasses)
  FROM travell1_details GROUP BY start_place HAVING MAX(noOfClasses<220)
));

SELECT MAX(noOfClasses)
  FROM travell1_details GROUP BY start_place HAVING MAX(noOfClasses<220);
  
  SELECT MAX(ticketPrice)
  FROM travell1_details GROUP BY start_place HAVING MAX(ticketPrice>220);
  
SELECT user(); -- it is used to tell who is available for the usage.

SELECT user,host FROM mysql.user; -- IT TELLS TOTAL HOSTS AVAILABLE IN THE RDBMS.

CREATE  USER 'sqlUser'@'localhost' 	identified BY 'Vignesh$1998'; -- it is used to create the new user .this person can login to the local host.	

GRANT SELECT ,UPDATE,INSERT,DELETE on travell1_details to 'sqlUser'@'localhost'; -- Giving access to the particular user.

SHOW GRANTS FOR 'sqlUser'@'localhost';

REVOKE UPDATE ,DELETE ON  travell1_details FROM 'sqlUser'@'localhost'; -- IT IS USED TO REVOKE deleting access .


-- 03-04-22 
INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice) VALUE (1998,'HIMALAYAEXPRESS',56,150.00); 


INSERT INTO travell1_details(train_number,name,start_place,start_datetime) VALUE(1968,'HIMALAYAEXPRESS','NELLORE','2022-05-06 11:00:00');
SELECT * FROM travell1_details;

UPDATE travell1_details SET  start_place='NELLORE' WHERE train_number=2345;

UPDATE travell1_details SET destination_place='RAJAMANDRY' WHERE train_number=1111;

COMMIT;

ROLLBACK;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(8368,'AP-KA SUPERFAST EXPRESS',100,500,'NELLORE','BANGLORE','2022-03-06 10:00:00', '2022-03-07 12:00:00 ');

SET AUTOCOMMIT=0;
  
  
SET AUTOCOMMIT=0;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(8338,'AP  EXPRESS',144,500,'NELLORE','ONGOLE','2022-03-07 14:00:00', '2022-03-06 15:00:00 ');

rollback;


INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(5555,'KA EXPRESS',43,550,'CHITOR','ONGOLE','2022-04-07 14:00:00', '2022-04-08 15:00:00 ');
            
SAVEPOINT A;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(6666,'CHENNAI  EXPRESS',30,800,'NELLORE','CHENNAI','2022-03-07 16:00:00', '2022-03-08 16:00:00 ');
SAVEPOINT B;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(7777,'MP  EXPRESS',54,900,'MADHYA PRADESH','UTTAR PRADESH','2022-03-04 15:00:00', '2022-03-06 18:00:00 ');

SAVEPOINT C;

ROLLBACK;

SELECT * FROM travell1_details;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(5555,'KA EXPRESS',43,550,'CHITOR','ONGOLE','2022-04-07 14:00:00', '2022-04-08 15:00:00 ');
            
SAVEPOINT A;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(6666,'CHENNAI  EXPRESS',30,800,'NELLORE','CHENNAI','2022-03-07 16:00:00', '2022-03-08 16:00:00 ');
SAVEPOINT B;

INSERT INTO travell1_details(train_number,name,noOfClasses,ticketPrice,start_place,destination_place,start_datetime,destination_datetime)
            VALUE(7777,'MP  EXPRESS',54,900,'MADHYA PRADESH','UTTAR PRADESH','2022-03-04 15:00:00', '2022-03-06 18:00:00 ');

SAVEPOINT C;

COMMIT;

SELECT * FROM travell1_details;











        
        


  