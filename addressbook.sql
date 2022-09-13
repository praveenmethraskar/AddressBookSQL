--UC1 creating database
create database AddressBookService

use AddressBookService

--UC2 creating table AddressBook

create table AddressBook(id int identity(1,1) primary key,firstname varchar(200), lastname varchar(200), address1 varchar(200), city varchar(100),states varchar(100), zip bigint, Phonenumber bigint, email varchar(200))

--UC3 inserting data
insert into AddressBook values('praveen','methraskar','17-2-258/k','hyderabad','telangana',500059,8897758689,'praveen@gmail.com')
insert into AddressBook values('pramod','methraskar','17-2-258/k','hyderabad','telangana',500059,6698774452,'pramod@gmail.com')
insert into AddressBook values('vinay','thota','17-2-258/8/8','rangareddy','telangana',500183,9505656985,'vinay@gmail.com')
insert into AddressBook values('satish','macha','17-2b/a','karimnagar','telangana',500135,9658745698,'satish@gmail.com')

--UC4  editing existing contact with person name

update AddressBook set city='karimnagar',Phonenumber=8975698589 where firstname='praveen'

--UC5 deleting existing contact with person name
delete from AddressBook where firstname='satish'

--UC6 retrieving with city name

select * from AddressBook where city='karimnagar'

--UC7 size of address book by city or state

select Count(city) as TotalEmployee from AddressBook

select Count(states) as TotalEmployee from AddressBook

--UC8 

select firstname from AddressBook where city='hyderabad' order by firstname ASC

