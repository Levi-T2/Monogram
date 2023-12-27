-- Active: 1702941772316@@54.213.241.121@3306@monogram
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
        imgUrl2 VARCHAR(1000),
        imgUrl3 VARCHAR(1000),
        price INT NOT NULL
    ) default charset utf8;

SELECT * FROM products;

INSERT INTO
    products (
        name,
        description,
        imgUrl,
        imgUrl2,
        imgUrl3,
        price
    )
VALUES (
        "Audio Console",
        "Yep it's a audio console alright",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Everyday-Bundle-Mocks-final_1920x1281_crop_center.jpg.webp?v=1660013247",
        "https://cdn.shopify.com/s/files/1/0974/7950/files/Copyof20230521_MonogramCC_CharcoalAudioConsole_05_1920x1280_crop_center.jpg.webp?v=1685456413",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Consoles_DialBracket1_Monogram_May2020_4575_8bf241a5-911f-4b8e-9c91-daabd19701d7_1920x1280_crop_center.jpg.webp?v=1685456413",
        499
    );

DROP TABLE products;

DELETE FROM products WHERE id = 2;