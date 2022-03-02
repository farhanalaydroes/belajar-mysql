CREATE TABLE sellers
(
    id    INT          NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email),
    INDEX name_index (name)
)ENGINE = InnoDB;

DESCRIBE sellers;

Show CREATE TABLE sellers;


SELECT * FROM sellers
WHERE name = 'X';
