/* SHOW DATABASES; */
/* CREATE DATABASE PHOTO_STUDIO; */
/* SHOW DATABASES; */
/* DROP DATABASE TEST; */
/* SHOW DATABASES; */
/* USE PHOTO_STUDIO;
SELECT DATABASE(); */
/* CREATE TABLE cameras( model_name VARCHAR(30),
quantity INT); */
/* DESC cameras; */
/* DROP TABLE cameras; */
/* SHOW TABLES; */
/* DROP TABLE canon_cameras; */
-- CREATE TABLE
--     canon_cameras (model_name VARCHAR(30), quantity INT);
-- INSERT INTO
--     CANON_CAMERAS (model_name, quantity)
-- VALUES
--     ("70-D", 300),
--     ("80-D", 400),
--     ("EOS-R", 500),
--     ("50-D", 100);
/* SELECT model_name, quantity FROM canon_cameras WHERE quantity >= 300; */
-- CREATE TABLE
--     customers (
--         id INT NOT NULL AUTO_INCREMENT,
--         first_name VARCHAR(30) NOT NULL,
--         last_name VARCHAR(30),
--         character_name VARCHAR(30) NOT NULL,
--         email VARCHAR(40) NOT NULL DEFAULT "NA",
--         universe VARCHAR(20) NOT NULL,
--         amount INT,
--         PRIMARY KEY (id)
--     );
/* SHOW TABLES; */
/* DESC customers; */
-- INSERT INTO
--     customers (first_name, last_name, character_name, email, amount, universe)
-- VALUES
--     ("Tony", "Stark", "Iron man", "ironman@avengers.com", 10000, "marvel"),
--     ("Clint", "Barton", "Hawkeye", "hawkeye@avengers.com", 500, "marvel"),
--     ("Natasha", "Romanoff", "Black Widow", "blackwidow@avengers.com", 100, "marvel"),
--     ("Thor", "Odinson", "Thor", "thor@avengers.com", 5000, "marvel"),
--     ("Loki", "Odinson", "Loki", "loki@avengers.com", 12000, "marvel"),
--     ("Bruce", "Banner", "Hulk", "hulk@avengers.com", 10, "marvel"),
--     ("Scott", "Lang", "Ant Man", "antman@avengers.com", 1700, "marvel"),
--     ("Steven", "Strange", "Doctor Strange", "doctorstrange@avengers.com", 140, "marvel"),
--     ("Peter", "Parker", "Spider-man", "spiderman@avengers.com", 1080, "marvel"),
--     ("Steve", "Rogers", "Captain America", "captainamerica@avengers.com", 4000, "marvel"),
--     ("Bucky", "Barnes", "Winter Soldier", "wintersoldier@avengers.com", 14000, "marvel"),
--     ("Sam", "Wilson", "Falcon", "falcon@avengers.com", 11000, "marvel"),
--     ("T'Challa", NULL, "Black Panther", "blackpanther@avengers.com", 300, "marvel"),
--     ("Rocket", "Racoon", "Rocket", "rocket@gotg.com", 1000, "marvel"),
--     ("Peter", "Quill", "Star Lord", "starlord@gotg.com", 1000, "marvel"),
--     ("Drax", NULL, "Drax", "drax@gotg.com", 1002, "marvel"),
--     ("Groot", NULL, "Groot", "groot@gotg.com", 1002, "marvel"),
--     ("Bruce", "Wayne", "Batman", "batman@justiceleage.com", 1002, "dc"),
--     ("Clark", "Kent", "Superman", "superman@justiceleage.com", 1002, "dc"),
--     ("Diana", NULL, "Wonder woman", "wonderwoman@justiceleage.com", 1002, "dc"),
--     ("Hal", "Jordan", "Green Lantern", "greenlantern@justiceleage.com", 1002, "dc"),
--     ("Oliver", "Queen", "Green Arrow", "greenarrow@justiceleage.com", 1002, "dc"),
--     ("Arthur", "Curry", "Aquaman", "aquaman@justiceleage.com", 1002, "dc"),
--     ("J'ohn", "J'onzz", "Martian Manhunter", "martianmanhunter@justiceleage.com", 1002, "dc"),
-- ("Barry", "Allen", "Flash", "flash@justiceleage.com", 1002, "dc");
--  SELECT first_name FROM customers ORDER BY amount DESC LIMIT 2, 5;
-- UPDATE customers SET amount=690 WHERE character_name="flash";
-- DELETE FROM customers WHERE character_name="shaktiman";
-- SELECT DISTINCT COUNT(CONCAT(first_name, last_name))  FROM customers;
-- SELECT  universe, COUNT(*) as "Customer Count" FROM customers GROUP BY universe;
-- SELECT first_name, last_name FROM customers WHERE amount = (SELECT MIN(amount) FROM customers);
-- SELECT
--     first_name,
--     amount,
--     CASE
--         WHEN amount > 10000 THEN 'PLATINUM TIER'
--         WHEN amount > 500 THEN 'GOLD TIER'
--         ELSE 'FREE TIER'
--     END AS "Customer Tier"
-- FROM
--     customers;
-- 
-- 
-- 
-- CREATE TABLE
--     users (
--         name VARCHAR(50),
--         col1 DATE,
--         col2 TIME,
--         col3 DATETIME
--     );
-- INSERT INTO
--     users (name, col1, col2, col3)
-- VALUES
--     ("sohan", "2024-06-09", "10:14:22", "2025-06-09 11:12:13"),
--     ("vaigankar", "2024-06-10", "11:15:23", NOW());
-- DESC users;
-- SELECT
--     DAY (col3) as Day,
--     MONTH (col3) as Month,
--     YEAR (col3) as Year,
-- FROM
--     users;
-- DROP TABLE users;
-- SHOW TABLES;
-- 
-- 
-- 
-- CREATE TABLE
--     users (
--         id INT AUTO_INCREMENT PRIMARY KEY,
--         name VARCHAR(30) NOT NULL,
--         email VARCHAR(50),
--         updated_at DATETIME NOT NULL,
--         created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
--     );

