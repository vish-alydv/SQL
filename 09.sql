select name , substring(sku_code,1,2) as sku_lower_code from products;
select name, right(sku_code,2) from products;
select name, left(sku_code,2) from products;
select concat(name,' ',category) as products_with_category from products;
select concat(name,category) as products_with_category from products;
select concat_ws(' ',name,category) as products_with_category from products;
select concat_ws(' ',name,category,sku_code) as products_with_category from products;
select trim('  sbf  ')
select name , replace(sku_code,left(sku_code,2),'GG') 
from products;