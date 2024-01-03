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
        price,
        category
    )
VALUES (
        "Monogram Carrying Case",
        "Safety first, that is what this carry case is all about, so that you can securely take your Monogram console with you in a convenient, backpack ready case. Take your entire Monogram console or just a subset of individual modules with you on your travels, so you can edit effectively on the road, with the peace of mind that your console is safe and secure.",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/20221018_MonogramCC_Case_06_1920x1280_crop_center.jpg.webp?v=1666726898",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/20221018_MonogramCC_Case_02_1920x1280_crop_center.jpg.webp?v=1666799808",
        "https://cdn.shopify.com/s/files/1/0974/7950/products/20221018_MonogramCC_Case_03_1920x1280_crop_center.jpg.webp?v=1666799808",
        59,
        "component"
    );

DROP TABLE products;

DELETE FROM products WHERE id = 11;

ALTER TABLE products
ADD
    category ENUM(
        'console',
        'component',
        'other'
    );

UPDATE products SET category = "console" WHERE id = 5;

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