-- DESC users;

-- CREATE TABLE
--     orders (
--         id INT AUTO_INCREMENT PRIMARY KEY,
--         order_description VARCHAR(100),
--         amount INT NOT NULL,
--         cart_items JSON,
--         user_id INT NOT NULL,
--         updated_at DATETIME NOT NULL,
--         created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--         FOREIGN KEY (user_id) REFERENCES users (id)
--     );

-- DESC orders;

-- ALTER TABLE users DROP name;
-- ALTER TABLE users ADD first_name VARCHAR(30) NOT NULL;
-- ALTER TABLE users ADD last_name VARCHAR(30);
-- ALTER TABLE users ADD mobile VARCHAR(10);

-- DESC users;

-- INSERT INTO
--     users (first_name, last_name, mobile, email, updated_at)
-- VALUES
--     ("Tony", "Stark", "9999999999", "tony@starkindustries.com", NOW()),
--     ("Peter", "Parker", "8888888888", "peter@starkindustries.com", NOW()),
--     ("Natasha", "Romanoff", "7777777777", "natasha@sheild.com", NOW()),
--     ("Bruce", "Banner", "9898989898", "bruce@starkindustries.com", NOW());


-- SELECT * FROM users;


-- INSERT INTO
--     orders (
--         cart_items,
--         amount,
--         order_description,
--         user_id,
--         updated_at
--     )
-- VALUES
--     ( '{"item_name": "Mackbook Air 13 2020", "price": 1000, "discount": 20}', 800, "Coupon: SALE20", 3, NOW()),
--     ( '{"item_name": "Mackbook Pro 16 2020", "price": 1500, "discount": 30}', 1050, "Coupon: SALE30", 1, NOW());

-- 
-- SELECT * FROM orders;
-- 
-- 
-- 
