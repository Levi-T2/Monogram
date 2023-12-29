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
        "Video Console",
        "Expensive but it can do some cool stuff for sure.",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Consoles_MasterBracket1_Monogram_May2020_4555_1920x1280_crop_center.jpg.webp?v=1668433240",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Packaging_MasterClosedBracket1_Monogram_May20204494_1920x1280_crop_center.jpg.webp?v=1623682600",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/Consoles_KeysBracket1_Monogram_May2020_4571_7d282185-6761-40f0-9aee-27d4429957ab_1920x1280_crop_center.jpg.webp?v=1668433240",
        899
    );

DROP TABLE products;

DELETE FROM products WHERE id = 1;

-- Review Commands

CREATE TABLE
    IF NOT EXISTS reviews(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        title VARCHAR(100) NOT NULL,
        body VARCHAR(5000) NOT NULL,
        imgUrl VARCHAR(1000),
        productId INT NOT NULL,
        FOREIGN KEY (productId) REFERENCES products(id) ON DELETE CASCADE
    ) default charset utf8;

SELECT * FROM reviews;

INSERT INTO
    reviews (
        name,
        email,
        title,
        body,
        imgUrl,
        productId
    )
VALUES (
        "Test 2",
        "test@msn.com",
        "My Review",
        "Loved the product!",
        "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fhappy-man&psig=AOvVaw0SYi-dpejTp9G0zbiRZuFn&ust=1703905305008000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMiHy4bUs4MDFQAAAAAdAAAAABAD",
        5
    );