use Address_Book_Service;
CREATE TABLE AddressBook (
                      ID int primary key,
                      FIRSTNAME varchar(25) NOT NULL,
                      LASTNAME VARCHAR(25) NOT NULL,
                      Type_ID varchar(2),
                      ADDRESS VARCHAR(25) ,
                      CITY VARCHAR(25) NOT NULL,
                      STATE VARCHAR(25) NOT NULL,
 					  ZIPCODE int NOT NULL,
                      PHONENUMBER numeric(10) not null,
                      EMAIL varchar(30) not null unique,
                      FOREIGN KEY(Type_ID) REFERENCES PersonType (ID)
                      );
                      
                      
describe AddressBook;

insert into AddressBook values(56,'Sumesh', 'Maurya', 'Fa', 'Sakinaka','Mumbai','Maharashtra', 400072, 9919888132, 'sumeahmaurya786@gmail.com');
insert into AddressBook values(1,'Mahesh', 'Patole','Pr','Marol','Mumbai','Maharashtra', 400062, 8917888678, 'mahesh.patole498@gmail.com');
insert into AddressBook values(2,'Akash', 'Lahsun','Pr', 'Vashi','new Mumbai','Maharashtra', 400076, 8769567390, 'akashlahsun.123@gmail.com');
insert into AddressBook values(9,'Shiba', 'Barnwal', 'Fr','Badlapur','New Mumbai','Maharashtra', 400092, 7865432878, 'shibaBarnwal33@gmail.com');
insert into AddressBook values(7,'Dipshan', 'Maurya','Fa', 'Badlapur','Jaunpur','Uttarpradesh', 222003, 8345986712, 'dipshanmaurya7@gmail.com');
insert into AddressBook values(12,'Vedika', 'Yadav', 'Fr', 'Chandivali','Mumbai','Maharashtra', 400070, 9068986576, 'yadavvedika512@gmail.com');
insert into AddressBook values(5,'Roshani', 'Singh', 'Fr', 'Sakinaka','Mumbai','Maharashtra', 400072, 8652741521, 'roshanisingh599@gmail.com');




create table PersonType (ID varchar(2) primary key, personType varchar(15) not null );
insert into PersonType values ('Pr','Profesion');
