/*Creating Database*/
 -- CREATE DATABASE Order_details 
/*Creating 3 Tables namely consumer,orders,sales manager */
-- CREATE TABLE consumer(
-- consumer_id int not null primary key,
-- consumer_name varchar(50) not null,
-- sales_manager_id int not null,
-- grade int not null
--  )
-- CREATE TABLE Orders(
-- order_no int not null primary key,
-- purchase_amount int  not null,
-- order_date date not null,
-- consumer_id int not null,
-- sales_manager_id int not null
-- )
-- CREATE TABLE sales_manager(
-- sales_manager_id int not null primary key,
-- manager_name varchar(50) not null,
-- city varchar(25) not null
-- )
/*Inserting data into the tables*/
-- INSERT INTO consumer(consumer_id,consumer_name,sales_manager_id,grade)
-- VALUES (1,"Surya",11,100),
-- (2,"Shyam",12,200),
-- (3,"Ram",13,800),
-- (4,"Shankar",11,900),
-- (5,"Sita",13,500) 

-- INSERT INTO Orders(order_no,purchase_amount,order_date,consumer_id,sales_manager_id)
-- VALUES (1001,100,'2022-12-01',1,11),
-- (1002,250,'2022-12-05',2,12),
-- (1003,600,'2022-12-08',3,13),
-- (1004,450,'2022-12-10',4,12),
-- (1005,550,'2022-12-20',2,13) 

-- INSERT INTO sales_manager(sales_manager_id,manager_name,city)
-- VALUES (11,"Tagore","kakinada"),
-- (12,"Bose","Rajahmundry"),
-- (13,"Patel","Vizag"),
-- (14,"Jain","Vijaywada"),
-- (15,"Subash","Tuni") 

/*Display the purchase amount from 100 to 500 from the orders table*/
-- SELECT * from orders where purchase_amount between 100 and 500

/*Change the consumer id in the orders table where order_no is equal to “1005”.*/
-- update orders set consumer_id=3 where order_no=1005
-- select * from orders

/*Return the consumer name, city, order number, order date, order amount, and sales manager name to find those consumers with
 a grade less than 500 and should return in ascending order of consumer id.*/
--  SELECT c.consumer_name as consumer_name,s.city,o.order_no as order_number,o.order_date,o.purchase_amount,s.manager_name as manager 
--  from consumer c,orders O, sales_manager s  where c.consumer_id=o.consumer_id and o.sales_manager_id=s.sales_manager_id and grade<500
--  order by c.consumer_id asc
/*Return consumer name, city, order number, order date, and order amount in ascending order according to the order date 
to determine whether any of the existing consumers have placed an order or not*/
-- SELECT  c.consumer_name,s.city,o.order_no,o.order_date,o.purchase_amount from consumer c,orders o,sales_manager s 
-- where consumer_name=any (select consumer_name from consumer where c.consumer_id=o.consumer_id or c.consumer_id <> o.consumer_id)
-- order by order_date

/*Fetch the consumer name, city, order number, order date, order amount, and sales manager name to find out whether any existing consumer(s) 
have not placed any orders or if they have placed orders through their sales manager or by themselves. */
-- SELECT c.consumer_name, s.city,o.order_no,o.order_date,o.purchase_amount,s.manager_name from consumer c ,ORDERS o,sales_manager s 
-- where consumer_name= any ( select distinct consumer_name from consumer c,orders o where c.consumer_id <> o.consumer_id or o.sales_manager_id=s.sales_manager_id )
