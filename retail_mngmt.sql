create database `SQL Basics`;
use `SQL Basics`;
 create table `product table`
 (
		`product code` char(10),
        `product name` varchar(30),
        price float(5,2),
        stock int(4),
        category char(20)
);
create table `customer table`
(
	`customer id` varchar(10),
    `customer name` varchar(30),
    `customer location` varchar(20),
    `customer phone number`int(30)
);

create table `sales table`
(
	`date` date,
    `customer id` varchar(10), 
    `order number` varchar(20),
    `product code` char,
    `product name` varchar(20),
    `quantity` int,
     price float
);
insert into `product table`
 (
		`product code`,
        `product name`,
        price ,
        stock ,
        category
)
values (1, 'tulip', 198.0, 5, 'perfume'),
(2, 'cornoto', 50.0, 21, 'icecream'),
(3, 'Pen', 10.0, 52, 'Stationary'),
(4, 'Lays', 10.0, 20, 'snacks'),
(5, 'mayanoise', 90.0, 10, 'dip'),
(6, 'jam', 105.0, 10, 'spread'),
(7, 'shampoo', 5.0, 90, 'hair product'),
(8, 'axe', 210.0, 4, 'perfume'),
(9, 'park avenue', 901.0, 2, 'perfume'),
(10, 'wattagirl', 201.0, 3, 'perfume'),
(11, 'pencil', 4.0, 10, 'Stationary'),
(12, 'sharpener', 5.0, 90, 'Stationary'),
(13, 'sketch pen', 30.0, 10, 'Stationary'),
(14, 'tape', 15.0, 30, 'Stationary'),
(15, 'paint', 60.0, 12, 'Stationary'),
(16, 'chocolate', 25.0, 50, 'snacks'),
(17, 'biscuts', 60.0, 26, 'snacks'),
(18, 'mango', 100.0, 21, 'fruits'),
(19, 'apple', 120.0, 9, 'fruits'),
(20, 'kiwi', 140.0, 4, 'fruits'),
(21, 'carrot', 35.0, 12, 'vegetable'),
(22, 'onion', 22.0, 38, 'vegetable'),
(23, 'tomato', 21.0, 15, 'vegetable'),
(24, 'serum', 90.0, 4, 'hair product'),
(25, 'conditioner', 200.0, 5, 'hair product'),
(26, 'oil bottle', 40.0, 2, 'kitchen utensil');
INSERT INTO `customer table`
(
	`customer id`,
    `customer name`,
    `customer location`,
    `customer phone number`
)
values
(1111, 'Nisha', 'kerala', 8392320),
(1212, 'Oliver', 'kerala', 4353891),
(1216, 'Nila', 'delhi', 3323242),
(1246, 'Vignesh', 'chennai', 1111212),
(1313, 'shiny', 'Maharastra', 5454543),
(1910, 'Mohan', 'mumbai', 9023941),
(2123, 'Biyush', 'Bombay', 1253358),
(3452, 'Alexander', 'West Bengal', 1212134),
(3921, 'Mukesh', 'Manipur', 4232321),
(5334, 'Christy', 'pakistan', 2311111),
(9021, 'Rithika', 'Kashmir', 1121344),
(9212, 'Jessica', 'banglore', 1233435),
(9875, 'Stephen', 'chennai', 1212133);


INSERT INTO `sales table`
(
`date`,
`order number`,
`customer id`,
`product name`,
`quantity`,
price
)
VALUES
(Timestamp('2016-07-24 00:00:00'), 'HM06', 9212, 'pencil', 3.0, 30.0),
(Timestamp('2016-10-19 00:00:00'), 'HM09', 3921, 'biscuits', 10.0, 600.0),
(Timestamp('2016-10-30 00:00:00'), 'HM10', 9875, 'cornoto', 10.0, 500.0),
(Timestamp('2018-04-12 00:00:00'), 'HM03', 1212, 'kiwi', 3.0, 420.0),
(Timestamp('2018-05-02 00:00:00'), 'HM05', 1910, 'kiwi', 2.0, 280.0),
(Timestamp('2018-09-20 00:00:00'), 'HM08', 5334, 'chocolate', 2.0, 50.0),
(Timestamp('2019-01-11 00:00:00'), 'HM07', 1246, 'apple', 5.0, 600.0),
(Timestamp('2019-03-15 00:00:00'), 'HM01', 1910, 'mayanoise', 4.0, 360.0),
(Timestamp('2021-02-10 00:00:00'), 'HM04', 1111, 'conditioner', 5.0, 1000.0),
(Timestamp('2021-02-12 00:00:00'), 'HM02', 2123, 'Pen', 2.0, 20.0);
alter table `sales table`
add column S_no int;
alter table `sales table`
add column categories varchar(20);
alter table `product table`
modify column stock varchar(20);
alter table `customer table`
rename to `customer details`;
alter table `sales table`
drop column S_no;
alter table `sales table`
drop column categories;

SELECT `order number`,`customer id`,`date`,`price`,`quantity` from `sales table`;
select * from `product table` where `category` = 'stationary';
select distinct category from `product table`;
select * from `sales table` where quantity>2 and price<500;
#WILDCARD MATCHING
select `customer name`from `customer details` where `customer name`like '%a';
select * from `product table` 
order by price desc;
select `product code`,`category` from `product table`
where category in 
(
select category
from `product table`
group by category
having count(*) >=2
);

select `order number`, `customer name` from `sales table`
inner join `customer details`
on `customer details`.`customer id`=`sales table`.`customer id`;



 


