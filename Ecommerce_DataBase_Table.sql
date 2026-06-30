create database Ecommerce_db;
use Ecommerce_db;
create table customers(
customer_id int auto_increment primary key,
name varchar(100),
city varchar(20),
email varchar(30),
gender varchar(10)
);
create table products(
product_id int auto_increment primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2),
stock int
);
create table orders(
order_id int auto_increment primary key,
customers_id int,
product_id int,
quantity int,
order_date date,
status varchar(50),
foreign key (customers_id)
references customers(customers_id),
foreign key (product_id)
references products(product_id)
);
INSERT INTO customers VALUES
(1,'priya sharma','delhi','priya@gmail.com','female'),
(2,'priti dubey','delhi','priti@gmail.com','female'),
(3,'Akash sharma','pune','akash@gmail.com','male'),
(4,'gungun singh','mumbai','gungun@gmail.com','female'),
(5,'raj singh','kolkata','raj@gmail.com','male'),
(6,'rishi mehta','chennai','rishi@gmail.com','male'),
(7,'karan rathod','karnataka','karan@gmail.com','male'),
(8,'jay pandey','sahdol','jay@gmail.com','male'),
(9,'prithvi sahu','banglore','prith@gmail.com','male'),
(10,'kirti gupta','hydrabad','kirti@gmail.com','female');

INSERT INTO products VALUES
(1,'laptop','Electronics',45000,50),
(2,'Mobile','Electronics',21000,100),
(3,'saree','Fashion',1500,200),
(4,'shoes','Fashion',2000,150),
(5,'rice 5kg','Grocery',300,500),
(6,'chair','furniture',200,500),
(7,'Table','Furniture',800,100),
(8,'shirt','Fashion',1200,300);

INSERT INTO orders VALUES 
(1,4,1,3,'2022-01-15','Delivered'),
(2,5,3,2,'2020-05-22','Delivered'),
(3,3,3,6,'2021-04-09','Delivered'),
(4,8,7,6,'2021-04-10','cancelled'),
(5,9,8,50,'2022-04-09','Delivered'),
(6,2,3,10,'2023-02-14','Delivered'),
(7,5,3,3,'2024-01-01','Delivered'),
(8,6,4,9,'2020-06-20','Delivered'),
(9,7,7,8,'2024-04-04','Delivered'),
(10,10,2,1,'2024-06-11','cancelled'),
(11,1,5,10,'2022-04-11','Delivered'),
(12,10,6,1,'2023-02-20','Delivered');

select * from customers;
select * from products;
select * from orders;

SELECT SUM(price * quantity) AS total_sales
FROM orders
JOIN products USING(product_id);

SELECT status, COUNT(*) AS total
FROM orders
GROUP BY status;

SELECT category, SUM(price * quantity) AS sales
FROM orders
JOIN products USING(product_id)
GROUP BY category;

SELECT name, COUNT(*) AS total_orders
FROM orders
JOIN customers USING(customers_id)
GROUP BY name
ORDER BY total_orders DESC
LIMIT 3;
