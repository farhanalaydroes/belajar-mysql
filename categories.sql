CREATE TABLE categories(
    id VARCHAR(10) not null ,
    name varchar(100) not null ,
    primary key (id)
) ENGINE = InnoDB;

DESCRIBE categories;

ALTER TABLE products
DROP column categories;

DESCRIBE products;

ALTER TABLE products
ADD COLUMN id_category VARCHAR(10);

ALTER TABLE products
ADD CONSTRAINT fk_product_categories
foreign key (id_category) references categories(id);

show create table products;


select * from products;

insert into categories(id, name) VALUES ('C0001', 'Makanan'),
                                        ('C0002', 'Minuman'),
                                        ('C0003', 'Lain-Lain');

SELECT * from categories;

UPDATE products p
SET p.id_category = 'C0001'
WHERE id IN ('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0007', 'P0008', 'P0009', 'P0010', 'P0011', 'P0012', 'P0013', 'P0014', 'P0015', 'P0016', 'P0017', 'P0018' );

UPDATE products p
SET p.id_category = 'C0002'
WHERE id IN ('P0019', 'P0020');

UPDATE products p
SET p.id_category = 'C0003'
WHERE id IN ('P0021');

select p.id as product_id, p.name as product_name, c.name as name_category
from products p
join categories c on c.id = p.id_category;

select * from categories;


insert into categories(id, name) VALUES ('C0004', 'Oleh-Oleh'),
                                        ('C0005', 'Gadget');

SELECT *
FROM categories c
INNER JOIN products p on p.id_category = c.id;

SELECT *
FROM categories c
JOIN products p on p.id_category = c.id;

SELECT *
FROM categories c
LEFT JOIN products p on p.id_category = c.id;

SELECT *
FROM categories c
Right JOIN products p on p.id_category = c.id;

SELECT *
FROM categories
CROSS JOIN products;


CREATE TABLE numbers(
    id INT NOT NULL,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

INSERT INTO numbers(id) VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

SELECT * from numbers;

SELECT numbers1.id angka1, numbers2.id angka2, (numbers1.id * numbers2.id) hasil_perkalian
FROM  numbers numbers1
CROSS JOIN numbers numbers2
ORDER BY numbers1.id, numbers2.id;

SELECT *
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
    );

# SELECT MAX(price)
# FROM (
#      SELECT price
#      FROM categories
#      INNER JOIN
#          )

Select MAX(price)
FROM products;


SELECT MAX(price)
from (SELECT price
FROM categories c
JOIN products p on P.id_category = c.id) as cp;

SELECT * FROM products;

SELECT price
FROM categories c
JOIN products p on P.id_category = c.id;

UPDATE products
set price = 1000000
WHERE id = 'X0003';


