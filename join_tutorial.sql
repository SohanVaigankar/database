-- JOIN TUTORIAL DB
SHOW TABLES;

DESC orders;

DESC customers;

-- Joining 2 tables 
-- 
-- Display all OrderID, Customer Name And Order Date
-- 
-- SELECT
--     Orders.OrderID,
--     Customers.CustomerName,
--     Orders.OrderDate
-- FROM
--     Orders
--     INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
-- 
-- Joining 3 Tables
-- 
-- Display all OrderID, Customer Name And Shipper Name
-- SELECT
--     Orders.OrderID,
--     Customers.CustomerName,
--     Shippers.ShipperName
-- FROM
--     (
--         (
--             Orders
--             INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
--         )
--         INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
--     );
-- 
-- 
-- Left Join
-- 
-- Display all Customer Name And OrderID
-- SELECT
--     Customers.CustomerName,
--     Orders.OrderID
-- FROM
--     (
--         Customers
--         LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--     );
-- 
--
-- UNION
-- SELECT
--     Customers.City
-- FROM
--     Customers
-- UNION ALL
-- SELECT
--     Suppliers.City
-- FROM
--     Suppliers;

SHOW ENGINES;