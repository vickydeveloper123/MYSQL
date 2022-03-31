SELECT * FROM travellingdetails.travell1_details;

INSERT INTO travell1_details VALUE
								(3199,'KRISHNA',10,250.0,'MUMBAI','NELLORE','2022-06-20 16:00:00','2022-08-21 17:00:00'),
                                (9999,'PURI',10,200.0,'MUMBAI','CULCATTA','2022-02-01 15:00:00','2022-01-23 16:00:00')
                               
                                
;

INSERT INTO travell1_details VALUE(1561,'SIMHA',40,100.0,'MUMBAI','DELHI','2022-01-29 18:00:00','2022-02-05 19:00:00'),
                                (3333,'narayana',30,150.0,'DELHI','RAJASTHAN','2022-06-27 14:00:00','2022-05-06 13:00:00'),
                                (6645,'nikas',30,130.0,'PUNE','GURGON','2022-03-12 13:00:00','2022-04-27 22:00:00'),
                                (9863,'RIDEST',50,190.0,'kanyakumari','kashmir','2022-09-11 12:00:00','2022-02-24 18:00:00'),
                                (4728,'SIMHADRI',30,300.0,'BANGLORE','CHIKMANGLORE','2022-04-09 12:00:00','2022-08-21 12:00:00');
							
SELECT * FROM travell1_details;

SELECT * FROM travell1_details WHERE ticketPrice>20;

SELECT * FROM travell1_details WHERE ticketPrice>200;

SELECT * FROM travell1_details WHERE ticketPrice>250;

SELECT * FROM travell1_details WHERE start_place ='NELLORE' AND destination_place='VELLORE';

SELECT * FROM travell1_details WHERE start_place ='NELLORE' OR destination_place='VELLORE' OR start_datetime=2022-03-12 OR destination_datetime=2022-03-20;

SELECT * FROM travell1_details WHERE start_place ='NELLORE' OR destination_place='VELLORE' OR start_datetime=2022-03-12 AND destination_datetime=2022-03-20;

SELECT * FROM travell1_details WHERE ticketPrice BETWEEN 50 AND 100;

SELECT * FROM travell1_details WHERE ticketPrice BETWEEN 100 AND 200;

SELECT * FROM travell1_details WHERE ticketPrice BETWEEN 200 AND 300;

SELECT DISTINCT start_place FROM travell1_details;

SELECT DISTINCT destination_place FROM travell1_details;

SELECT DISTINCT start_datetime FROM travell1_details;

SELECT DISTINCT destination_datetime FROM travell1_details;

SELECT * FROM travell1_details ORDER BY ticketPrice;

SELECT * FROM travell1_details ORDER BY start_place;

SELECT * FROM travell1_details ORDER BY destination_place;

SELECT * FROM travell1_details ORDER BY start_datetime;

SELECT * FROM travell1_details ORDER BY destination_datetime;

SELECT * FROM travell1_details ORDER BY train_no;

SELECT * FROM travell1_details ORDER BY ticketPrice;


SELECT * FROM travell1_details WHERE noOfClasses>10 ORDER BY NAME;

SELECT * FROM travell1_details ORDER BY ticketPrice;

SELECT * FROM travell1_details WHERE noOfClasses>20 ORDER BY NAME;

SELECT * FROM travell1_details WHERE noOfClasses>30 ORDER BY NAME;

SELECT * FROM travell1_details WHERE noOfClasses>40 ORDER BY NAME;

SELECT * FROM travell1_details WHERE noOfClasses>50 ORDER BY NAME;

SELECT * FROM travell1_details ORDER BY train_no  DESC LIMIT 5; /*DESC --> Decresing order.

SELECT * FROM travell1_details WHERE noOfClasses>10 ORDER BY NAME;


ALTER TABLE travell1_details RENAME COLUMN train_no TO train_number;

SELECT * FROM travell1_details;

SELECT * FROM travell1_details WHERE start_datetime LIKE '2022-03-12%';

SELECT * FROM travell1_details WHERE start_datetime LIKE '2022-03-19%';

SELECT * FROM travell1_details WHERE start_datetime LIKE '2022-03-12%' ;

SELECT * FROM travell1_details WHERE destination_datetime LIKE '2022-03-15%' ;

SELECT * FROM travell1_details WHERE start_datetime LIKE '2022-03-01%' ;

SELECT * FROM travell1_details WHERE  name LIKE '__M%';

SELECT * FROM travell1_details WHERE  name LIKE '____A%';

SELECT * FROM travell1_details WHERE train_number LIKE '1234%';

SELECT * FROM travell1_details WHERE start_place LIKE 'NELLORE';

SELECT * FROM travell1_details WHERE destination_place LIKE 'DELHI';

UPDATE travell1_details SET start_place=' ' WHERE train_number=1111;

SELECT * FROM travell1_details;

UPDATE travell1_details SET start_place='BANLORE ' WHERE train_number=1111;

UPDATE travell1_details SET destination_place='NELLORE ' WHERE train_number=1111;

UPDATE travell1_details SET start_datetime='2022-04-29 22:00:00 ' WHERE train_number=1111;

UPDATE travell1_details SET destination_datetime='2022-04-30 12:00:00 ' WHERE train_number=1111;









































