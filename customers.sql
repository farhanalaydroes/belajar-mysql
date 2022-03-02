CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    primary key (id),
    unique key email_unique (email)
) ENGINE = InnoDB;

describe customers;

ALTER TABLE customers
DROP CONSTRAINT email_unique;

ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE (email);

INSERT INTO customers(email, first_name, last_name)
VALUES ('eko@gmail.com','Eko','Kurniawan');

SELECT *
FROM products;

INSERT INTO customers(email, first_name, last_name)
VALUES ('ekoka@gmail.com','Eko','Kurniawan');


INSERT INTO products(id, name, category, price, quantity)
VALUES ('P0021','Permen','Lain - Lain',500,1000);

ALTER TABLE products
ADD CONSTRAINT price_check CHECK ( Price >= 1000 );

UPDATE products
SET price = 1000
WHERE id = 'P0021';

SHOW CREATE TABLE products;

INSERT INTO products(id, name, category, price, quantity)
VALUES ('P0022','Permen Lagi','Lain - Lain',500,1000);



