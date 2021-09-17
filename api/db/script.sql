CREATE DATABASE IF NOT EXISTS
    myapi;
USE myapi;

CREATE TABLE IF NOT EXISTS products (
    id BIGINT(20) AUTO_INCREMENT,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    PRIMARY KEY (id)
);

INSERT INTO products VALUE(0,'Smartphone Xiami Redmi Note 10', 1750.00);
INSERT INTO products VALUE(0,'Smartphone Xiami Redmi Note 9', 1500.00);
INSERT INTO products VALUE(0,'Smartphone Xiami Redmi 9T', 1250.00);