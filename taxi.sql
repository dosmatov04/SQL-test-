CREATE DATABASE yandex_taxi;

CREATE TABLE cars(id BIGSERIAL PRIMARY KEY,
    marka varchar(150) NOT NULL,
    model varchar(150) NOT NULL,
    fuel integer NOT NULL,
    vall integer NOT NULL,
    peredacha varchar(150) NOT NULL,  
    year_of_issue integer,
    color varchar(150) NOT NULL,
             
);

CREATE TABLE driver(id BIGSERIAL PRIMARY KEY,
    names varchar(150) NOT NULL,
    last_name varchar(150) NOT NULL,
    date_of_birthday varchar(150) NOT NULL,
    experience integer,
    gender varchar(150) NOT NULL,
    id_car REFERENCES cars(id));

CREATE TABLE operation(id BIGSERIAL PRIMARY KEY,
names varchar(150) NOT NULL,
last_name varchar(150) NOT NULL,
date_of_birthday varchar(150) NOT NULL,
gender varchar(150) NOT NULL);

INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('BMW','x6',60,6.0,'avtomat',2021,'black');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('MERSEDES','e500',50,5.5,'avtomat',2019,'blue');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('AUDI','a8',55,5,'avtomat',2021,'red');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('MAZDA','RX7',70,3.3,'mechanics',2006,'gray');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('HUMMER','H2',80,6.6,'avtomat',2021,'black');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('LAMBORGHINI','HURACAN',75,6.0,'avtomat',2021,'yellow');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('FERRARI','f40',80,7.7,'avtomat',2021,'blue
');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('PORCHE','PANAMERA',60,8.8,'avtomat',2021,'black');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('BMW','M5',50,5.5,'avtomat',2021,'black');
INSERT INTO cars(marka,model,fuel,vall,peredacha,year_of_issue,color ) VALUES ('ROLLS-ROYCE','PHANTOM',77,6.0,'avtomat',2021,'black')
;

INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Tomas','Shelby',1999-09-09,20,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Artur','Shelby',1998-08-08,19,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Djon','Shelby',1997-07-07,18,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Grays','Shelby',1996-06-06,17,'famale');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('May','Shelby',1995-05-05,16,'famale');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Eshmamat','Shelbyev',1994-04-04,15,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Conor','McGregor',1993-03-03,14,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Tony','Ferguson',1992-02-02,13,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Khabib','Nurmagamedov',1991-01-01,12,'male');
INSERT INTO driver(names,last_name,date_of_birthday,experience,gender) VALUES ('Iskhak','Omarov',2002-12-12,1,'male');


INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Abdykadyrov','Aidar',2004-03-01,'male')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Kamchybekova','Aimira',2004-07-30,'famale')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Saryeva','Ayana',2004-03-14,'famale')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Abdyjaparov','Emirlan',2004-11-24,'male')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Jorroev','Daniel',2004-05-24,'male')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Abdibaitova','Guljan',2005-09-23,'famale')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Jusupova','Jibek',2005-08-19,'famale')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Askarova','Aisuluu',2004-02-15,'famale')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Sadyr','Japarov',1972-11-27,'male')
INSERT INTO operation(names,last_name,date_of_birthday,gender) VALUES ('Amirbekova','Begimay',2006-05-30,'famale')


SELECT * FROM cars WHERE marka='TOYOTA',model='CAMRY';
SELECT * FROM cars ORDER BY year_of_issue DESC;
SELECT DISTINCT names ORDER BY operation DESC LIMIT(5);
UPDATE cars SET marka='mersus' WHERE marka='Mersedes';
DELETE driver names='Iskhak' and last_name='Omarov';
SELECT COUNT(names) FROM driver WHERE experience > 10 and gender='male';
SELECT AVG(date_of_birthday) FROM driver WHERE date_of_birthday > '1975-10-10';
SELECT COUNT(marka) FROM driver WHERE marka="Toyota" ORDER BY year DESC;
