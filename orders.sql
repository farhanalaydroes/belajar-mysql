CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    total INT NOT NULL ,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

DESCRIBE orders;

CREATE TABLE orders_detail(
    id_product VARCHAR(10) not null ,
    id_order INT NOT NULL ,
    price INT NOT NULL ,
    quantity INT NOT NULL ,
    PRIMARY KEY (id_product, id_order)
)ENGINE = InnoDB;

DESCRIBE orders_detail;

ALTER TABLE orders_detail
ADD CONSTRAINT fk_orders_detail_product
FOREIGN KEY (id_product) references products(id);

ALTER TABLE orders_detail
ADD CONSTRAINT fk_orders_detail_orders
FOREIGN KEY (id_order) references orders(id);

Show create table orders_detail;

SELECT * FROM orders;

INSERT INTO orders(total) VALUES (50000);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0001', 1, 25000, 1),
       ('P0002', 1, 25000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0003', 2, 25000, 1),
       ('P0004', 3, 25000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0001', 2, 25000, 1),
       ('P0003', 3, 25000, 1);

SELECT * FROM orders_detail;


select *
FROM orders o
JOIN orders_detail od on od.id_order = o.id
JOIN products p on p.id = od.id_product;

select o.id,p.id,p.name,od.quantity,od.price
FROM orders o
JOIN orders_detail od on od.id_order = o.id
JOIN products p on p.id = od.id_product;


