show engines;
show tables;

create table barang(
    id INT,
    name VARCHAR(100),
    harga INT,
    jumlah INT

) ENGINE = InnoDB;

describe barang;

show create table barang;

alter table barang
add column deskipsi text;

alter table barang
modify nama varchar(200) after harga

alter table barang
modify nama varchar(100) after id

alter table barang
modify id int not null

alter table barang
modify nama varchar(100) not null first

alter table barang
modify harga int null

alter table barang
modify jumlah int not null

desc barang

alter table barang
modify jumlah int not null default 0;

alter table barang
modify harga int not null default 0;

alter table barang
add waktu_dibuat timestamp not null default current_timestamp;

insert into barang (id, nama) Values (1, 'apel')

select * from barang;

truncate barang

show tables

drop table barang


create table products(
    id          VARCHAR(10)  NOT NULL,
    nama        VARCHAR(100) NOT NULL,
    description text,
    price       INT unsigned not null,
    quantity    INT unsigned not null default 0,
    created_at  timestamp    not null default current_timestamp
) engine = InnoDB

show tables;

describe products;

Insert Into products(id, name, price, quantity)
VALUES ('P0021', 'Mie Ayam Original', 15000, 100);

Insert Into products(id, nama, description, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso','Mie Ayam Original + Bakso', 20000, 100);

    SELECT * from products;

delete from products
where id = 'P0002';

Insert Into products(id, nama, price, quantity)
VALUES ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100),
       ('P0006', 'Mie Ayam Jumbo', 26000, 100),
       ('P0007', 'Mie Ayam Telor', 22000, 100),
       ('P0008', 'Mie Ayam Pakai Nasi', 18000, 100),
       ('P0009', 'Ayam Goremg', 10000, 100),
       ('P0010', 'Ayam Sabana', 15000, 100),
       ('P0011', 'Mie Ayam Beneran', 25000, 100),
       ('P0012', 'Mie Ayam Apa Bukan', 30000, 100),
       ('P0013', 'Ayam KFC', 18000, 100),
       ('P0014', 'Ayam Mc Donald', 19000, 100),
       ('P0015', 'Ayam AW', 20000, 100),
       ('P0016', 'Mie Indomie', 25000, 100),
       ('P0017', 'Mie Sedap', 15000, 100),
       ('P0018', 'Mie Ayam Boongan', 20000, 100),
       ('P0019', 'Es Teh Manis', 5000, 100),
       ('P0020', 'Es Teh Tawar', 2000, 100);


select * from products;

select nama
from products;

ALTER TABLE products
ADD PRIMARY KEY (ID);

desc products;

select id, nama, price, quantity
from products
where id = 'P0001';

select id, nama, price, quantity
from products
where nama = 'Mie Ayam Bakso';

DESCRIBE products;

ALTER TABLE products
ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain - Lain')
AFTER nama;


select * from products;

UPDATE products
SET category = 'Lain - Lain'
WHERE id = 'P0012';

UPDATE products
SET quantity = 200
WHERE id = 'P0012';


UPDATE products
SET price = price + 5000
Where id = 'P0005';

DELETE
From products
WHere id = 'P0021;'

select id       as kode,
       name     as nama,
       category as kategori,
       price    as harga,
       quantity as jumlah
from products;

select p.id       as kode,
       p.name     as nama,
       p.category as kategori,
       p.price    as harga,
       p.quantity as jumlah
from products as p;


SELECT *
from products
where quantity >100;

SELECT *
from products
where quantity >= 100;

select *
from products as p
where p.category != 'Makanan';

select id, name, price, quantity
from products
where quantity >100 and price > 20000;

select * from products
where products.category = 'Makanan' AND products.price <20000;

select id, name, price, quantity
from products as p
where p.quantity > 100 OR p.price > 20000;

SELECT id, name, price, quantity
from products as p
where (p.category = 'Makanan' OR p.quantity > 500) AND p.price > 20000;

select *
from products as p
where p.name like '%Mie%';

select *
from products as p
where p.name like '%Bakso';

select *
from products
where description is null;

select *
from products
where description is not null;

select *
from products
where price not between 10000 and 20000;

select *
from products as p
where p.category not in ('Makanan', 'Minuman');

SELECT p.id, p.category, p.name
FROM products as p
where p.price > 20000
order by p.category
limit 2, 2;

select distinct price
from products
order by price asc;

select id, name, price DIV 1000 As 'Price in K'
from products;

select pi();

select power(10,2);

select id, cos(price), sin(price), tan(price) from products;

select id, name, price
from products
where price div 1000 > 15;

ALTER TABLE products
ADD FULLTEXT products_fulltext (name, description);

Show create table products;

SELECT * FROM products;

SELECT *
FROM products
WHERE name LIKE '%ayam%' OR description LIKE '%ayam%';

SELECT *
FROM products
WHERE MATCH(name, description)
    AGAINST ('ayam' IN NATURAL LANGUAGE MODE );

SELECT *
FROM products
WHERE MATCH(name, description)
    AGAINST ('+Ayam -Bakso' IN BOOLEAN MODE );

SELECT *
FROM products
WHERE MATCH(name, description)
    AGAINST ('bakso' WITH QUERY EXPANSION );

SELECT *
FROM products
WHERE MATCH(name, description);

INSERT INTO products(id, name, category, price, quantity)
VALUES ('Pxxxx', 'Mie Ayam Ceker','Lain - Lain', 20000, 100);

select * from products;


Insert Into products(id, name, price, quantity)
VALUES ('X0001', 'X Satu', 20000, 200),
       ('X0002', 'X Dua', 25000, 300),
       ('X0003', 'X Tiga', 27000, 500);

