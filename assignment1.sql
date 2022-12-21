 
 Create database data;
 use data;
 
 CREATE TABLE Salespeople
(
	Snum int  not null primary key unique,Sname varchar(100) unique,
    City varchar(10),Comm int);

insert into Salespeople (Snum,Sname,City,Comm)
Values
(1001,'peel','London',12),
(1002, 'Serres','Sanjose',13),
(1004,'Motika','London' ,11),
(1007 ,'Rifkin','Barcelona',15),
(1005,'Axelrod','Newyork',10);
select * from Salespeople;


Create table Customers
(       Cnum int  not null primary key unique,
        Cname varchar(100),
        City varchar(100) not null,
          Snum int
);
insert into Customers(Cnum,Cname,City,Snum)
VALUES
(2001, 'Hoffman','London',1001),
(2002 , 'Giovanni' ,'Rome', 1003),
(2003 , 'Liu' , 'Sanjose',1002),
(2004,'Grass','Berlin',1002),
(2006,'Clemens','London',1001),
(2008,'Cisneros','Sanjose',1007),
(2007,'Pereira','Rome',1004);
select * from Customers;
Create table Orders
(
        Onum int unique, 
        Amt  Decimal,
        Odate Date,
        Cnum int,
        Snum int
);
insert into Orders(Onum,Amt,Odate,Cnum,Snum)
Values
(3001,18.69,'1990-10-3',2008,1007),
(3003,767.19,'1990-10-3',2001,1001),
(3002,1900.10,'1990-10-3',2007,1004),
(3005,5160.45,'1990-10-3',2003,1002),
(3006,1098.16,'1990-10-3',2008,1007),
(3009,1713.23,'1990-10-4',2002,1003),
(3007,75.75,'1990-10-4',2004,1002),
(3008,4273.00,'1990-10-5',2006,1001),
(3010,1309.95,'1990-10-6',2004,1002),
(3011,9891.88,'1990-10-6',2006,1001);
select * from Orders;

 
select Count(*) From 
 Salespeople
where 
Sname like 'a%' OR Sname like 'A%';

select S.Sname
From salespeople S
join orders O ON S.Snum=O.Snum
group by S.Sname
having sum(O.Amt)>2000;




select Count(*) AS
Salesperson_From_Newyork From Salespeople
where City='newyork' ;

select  City,count(*) 
from salespeople
where city in ('London'  ,'paris')
group by City;

select Sname,
Count(*) as number_of_orders,
Odate
From salespeople as sp
inner join orders as oo on oo.Snum
group by Sname,
Odate











