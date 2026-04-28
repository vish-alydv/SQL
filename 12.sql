
select * from products;

select name,price,
Case when (price>1000) then 'Expensive'
when price between 500 and 1000 then 'Moderate'
Else 'Cheap'
End as price_tag From products;

select * from products;


alter table products add column price_tag text;

update products se