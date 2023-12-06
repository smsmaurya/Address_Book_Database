-- UC1
create database Address_Book_Service;
use Address_Book_Service;
CREATE TABLE Address_Book (FIRSTNAME varchar(25) NOT NULL,
                      LASTNAME VARCHAR(25) NOT NULL,
                     ADDRESS VARCHAR(25) ,
                      CITY VARCHAR(25) NOT NULL,
                     STATE VARCHAR(20) NOT NULL,
					ZIPCODE int NOT NULL,
                      PHONENUMBER numeric(10) not null,
                      EMAIL varchar(30) not null unique);
insert into Address_Book values('Sumesh', 'Maurya', 'Sakinaka','Mumbai','Maharashtra', 400072, 9919888132, 'sumeahmaurya786@gmail.com');
insert into Address_Book values('Mahesh', 'Patole', 'Marol','Mumbai','Maharashtra', 400062, 8917888678, 'mahesh.patole498@gmail.com');
insert into Address_Book values('Akash', 'Lahsun', 'Vashi','new Mumbai','Maharashtra', 400076, 8769567390, 'akashlahsun.123@gmail.com');
insert into Address_Book values('Shiba', 'Barnwal', 'Badlapur','New Mumbai','Maharashtra', 400092, 7865432878, 'shibaBarnwal33@gmail.com');
insert into Address_Book values('Dipshan', 'Maurya', 'Badlapur','Jaunpur','Uttarpradesh', 222003, 8345986712, 'dipshanmaurya7@gmail.com');
insert into Address_Book values('Vedika', 'Yadav', 'Chandivali','Mumbai','Maharashtra', 400070, 9068986576, 'yadavvedika512@gmail.com');
insert into Address_Book values('Roshani', 'Singh', 'Sakinaka','Mumbai','Maharashtra', 400072, 8652741521, 'roshanisingh599@gmail.com');

update Address_Book set email = 'sumeshmaurya786@gmail.com' where email = 'sumeahmaurya786@gmail.com';

delete from Address_Book where email = 'sureshChandrapal98@gmail.com';

select firstname, lastname
from Address_Book
where city ='Mumbai' or state ='Maharashtra';

select city,count(*)
from Address_Book
group by city;

select firstname, lastname
from Address_Book
where city ='Mumbai'
order by firstname;

alter table Address_book add Type varchar(20);

update Address_Book set type = 'family' where email = 'sms@gmail.com';

select type, count(phonenumber)
from Address_Book
group by type;

insert into Address_Book values('Pradip', 'Yadav', 'RahejaHouse','Gurgoan','Haryana', 280072, 8654341521, 'pradipyadav96@gmail.com','family');
insert into Address_Book values('Sachin', 'Ipili', 'Puri','Bhuvneshwar','Urisa', 333032, 8652345667, 'sachinipili505@gmail.com','friends');




select * from Address_Book;



