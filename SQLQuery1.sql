CREATE DATABASE ProductDB;
USE ProductDB;

-- view data
select top 10 * from dbo.products;

-- total product
select COUNT(*) as Total_products
from dbo.products;

-- avg price
select avg(price) as Avg_Price
from dbo.products;

-- top products
select top 5 ProductName, Rating
from dbo.products
order by Rating desc;

-- category wise avg price
SELECT Category,
       round(AVG(Price),2) AS AvgCategoryPrice
FROM Products
GROUP BY Category;

