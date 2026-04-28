create table products(
product_id int primary key,
product_name Varchar(100),
category Text,
price Numeric(10,2),
stock_quantity int,
is_available Boolean,
added_on Date
);


Create Table orders (
orders_id int Primary Key,
product_id int,
quantity int,
order_date Date,
customer_name Varchar(50),
payment_method Varchar(50),
Constraint fk_products
Foreign key (product_id)
References products(product_id)
on Delete Cascade
);






select o.orders_id , o.customer_name ,p.product_name,p.price
from orders o inner join products p
on o.product_id = p.product_id;




select p.product_name , o.orders_id 
from products p left join orders o
on o.product_id = p.product_id;




select o.orders_id  ,p.product_name,p.category
from orders o join products p
on o.product_id = p.product_id
where p.category='Electronics';



select o.orders_id ,p.product_name,p.price
from orders o  join products p
on o.product_id = p.product_id
Order By p.price Desc;




select p.product_name,count(o.orders_id) as total_orders
from  products p  Left join orders o
on o.product_id = p.product_id
Group By p.product_name;






select p.product_name,sum(o.quantity*p.price) as revenue
from  products p  
join orders o
on o.product_id = p.product_id
Group By p.product_name;





select p.product_name,sum(o.quantity*p.price) as revenue
from  products p  
join orders o
on o.product_id = p.product_id
Group By p.product_name
Having Sum(o.quantity*p.price)>2000;



select Distinct o.customer_name
from orders o
Join products p on o.product_id = p.product_id
where p.category = 'Fitness'
