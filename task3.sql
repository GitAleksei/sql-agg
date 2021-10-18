create index index_customer_id
on ORDERS (customer_id);

select O.product_name
from ORDERS O
join CUSTOMERS C on O.customer_id = C.id
where lcase(C.name) = 'alexey'
GROUP BY O.product_name;