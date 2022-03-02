create table wallet(
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL ,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY id_customer_unique (id_customer),
    foreign key fk_wallet_customer (id_customer) references customers(id)
) ENGINE = InnoDB;

DESCRIBE wallet;

SELECT * FROM customers;

INSERT INTO wallet(id_customer) VALUES (1), (3);

SELECT w.balance, c.email
from wallet w
join customers c on w.id_customer = c.id;

