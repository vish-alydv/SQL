select name,price from products;
select name,price from products where price = (select min(price) from products);
select avg(price) from products where category in ('Fitness','Home & Kitchen');
select round(avg(price),2) from products where category in ('Fitness','Home & Kitchen');


select name,stock_quantity from products where is_available=True and stock_quantity >50 and price!= 299.00;

select category ,Max(price) as Max_price from products group by category;

select Distinct Upper(category) as category_upper from products order by category_upper desc;