select name, price from products
select * from products where category = 'Electronics'
select category from products Group By category
select category , count(*) from products 
Group By category
Having Count(*) >1;
select * from products Order By price;
select * from products Order By price Desc;
select * from products Order By name;
select * from products limit 2;
select name as Item_name , price as Item_price from products;
select Distinct category from products;
