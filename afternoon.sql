create table person
(
    person_id serial primary key,
    name text not null,
    age integer not null,
    height_cm integer not null,
    city text not null,
    fav_color text not null
);

insert into person
    (name, age, height_cm, city, fav_color)
values
    ('John', 26, 183, 'Bear', 'blue'),
    ('Nick', 25, 182, 'Bear', 'blue'),
    ('Zac', 25, 177, 'Bear', 'blue'),
    ('David', 23, 170, 'Newark', 'blue'),
    ('Jon-Eric', 23, 177, 'Hershey', 'blue');

select *
from person
order by height_cm desc;

select *
from person
order by height_cm;

select *
from person
order by age desc;

select *
from person
where age > 20;

select *
from person
where age = 18;

select *
from person
where age < 20 and age >30;

select *
from person
where age != 27;

select *
from person
where fav_color != 'red';


select *
from person
where fav_color != 'red' and fav_color != 'blue';

select *
from person
where fav_color = 'orange' or fav_color = 'green';

select *
from person
where fav_color in ('orange', 'green', 'blue');

select *
from person
where fav_color in ('purple', 'yellow');

create table orders
(
    person_id serial,
    prod_name text not null,
    prod_price numeric,
    quant integer
);

insert into orders
    (person_id, prod_name, prod_price, quant)
values
    (1, 'subway', 5, 1),
    (2, 'pizza', 8.75, 2),
    (3, 'tickets', 153.75, 4),
    (4, 'borrito bowl', 9.75, 2),
    (5, 'phone', 200, 1);

select *
from orders

select sum(quant)
from orders;

select sum(prod_price)
from orders;

select sum(prod_price * quant)
from orders
where person_id = 1;

select sum(prod_price * quant)
from orders
where person_id = 2;

select sum(prod_price * quant)
from orders
where person_id = 3;

select sum(prod_price * quant)
from orders
where person_id = 4;

select sum(prod_price * quant)
from orders
where person_id = 5;

insert into artist
    (name)
values
    ('Your Mom'),
    ('John Crist'),
    ('Tim Hawkins');

select *
from artist
where artist_id between 268 and 278
order by name desc;

select *
from artist
where artist_id between 273 and 278
order by name;

select *
from artist
where name like'Black%';

select *
from artist
where name
ilike'%black%';


select first_name, last_name
from employee
where city = 'Calgary';

select *
from employee
order by birth_date desc;

select *
from employee
order by birth_date;

select *
from employee
where reports_to = 2;

select count(*)
from employee
where city = 'Lethbridge';

select count(*)
from invoice
where billing_country = 'USA';

select *
from invoice
order by total desc;

select *
from invoice
order by total;

select *
from invoice
where total > 5;

select count(*)
from invoice
where total < 5;

select *
from invoice
where billing_state in ('CA', 'TX', 'AZ');

select avg(total)
from invoice;

select sum(total)
from invoice;