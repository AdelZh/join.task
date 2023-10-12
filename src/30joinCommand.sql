select *
from Products p
         left join stores s on p.store_id=s.id


select p.name
from Products p
         left join Stores s on p.store_id=s.id
group by p.name;


select p.name  , c.name
from Products p
         left join Categories c on p.category_id=c.id



select distinct c.*
from Clients c
         join feedbacks f on c.id=f.client_id


select * from products group by name='juice'



select c.full_name, p.description
from feedbacks f
         join Clients c on c.id=f.client_id
         left join Products p on p.id=f.product_id



select s.address
from Stores s
         inner join Products p on s.id=p.store_id




select c.email
from Clients c
         inner join product_client p on c.id=p.client_id



select s.name, count(p.id) as count
from Stores s
    left join Products p on s.id=p.store_id
group by s.name



select p.name as product_name, c.name as category_name
from Products p
         left join Categories c on c.id=p.category_id



select p1.name as product_name, c.full_name as client_full_name
from Product_client p
         join Products p1 on p1.id=p.product_id
         left join Clients c on c.id=p.client_id



select p.name, count(f.id) as feedback_count
from Products p
         left join feedbacks f on p.id=f.product_id
group by name



SELECT stores.*, clients.*
FROM stores
         inner JOIN clients ON stores.id = clients.id;



select p.price, p.name
from Products p
         inner join Stores s on s.id=p.store_id



select p.name, count(f.id) as feed_count
from Products p
         inner join feedbacks f on p.id=f.product_id
group by name


SELECT stores.name, clients.balance
FROM stores
         inner JOIN clients ON stores.id = clients.id;



select p.name as product_name, c.*
from feedbacks f
         join Products p on p.id=f.product_id
         left join Clients c on c.id=f.client_id


select distinct c.*
from clients c
         join product_client p1 on c.id=p1.client_id
         join products p on p.id=p1.product_id
         join categories cat on cat.id=p.category_id
where cat.name='juice'


select stores.name, avg(clients.balance) as avg_balance
from stores
         left join clients  on stores.id=clients.id
group by stores.name


select distinct c.*
from clients c
         join product_client p1 on c.id=p1.client_id
         join products p on p.id=p1.product_id
         join categories cat on cat.id=p.category_id
where p.price='1000'



select p.name as product_name, f.description
from feedbacks f
         left join products p on p.id=f.product_id
where p.name='Coca-Cola'


select c.*
FROM clients c
         JOIN product_client pc ON c.id = pc.client_id
WHERE pc.product_id = 10;


SELECT c.*
FROM clients c
         JOIN (
    SELECT client_id
    FROM product_client
    GROUP BY client_id
    HAVING COUNT(*) > 1
) pc ON c.id = pc.client_id;



select c.*
from clients c
         join (
    select client_id
    from product_client
    group by client_id
    having max(p.price)
)pc on c.id=pc.client_id




select p.name as product_name, count(f.id) as count
from products p
    left join feedbacks f on p.id=f.product_id
group by p.name;



select distinct c.*
from clients c
         join product_client p on c.id=p.client_id
         join products pro on pro.id=p.product_id
         join stores s on s.id=pro.store_id
where s.name='Asia'



SELECT p.*
FROM products p
         LEFT JOIN feedbacks f ON p.id = f.product_id
WHERE f.id IS NULL;


