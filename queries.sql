insert into customer (username, password, created_at)
values
('wilderness', 'password1', '2022-2-2'),
('brandytea', 'password2', '2022-2-3'),
('theminions', 'password3', '2022-2-4'),
('thematrix', 'password4', '2022-2-5'),
('taxidriver', 'password5', '2022-2-6');

insert into item (name, price)
values
('Apple pie', '20.00'),
('avocado', '5.00'),
('moggle mini-pancake', '7.00'),
('squid ink pasta', '19.60'),
('chocobo curry', '17.00'),
('titan, god of the crags weight of the land burger', '17.60'),
('x-aether', '14.30'),
('mog tropical pineapple defeat battle', '24.60'),
('claim differdange', '13.00'),
('potion', '12.00');


insert into purchase(customer_id, item_id, purchase_time)
values
('1', '1', '2022-3-1 12:00'),
('1', '2', '2022-3-1 12:00'),
('1', '3', '2022-3-1 12:00'),
('1', '4', '2022-3-1 12:00'),
('2', '3', '2022-3-2 13:00'),
('2', '4', '2022-3-2 13:00'),
('2', '5', '2022-3-2 13:00'),
('2', '6', '2022-3-3 13:00'),
('3', '5', '2022-3-4 14:30'),
('3', '6', '2022-3-4 14:30'),
('3', '7', '2022-3-4 14:30'),
('3', '8', '2022-3-5 14:30'),
('4', '7', '2022-3-6 12:10'),
('4', '8', '2022-3-6 12:10'),
('4', '9', '2022-3-6 12:10'),
('4', '10', '2022-3-6 12:10'),
('5', '9', '2022-3-7 12:20'),
('5', '10', '2022-3-7 12:20'),
('5', '1', '2022-3-7 12:20'),
('5', '2', '2022-3-7 12:20');

select c.username, i.name, p.purchase_time, count(p.id)
from purchase p inner join customer c on p.customer_id  =c.id
inner join item i on p.item_id  = i.id 
group by p.id
order by p.purchase_time desc 
limit 5;

call five_recent_purchases (5);

select c.username, count(p.customer_id)
from purchase p inner join customer c on p.customer_id=c.id 
group by p.customer_id ;


call customer_purchases (1);

call customer_purchases (2);

call customer_purchases (3);
