CREATE TABLE guestbooks(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL ,
    title VARCHAR(200) NOT NULL ,
    content text,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE guestbooks;

SELECT * from guestbooks;

INSERT INTO guestbooks(email, title, content)
VALUES ('guest@gmail.com','Hello','Hello'),
       ('guest2@gmail.com','Hello','Hello'),
       ('guest3@gmail.com','Hello','Hello'),
       ('eko@gmail.com','Hello','Hello'),
       ('eko@gmail.com','Hello','Hello'),
       ('eko@gmail.com','Hello','Hello');

DROP TABLE guestbooks


SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks;

SELECT e.email, Count(email) FROM (
SELECT email  FROM customers
UNION ALL
SELECT email  FROM guestbooks) e
GROUP BY e.email;


SELECT DISTINCT email from customers
WHERE email In (SELECT DISTINCT email from guestbooks);

SELECT distinct c.email FROM customers c
INNER JOIN guestbooks g on g.email = c.email;

SELECT DISTINCT c.email, g.email FROM customers c
LEFT JOIN guestbooks g on g.email = c.email
WHERE g.email IS NULL;



