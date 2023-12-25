-- Active: 1702941772316@@54.202.53.204@3306@monogram
-- CREATE TABLE IF NOT EXISTS accounts(
--   id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
-- createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
-- updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
--   name varchar(255) COMMENT 'User Name',
--   email varchar(255) COMMENT 'User Email',
--   picture varchar(255) COMMENT 'User Picture'
-- ) default charset utf8 COMMENT '';

-- Product Commands

CREATE TABLE
    IF NOT EXISTS products(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        name VARCHAR(255) NOT NULL,
        description VARCHAR(2500) NOT NULL,
        imgUrl VARCHAR(1000) NOT NULL,
        price INT NOT NULL
    ) default charset utf8;

SELECT * FROM products;

INSERT INTO
    products (
        name,
        description,
        imgUrl,
        price
    )
VALUES (
        "Audio Console",
        "Yep it's a audio console alright",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Everyday-Bundle-Mocks-final_1920x1281_crop_center.jpg.webp?v=1660013247",
        499
    );

DROP TABLE products;

DELETE FROM products WHERE id = 2;