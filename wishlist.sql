CREATE TABLE wishlist(
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL ,
    description text,
    primary key (id),
    CONSTRAINT fk_wishlist_product
                     FOREIGN KEY (id_product) REFERENCES products(id)
) ENGINE = InnoDB;

drop table wishlist;

desc wishlist;

SHOW CREATE TABLE wishlist;

ALTER TABLE wishlist
DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
Foreign Key (id_product) REFERENCES products(id)
ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO wishlist(id_product, description)
VALUES ('P0001', 'Makanan Kesukaan');

SELECT * FROM wishlist;

DELETE FROM products
WHERE id = 'Pxxxx';

INSERT INTO wishlist(id_product, description)
VALUES ('Pxxxx', 'Makanan Kesukaan');

select * FROM wishlist join products p on wishlist.id_product = p.id;

select w.id_product as 'wishlist id',
       p.id as 'product id',
       p.name as 'product name',
       w.description as 'wishlist description'
from wishlist as w
join products as p on w.id_product = p.id;

desc wishlist;

alter table wishlist
add column id_customer INT;

alter table wishlist
add constraint fk_wishlist_customer
foreign key (id_customer) references customers(id);

show create table wishlist;

select * from wishlist;

select * from products;

select * from customers;

UPDATE wishlist
set id_customer = 1
where id = 1;


select c.email as 'alamat email kustomer', p.id as 'id produk', p.name as 'nama produk', w.description as 'deskripsinya apa'
from wishlist w
join products p on p.id = w.id_product
join customers c on c.id = w.id_customer;


