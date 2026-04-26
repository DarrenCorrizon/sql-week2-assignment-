-- CREATE schema assignment
CREATE SCHEMA assignment;

set search_path = assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select * from products;
select count (*) as total_products
from products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price from products
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select 
AVG(price) as average_price
from products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
select * from sales;
select SUM(total_amount) as total_sales
from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select * from customers;
select distinct membership_status
from customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select
concat(first_name,' ',last_name) as full_name
from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select * from products;
select product_name, category from products
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select MAX(price) as highest_price
from products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select * from sales;
select product_id, 
count (quantity_sold) as number_of_sales
from sales
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id,
sum(quantity_sold) as total_quantity_sold
from sales
group by product_id
order by total_quantity_sold desc;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select * from products;
select MIN(price) as lowest_price
from products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select * from sales;
select * from products;
select distinct s.customer_id
from sales s
join products p
on s.product_id = p.product_id
where price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
select p.product_name, SUM(s.total_amount) as total_sales_amount
from sales s
join products p
on s.product_id=p.product_id
group by p.product_name;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select * from customers;
select * from sales;
select c.first_name, sum(s.total_amount) as total_by_customer
from customers c
join sales s
on c.customer_id = s.customer_id
group by c.first_name
order by total_by_customer desc;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select * from customers;
select * from sales;
select * from products;
SELECT c.first_name,
       c.last_name,
       p.product_name,
       s.quantity_sold
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
JOIN Products p
  ON s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT 
    c1.first_name,
    c1.last_name,
    c2.first_name,
    c2.last_name,
    c1.membership_status
FROM Customers c1
JOIN Customers c2
    ON c1.membership_status = c2.membership_status
   AND c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select * from sales;
select * from products;
select p.product_name, count (*) as total_sales_per_product
from sales s
join products p
on s.product_id=p.product_id
group by p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select * from products;
select product_name, price, supplier, stock_quantity from products
where stock_quantity < 10
order by stock_quantity desc;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
SELECT p.product_name, SUM(s.quantity_sold) AS total_sales_quantity
FROM Sales s
JOIN Products p
  ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(s.quantity_sold) > 5
ORDER BY total_sales_quantity DESC; 

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select * from customers;
select * from products;
select * from sales;
SELECT DISTINCT c.first_name, c.last_name
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
JOIN Products p
  ON s.product_id = p.product_id
WHERE p.category IN ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.

select p.product_name, sum(s.total_amount)as sales_per_product
from sales s
join products p
on s.product_id=p.product_id
group by p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
SELECT DISTINCT c.first_name, c.last_name
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2024-01-01';

-- 24. Write a query to find the customers with the highest total sales in 2023.
SELECT c.first_name, c.last_name, SUM(s.total_amount) AS total_sales
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2024-01-01'
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_sales DESC;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select * from products;
SELECT p.product_name, p.price
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
ORDER BY p.price DESC
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT COUNT(DISTINCT s.customer_id) AS total_customers
FROM Sales s
JOIN Products p
  ON s.product_id = p.product_id
WHERE p.price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT COUNT(*) AS total_sales
FROM Sales s
JOIN Customers c
  ON s.customer_id = c.customer_id
WHERE c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT p.product_name, i.stock_quantity
FROM Products p
JOIN Inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT c.first_name, c.last_name,
       COUNT(DISTINCT s.product_id) AS different_products_bought,
       SUM(s.quantity_sold) AS total_quantity_bought
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT s.product_id) > 5;

-- 30. Write a query to find the average quantity sold per product.
SELECT p.product_name, AVG(s.quantity_sold) AS average_quantity_sold
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT COUNT(*) AS number_of_sales
FROM Sales
WHERE sale_date >= '2023-12-01'
  AND sale_date < '2024-01-01';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2024-01-01'
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
SELECT DISTINCT p.product_name, i.stock_quantity
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
JOIN Inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
SELECT DISTINCT c.first_name, c.last_name
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date
                      AND c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT s.sale_id, p.product_name, p.price, s.quantity_sold, s.total_amount
FROM Sales s
JOIN Products p
  ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT c.first_name, c.last_name, COUNT(*) AS purchase_count
FROM Sales s
JOIN Customers c
  ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY purchase_count DESC
LIMIT 1;

-- 38. Write a query to find the total quantity of products sold per customer.
SELECT c.first_name, c.last_name, SUM(s.quantity_sold) AS total_quantity_sold
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
SELECT 'Highest Stock' AS stock_type, p.product_name, i.stock_quantity
FROM Products p
JOIN Inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity = (SELECT MAX(stock_quantity) FROM Inventory)

UNION ALL

SELECT 'Lowest Stock' AS stock_type, p.product_name, i.stock_quantity
FROM Products p
JOIN Inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity = (SELECT MIN(stock_quantity) FROM Inventory);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT p.product_name, SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
WHERE p.product_name LIKE '%Phone%'
GROUP BY p.product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
SELECT c.first_name, c.last_name, p.product_name, s.total_amount
FROM Customers c
INNER JOIN Sales s
  ON c.customer_id = s.customer_id
INNER JOIN Products p
  ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold';

-- 42. Write a query to find the total sales of products by category.
SELECT p.category, SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
SELECT p.product_name,
       EXTRACT(YEAR FROM s.sale_date) AS sale_year,
       EXTRACT(MONTH FROM s.sale_date) AS sale_month,
       SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.product_name,
         EXTRACT(YEAR FROM s.sale_date),
         EXTRACT(MONTH FROM s.sale_date)
ORDER BY p.product_name, sale_year, sale_month;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT DISTINCT p.product_name, i.stock_quantity
FROM Sales s
JOIN Inventory i
  ON s.product_id = i.product_id
JOIN Products p
  ON s.product_id = p.product_id
WHERE i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
SELECT c.first_name, c.last_name, SUM(s.total_amount) AS total_purchases
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_purchases DESC
LIMIT 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
SELECT COUNT(DISTINCT product_id) AS unique_products_sold
FROM Sales
WHERE sale_date >= '2023-01-01'
  AND sale_date < '2024-01-01';

-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT p.product_name
FROM Products p
WHERE p.product_id NOT IN (
    SELECT DISTINCT s.product_id
    FROM Sales s
    WHERE s.sale_date >= CURRENT_DATE - INTERVAL '6 months');

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
SELECT p.product_name, p.price, SUM(s.quantity_sold) AS total_quantity_sold
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_name, p.price;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
SELECT c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2024-01-01'
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT p.product_name, p.price, SUM(s.quantity_sold) AS total_quantity_sold
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
WHERE p.price > 200
GROUP BY p.product_name, p.price
HAVING SUM(s.quantity_sold) > 100;

-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT SUM(total_amount) AS customer_total
        FROM Sales
        GROUP BY customer_id
    ) AS avg_spending);

-- 52. Which products are priced higher than the average price of all products?
SELECT product_id, product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products);

-- 53. Which customers have never made a purchase?
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
LEFT JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

-- 54. Which products have never been sold?
SELECT p.product_id, p.product_name
FROM Products p
LEFT JOIN Sales s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

-- 55. Which customer made the single most expensive purchase (total amount)?
SELECT c.customer_id, c.first_name, c.last_name, s.total_amount
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
WHERE s.total_amount = (
    SELECT MAX(total_amount)
    FROM Sales);

-- 56. Which products have total sales greater than the average total sales across all products?
SELECT p.product_id, p.product_name, SUM(s.total_amount) AS total_sales
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.total_amount) > (
    SELECT AVG(product_total)
    FROM (
        SELECT SUM(total_amount) AS product_total
        FROM Sales
        GROUP BY product_id
    ) AS avg_product_sales);

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
SELECT customer_id, first_name, last_name, registration_date
FROM Customers
WHERE registration_date < (
    SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE
    FROM Customers);

-- 58. Which products have a price higher than the average price within their own category?
SELECT p1.product_id, p1.product_name, p1.category, p1.price
FROM Products p1
WHERE p1.price > (
    SELECT AVG(p2.price)
    FROM Products p2
    WHERE p2.category = p1.category);

-- 59. Which customers have spent more than the customer with ID = 10?
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM Customers c
JOIN Sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(s.total_amount) > (
    SELECT COALESCE(SUM(total_amount), 0)
    FROM Sales
    WHERE customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT p.product_id, p.product_name, SUM(s.quantity_sold) AS total_quantity_sold
FROM Products p
JOIN Sales s
  ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > (
    SELECT AVG(product_quantity)
    FROM (
        SELECT SUM(quantity_sold) AS product_quantity
        FROM Sales
        GROUP BY product_id
    ) AS avg_quantity);

-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
WITH customer_spending AS (
    SELECT customer_id, SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cs.total_spent
FROM customer_spending cs
JOIN Customers c
  ON cs.customer_id = c.customer_id
ORDER BY cs.total_spent DESC
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
WITH product_quantity AS (
    SELECT product_id, SUM(quantity_sold) AS total_quantity_sold
    FROM Sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, pq.total_quantity_sold
FROM product_quantity pq
JOIN Products p
  ON pq.product_id = p.product_id
ORDER BY pq.total_quantity_sold DESC
LIMIT 3;
-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
WITH category_sales AS (
    SELECT p.category, SUM(s.total_amount) AS total_revenue
    FROM Sales s
    JOIN Products p
      ON s.product_id = p.product_id
    GROUP BY p.category
)
SELECT category, total_revenue
FROM category_sales
ORDER BY total_revenue DESC
LIMIT 1;
-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
WITH customer_purchases AS (
    SELECT customer_id, COUNT(*) AS purchase_count
    FROM Sales
    GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cp.purchase_count
FROM customer_purchases cp
JOIN Customers c
  ON cp.customer_id = c.customer_id
WHERE cp.purchase_count > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
WITH product_quantity AS (
    SELECT product_id, SUM(quantity_sold) AS total_quantity_sold
    FROM Sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, pq.total_quantity_sold
FROM product_quantity pq
JOIN Products p
  ON pq.product_id = p.product_id
WHERE pq.total_quantity_sold > (
    SELECT AVG(total_quantity_sold)
    FROM product_quantity);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
WITH customer_spending AS (
    SELECT customer_id, SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cs.total_spent
FROM customer_spending cs
JOIN Customers c
  ON cs.customer_id = c.customer_id
WHERE cs.total_spent > (
    SELECT AVG(total_spent)
    FROM customer_spending);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
WITH product_revenue AS (
    SELECT product_id, SUM(total_amount) AS total_revenue
    FROM Sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, pr.total_revenue
FROM product_revenue pr
JOIN Products p
  ON pr.product_id = p.product_id
ORDER BY pr.total_revenue DESC;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
WITH monthly_sales AS (
    SELECT DATE_TRUNC('month', sale_date) AS sales_month,
           SUM(total_amount) AS total_revenue
    FROM Sales
    GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT sales_month, total_revenue
FROM monthly_sales
ORDER BY total_revenue DESC
LIMIT 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
WITH product_customers AS (
    SELECT product_id, COUNT(DISTINCT customer_id) AS customer_count
    FROM Sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, pc.customer_count
FROM product_customers pc
JOIN Products p
  ON pc.product_id = p.product_id
WHERE pc.customer_count > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
WITH product_quantity AS (
    SELECT product_id, SUM(quantity_sold) AS total_quantity_sold
    FROM Sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, pq.total_quantity_sold
FROM product_quantity pq
JOIN Products p
  ON pq.product_id = p.product_id
WHERE pq.total_quantity_sold < (
    SELECT AVG(total_quantity_sold)
    FROM product_quantity);
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id,
       first_name,
       last_name,
       total_spent,
       RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM customer_spending
ORDER BY spending_rank, customer_id;

-- 72. Rank products based on total quantity sold.
WITH product_quantity AS (
    SELECT p.product_id,
           p.product_name,
           COALESCE(SUM(s.quantity_sold), 0) AS total_quantity_sold
    FROM products p
    LEFT JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT product_id,
       product_name,
       total_quantity_sold,
       RANK() OVER (ORDER BY total_quantity_sold DESC) AS quantity_rank
FROM product_quantity
ORDER BY quantity_rank, product_id;

-- 73. Identify the 3rd highest spending customer.
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT customer_id,
           first_name,
           last_name,
           total_spent,
           DENSE_RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
    FROM customer_spending
)
SELECT customer_id, first_name, last_name, total_spent
FROM ranked_customers
WHERE spending_rank = 3;

-- 74. Identify the 2nd most expensive product.
WITH ranked_products AS (
    SELECT product_id,
           product_name,
           price,
           DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
    FROM products
)
SELECT product_id, product_name, price
FROM ranked_products
WHERE price_rank = 2;

-- 75. Show the ranking of products within each category based on price.
SELECT product_id,
       product_name,
       category,
       price,
       RANK() OVER (PARTITION BY category ORDER BY price DESC) AS category_price_rank
FROM products
ORDER BY category, category_price_rank, product_id;

-- 76. Show the ranking of customers based on the number of purchases they made.
WITH customer_purchases AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COUNT(s.sale_id) AS purchase_count
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id,
       first_name,
       last_name,
       purchase_count,
       RANK() OVER (ORDER BY purchase_count DESC) AS purchase_rank
FROM customer_purchases
ORDER BY purchase_rank, customer_id;

-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT sale_id,
       sale_date,
       total_amount,
       SUM(total_amount) OVER (
           ORDER BY sale_date, sale_id
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total_sales
FROM sales
ORDER BY sale_date, sale_id;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
SELECT sale_id,
       sale_date,
       total_amount,
       LAG(total_amount) OVER (ORDER BY sale_date, sale_id) AS previous_sale_amount
FROM sales
ORDER BY sale_date, sale_id;

-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT sale_id,
       sale_date,
       total_amount,
       LEAD(total_amount) OVER (ORDER BY sale_date, sale_id) AS next_sale_amount
FROM sales
ORDER BY sale_date, sale_id;

-- 80. Divide customers into 4 groups based on total spending.
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id,
       first_name,
       last_name,
       total_spent,
       NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_group
FROM customer_spending
ORDER BY spending_group, total_spent DESC, customer_id;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       COUNT(DISTINCT p.category) AS category_count
FROM customers c
JOIN sales s
  ON c.customer_id = s.customer_id
JOIN products p
  ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category) > 1
ORDER BY category_count DESC, c.customer_id;

-- 82. Which customers purchased products within 7 days of registering?
SELECT DISTINCT c.customer_id,
       c.first_name,
       c.last_name
FROM customers c
JOIN sales s
  ON c.customer_id = s.customer_id
WHERE s.sale_date >= c.registration_date
  AND s.sale_date <= c.registration_date + INTERVAL '7 days'
ORDER BY c.customer_id;

-- 83. Which products have lower stock remaining than the average stock quantity?
SELECT p.product_id,
       p.product_name,
       i.stock_quantity
FROM products p
JOIN inventory i
  ON p.product_id = i.product_id
WHERE i.stock_quantity < (
    SELECT AVG(stock_quantity)
    FROM inventory
)
ORDER BY i.stock_quantity, p.product_id;

-- 84. Which customers purchased the same product more than once?
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       p.product_id,
       p.product_name,
       COUNT(*) AS purchase_count
FROM customers c
JOIN sales s
  ON c.customer_id = s.customer_id
JOIN products p
  ON s.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name, p.product_id, p.product_name
HAVING COUNT(*) > 1
ORDER BY purchase_count DESC, c.customer_id, p.product_id;

-- 85. Which product categories generated the highest total revenue?
WITH category_revenue AS (
    SELECT p.category,
           SUM(s.total_amount) AS total_revenue
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.category
),
ranked_categories AS (
    SELECT category,
           total_revenue,
           DENSE_RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM category_revenue
)
SELECT category, total_revenue
FROM ranked_categories
WHERE revenue_rank = 1;

-- 86. Which products are among the top 3 most sold products?
WITH product_quantity AS (
    SELECT p.product_id,
           p.product_name,
           SUM(s.quantity_sold) AS total_quantity_sold
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
ranked_products AS (
    SELECT product_id,
           product_name,
           total_quantity_sold,
           DENSE_RANK() OVER (ORDER BY total_quantity_sold DESC) AS quantity_rank
    FROM product_quantity
)
SELECT product_id, product_name, total_quantity_sold
FROM ranked_products
WHERE quantity_rank <= 3
ORDER BY quantity_rank, product_id;

-- 87. Which customers purchased the most expensive product?
WITH most_expensive_products AS (
    SELECT product_id, product_name, price
    FROM products
    WHERE price = (SELECT MAX(price) FROM products)
)
SELECT DISTINCT c.customer_id,
       c.first_name,
       c.last_name,
       mep.product_id,
       mep.product_name,
       mep.price
FROM customers c
JOIN sales s
  ON c.customer_id = s.customer_id
JOIN most_expensive_products mep
  ON s.product_id = mep.product_id
ORDER BY c.customer_id, mep.product_id;

-- 88. Which products were purchased by the highest number of unique customers?
WITH product_customers AS (
    SELECT p.product_id,
           p.product_name,
           COUNT(DISTINCT s.customer_id) AS unique_customer_count
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
ranked_products AS (
    SELECT product_id,
           product_name,
           unique_customer_count,
           DENSE_RANK() OVER (ORDER BY unique_customer_count DESC) AS customer_rank
    FROM product_customers
)
SELECT product_id, product_name, unique_customer_count
FROM ranked_products
WHERE customer_rank = 1;

-- 89. Which customers made purchases above the average sale amount?
SELECT DISTINCT c.customer_id,
       c.first_name,
       c.last_name
FROM customers c
JOIN sales s
  ON c.customer_id = s.customer_id
WHERE s.total_amount > (
    SELECT AVG(total_amount)
    FROM sales
)
ORDER BY c.customer_id;

-- 90. Which customers purchased more products than the average quantity purchased per customer?
WITH customer_quantity AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.quantity_sold), 0) AS total_quantity_purchased
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id,
       first_name,
       last_name,
       total_quantity_purchased
FROM customer_quantity
WHERE total_quantity_purchased > (
    SELECT AVG(total_quantity_purchased)
    FROM customer_quantity
)
ORDER BY total_quantity_purchased DESC, customer_id;

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT customer_id,
           first_name,
           last_name,
           total_spent,
           CUME_DIST() OVER (ORDER BY total_spent DESC) AS spending_percentile
    FROM customer_spending
)
SELECT customer_id, first_name, last_name, total_spent, spending_percentile
FROM ranked_customers
WHERE spending_percentile <= 0.10
ORDER BY total_spent DESC, customer_id;

-- 92. Which products contribute to the top 50% of total revenue?
WITH product_revenue AS (
    SELECT p.product_id,
           p.product_name,
           SUM(s.total_amount) AS total_revenue
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
),
ordered_revenue AS (
    SELECT product_id,
           product_name,
           total_revenue,
           SUM(total_revenue) OVER (ORDER BY total_revenue DESC, product_id) AS cumulative_revenue,
           SUM(total_revenue) OVER () AS grand_total_revenue
    FROM product_revenue
),
revenue_share AS (
    SELECT product_id,
           product_name,
           total_revenue,
           cumulative_revenue,
           grand_total_revenue,
           COALESCE(
               LAG(cumulative_revenue) OVER (ORDER BY total_revenue DESC, product_id),
               0
           ) AS previous_cumulative_revenue
    FROM ordered_revenue
)
SELECT product_id,
       product_name,
       total_revenue,
       cumulative_revenue,
       ROUND((cumulative_revenue / NULLIF(grand_total_revenue, 0))::numeric, 4) AS cumulative_revenue_share
FROM revenue_share
WHERE (cumulative_revenue / NULLIF(grand_total_revenue, 0)) <= 0.50
   OR (previous_cumulative_revenue / NULLIF(grand_total_revenue, 0)) < 0.50
ORDER BY total_revenue DESC, product_id;

-- 93. Which customers made purchases in consecutive months?
WITH customer_months AS (
    SELECT DISTINCT customer_id,
           DATE_TRUNC('month', sale_date)::date AS sale_month
    FROM sales
),
month_sequence AS (
    SELECT customer_id,
           sale_month,
           (EXTRACT(YEAR FROM sale_month) * 12 + EXTRACT(MONTH FROM sale_month))::int AS month_number,
           LAG((EXTRACT(YEAR FROM sale_month) * 12 + EXTRACT(MONTH FROM sale_month))::int)
             OVER (PARTITION BY customer_id ORDER BY sale_month) AS previous_month_number
    FROM customer_months
)
SELECT DISTINCT c.customer_id,
       c.first_name,
       c.last_name
FROM month_sequence ms
JOIN customers c
  ON ms.customer_id = c.customer_id
WHERE ms.month_number - ms.previous_month_number = 1
ORDER BY c.customer_id;

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
WITH product_totals AS (
    SELECT p.product_id,
           p.product_name,
           COALESCE(i.stock_quantity, 0) AS stock_quantity,
           COALESCE(SUM(s.quantity_sold), 0) AS total_quantity_sold
    FROM products p
    LEFT JOIN inventory i
      ON p.product_id = i.product_id
    LEFT JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, i.stock_quantity
),
product_gap AS (
    SELECT product_id,
           product_name,
           stock_quantity,
           total_quantity_sold,
           ABS(stock_quantity - total_quantity_sold) AS quantity_gap,
           DENSE_RANK() OVER (ORDER BY ABS(stock_quantity - total_quantity_sold) DESC) AS gap_rank
    FROM product_totals
)
SELECT product_id,
       product_name,
       stock_quantity,
       total_quantity_sold,
       quantity_gap
FROM product_gap
WHERE gap_rank = 1;

-- 95. Which customers have spending above the average spending of their membership tier?
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           c.membership_status,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_benchmark AS (
    SELECT customer_id,
           first_name,
           last_name,
           membership_status,
           total_spent,
           AVG(total_spent) OVER (PARTITION BY membership_status) AS tier_avg_spending
    FROM customer_spending
)
SELECT customer_id,
       first_name,
       last_name,
       membership_status,
       total_spent,
       tier_avg_spending
FROM tier_benchmark
WHERE total_spent > tier_avg_spending
ORDER BY membership_status, total_spent DESC, customer_id;

-- 96. Which products have higher sales than the average sales within their category?
WITH product_sales AS (
    SELECT p.product_id,
           p.product_name,
           p.category,
           COALESCE(SUM(s.total_amount), 0) AS total_sales
    FROM products p
    LEFT JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
category_benchmark AS (
    SELECT product_id,
           product_name,
           category,
           total_sales,
           AVG(total_sales) OVER (PARTITION BY category) AS category_avg_sales
    FROM product_sales
)
SELECT product_id,
       product_name,
       category,
       total_sales,
       category_avg_sales
FROM category_benchmark
WHERE total_sales > category_avg_sales
ORDER BY category, total_sales DESC, product_id;

-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS (
    SELECT customer_id,
           SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
),
purchase_ratio AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           s.sale_id,
           s.total_amount,
           ct.total_spent,
           (s.total_amount / NULLIF(ct.total_spent, 0))::numeric AS purchase_share,
           DENSE_RANK() OVER (
               ORDER BY (s.total_amount / NULLIF(ct.total_spent, 0)) DESC, s.total_amount DESC
           ) AS share_rank
    FROM customers c
    JOIN sales s
      ON c.customer_id = s.customer_id
    JOIN customer_totals ct
      ON s.customer_id = ct.customer_id
)
SELECT customer_id,
       first_name,
       last_name,
       sale_id,
       total_amount,
       total_spent,
       purchase_share
FROM purchase_ratio
WHERE share_rank = 1;

-- 98. Which products rank among the top 3 most sold products within each category?
WITH product_quantity AS (
    SELECT p.product_id,
           p.product_name,
           p.category,
           COALESCE(SUM(s.quantity_sold), 0) AS total_quantity_sold
    FROM products p
    LEFT JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
ranked_products AS (
    SELECT product_id,
           product_name,
           category,
           total_quantity_sold,
           DENSE_RANK() OVER (
               PARTITION BY category
               ORDER BY total_quantity_sold DESC
           ) AS category_quantity_rank
    FROM product_quantity
)
SELECT product_id,
       product_name,
       category,
       total_quantity_sold,
       category_quantity_rank
FROM ranked_products
WHERE category_quantity_rank <= 3
ORDER BY category, category_quantity_rank, product_id;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT c.customer_id,
           c.first_name,
           c.last_name,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT customer_id,
           first_name,
           last_name,
           total_spent,
           DENSE_RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
    FROM customer_spending
)
SELECT customer_id, first_name, last_name, total_spent
FROM ranked_customers
WHERE spending_rank = 1
ORDER BY customer_id;

-- 100. Which products generated sales every year present in the dataset?
WITH years_in_data AS (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date)) AS year_count
    FROM sales
),
product_years AS (
    SELECT p.product_id,
           p.product_name,
           COUNT(DISTINCT EXTRACT(YEAR FROM s.sale_date)) AS years_sold
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT py.product_id,
       py.product_name,
       py.years_sold
FROM product_years py
CROSS JOIN years_in_data y
WHERE py.years_sold = y.year_count
ORDER BY py.product_id;

-- =====================================================
-- UPDATE / CASE / DATE / NULL / CLEANUP / FUNCTIONS
-- =====================================================

-- 101. Update the products table to assign a price_category as Expensive, Moderate, or Affordable.
ALTER TABLE products
ADD COLUMN IF NOT EXISTS price_category TEXT;

UPDATE products
SET price_category = CASE
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
    ELSE 'Affordable'
END;

-- 102. Update the customers table to assign a customer_level based on total spending.
ALTER TABLE customers
ADD COLUMN IF NOT EXISTS customer_level TEXT;

WITH customer_spending AS (
    SELECT c.customer_id,
           COALESCE(SUM(s.total_amount), 0) AS total_spent
    FROM customers c
    LEFT JOIN sales s
      ON c.customer_id = s.customer_id
    GROUP BY c.customer_id
)
UPDATE customers c
SET customer_level = CASE
    WHEN cs.total_spent > 20000 THEN 'VIP'
    WHEN cs.total_spent BETWEEN 10000 AND 20000 THEN 'Regular'
    ELSE 'New'
END
FROM customer_spending cs
WHERE c.customer_id = cs.customer_id;

-- 103. Update the products table to assign a stock_status based on stock_quantity.
ALTER TABLE products
ADD COLUMN IF NOT EXISTS stock_status TEXT;

UPDATE products
SET stock_status = CASE
    WHEN stock_quantity < 10 THEN 'Low Stock'
    ELSE 'Sufficient Stock'
END;

-- 104. Display each customer’s registration year from the registration_date.
SELECT customer_id,
       first_name,
       last_name,
       EXTRACT(YEAR FROM registration_date) AS registration_year
FROM customers
ORDER BY customer_id;

-- 105. Count how many customers registered in each year.
SELECT EXTRACT(YEAR FROM registration_date) AS registration_year,
       COUNT(*) AS customer_count
FROM customers
GROUP BY EXTRACT(YEAR FROM registration_date)
ORDER BY registration_year;

-- 106. Find the total sales amount for each month.
SELECT DATE_TRUNC('month', sale_date)::date AS sales_month,
       SUM(total_amount) AS total_sales_amount
FROM sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY sales_month;

-- 107. Show all sales made in the year 2023.
SELECT *
FROM sales
WHERE sale_date >= DATE '2023-01-01'
  AND sale_date < DATE '2024-01-01'
ORDER BY sale_date, sale_id;

-- 108. Find the total sales amount for each year.
SELECT EXTRACT(YEAR FROM sale_date) AS sales_year,
       SUM(total_amount) AS total_sales_amount
FROM sales
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY sales_year;

-- 109. Calculate the number of days each customer has been registered.
SELECT customer_id,
       first_name,
       last_name,
       registration_date,
       CURRENT_DATE - registration_date AS days_registered
FROM customers
ORDER BY customer_id;

-- 110. Display each sale and extract the year and month from the sale date.
SELECT sale_id,
       sale_date,
       EXTRACT(YEAR FROM sale_date) AS sale_year,
       EXTRACT(MONTH FROM sale_date) AS sale_month,
       total_amount
FROM sales
ORDER BY sale_date, sale_id;

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE.
SELECT customer_id,
       first_name,
       last_name,
       COALESCE(email, 'No Email Provided') AS email_display
FROM customers
ORDER BY customer_id;

-- 112. Find customers who do not have an email address.
SELECT customer_id,
       first_name,
       last_name
FROM customers
WHERE email IS NULL
   OR TRIM(email) = ''
ORDER BY customer_id;

-- 113. Find products that have never been sold using a subquery.
SELECT p.product_id,
       p.product_name
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM sales s
    WHERE s.product_id = p.product_id
)
ORDER BY p.product_id;

-- 114. Find customers who have not made any purchases using a subquery.
SELECT c.customer_id,
       c.first_name,
       c.last_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM sales s
    WHERE s.customer_id = c.customer_id
)
ORDER BY c.customer_id;

-- 115. Update the products table to assign a price_category (Premium, Standard, Budget).
ALTER TABLE products
ADD COLUMN IF NOT EXISTS price_category TEXT;

UPDATE products
SET price_category = CASE
    WHEN price > 1000 THEN 'Premium'
    WHEN price BETWEEN 500 AND 1000 THEN 'Standard'
    ELSE 'Budget'
END;

-- 116. Create a PostgreSQL function that takes a minimum revenue and returns products whose total sales exceed it.
CREATE OR REPLACE FUNCTION get_products_above_revenue(p_min_revenue NUMERIC)
RETURNS TABLE (
    product_id INT,
    product_name TEXT,
    total_sales NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT p.product_id,
           p.product_name::TEXT,
           SUM(s.total_amount) AS total_sales
    FROM products p
    JOIN sales s
      ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
    HAVING SUM(s.total_amount) > p_min_revenue
    ORDER BY total_sales DESC;
END;
$$;

-- Example call:
-- SELECT * FROM get_products_above_revenue(5000);

-- 117. Create a PostgreSQL function that takes a customer_id and returns total amount spent by that customer.
CREATE OR REPLACE FUNCTION get_total_spent_by_customer(p_customer_id INT)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_total_spent NUMERIC;
BEGIN
    SELECT COALESCE(SUM(total_amount), 0)
    INTO v_total_spent
    FROM sales
    WHERE customer_id = p_customer_id;

    RETURN v_total_spent;
END;
$$;

-- Example call:
-- SELECT get_total_spent_by_customer(10);

-- 118. Create a PostgreSQL function that takes a start_date and end_date and returns the number of orders made within that date range.
CREATE OR REPLACE FUNCTION get_order_count_in_range(p_start_date DATE, p_end_date DATE)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_order_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_order_count
    FROM sales
    WHERE sale_date BETWEEN p_start_date AND p_end_date;

    RETURN v_order_count;
END;
$$;

-- Example call:
-- SELECT get_order_count_in_range('2023-01-01', '2023-12-31');

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table.
-- If sale_id is auto-generated in your table, remove p_sale_id and sale_id from the INSERT.
CREATE OR REPLACE PROCEDURE insert_sale(
    p_sale_id INT,
    p_customer_id INT,
    p_product_id INT,
    p_quantity INT,
    p_sale_date DATE,
    p_total_amount NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
    VALUES (p_sale_id, p_customer_id, p_product_id, p_quantity, p_sale_date, p_total_amount);
END;
$$;

-- Example call:
-- CALL insert_sale(1001, 1, 2, 3, '2023-11-15', 4500);

-- 120. Create an index on the product_id column in the sales table to improve join performance.
CREATE INDEX IF NOT EXISTS idx_sales_product_id
ON sales (product_id);

-- 121. Create an index on the registration_date column in the customers table to improve filtering by date.
CREATE INDEX IF NOT EXISTS idx_customers_registration_date
ON customers (registration_date);

-- 122. Write a transaction that inserts a new sale, then updates the corresponding product stock_quantity.
BEGIN;

INSERT INTO sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES (2001, 1, 2, 3, DATE '2023-12-20', 4500);

UPDATE products
SET stock_quantity = stock_quantity - 3
WHERE product_id = 2;

COMMIT;

-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid.
BEGIN;

DO $$
DECLARE
    v_new_email TEXT := 'new.email@example.com';
BEGIN
    IF v_new_email !~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' THEN
        RAISE EXCEPTION 'Invalid email format';
    END IF;

    UPDATE customers
    SET email = v_new_email
    WHERE customer_id = 1;
END;
$$;

COMMIT;

-- 124. Create a view that shows total revenue per product.
CREATE OR REPLACE VIEW vw_product_revenue AS
SELECT p.product_id,
       p.product_name,
       COALESCE(SUM(s.total_amount), 0) AS total_revenue
FROM products p
LEFT JOIN sales s
  ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- 125. Create a view that shows each customer and their total spending.
CREATE OR REPLACE VIEW vw_customer_total_spending AS
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       COALESCE(SUM(s.total_amount), 0) AS total_spent
FROM customers c
LEFT JOIN sales s
  ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 126. Use UNION to combine a list of all customer first names and product names into a single column.
SELECT first_name AS combined_name
FROM customers
UNION
SELECT product_name AS combined_name
FROM products
ORDER BY combined_name;

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases.
SELECT customer_id
FROM customers
INTERSECT
SELECT customer_id
FROM sales
ORDER BY customer_id;

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN.
SELECT p.product_id,
       p.product_name
FROM products p
LEFT JOIN sales s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL
ORDER BY p.product_id;

-- 129. Use NOT EXISTS to find customers who have not made any purchases.
SELECT c.customer_id,
       c.first_name,
       c.last_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM sales s
    WHERE s.customer_id = c.customer_id
)
ORDER BY c.customer_id;

-- 130. Cast the price column to an integer and display it alongside the original price.
SELECT product_id,
       product_name,
       price AS original_price,
       price::INT AS price_as_integer
FROM products
ORDER BY product_id;

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format.
SELECT customer_id,
       first_name,
       last_name,
       TO_CHAR(registration_date, 'YYYY-MM') AS registration_year_month
FROM customers
ORDER BY customer_id;

-- 132. Fix the improper GROUP BY query.
SELECT s.product_id,
       p.product_name,
       SUM(s.total_amount) AS total_sales
FROM sales s
JOIN products p
  ON s.product_id = p.product_id
GROUP BY s.product_id, p.product_name
ORDER BY s.product_id;

-- 133. Correct the query that incorrectly filters aggregated results using WHERE.
SELECT product_id,
       SUM(total_amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING SUM(total_amount) > 1000
ORDER BY product_id;

-- 134. Fix the query that uses the wrong join condition.
SELECT *
FROM sales s
JOIN products p
  ON s.product_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE.
SELECT customer_id,
       first_name,
       last_name,
       COALESCE(email, 'No Email Provided') AS email_display
FROM customers
ORDER BY customer_id;

-- 136. Trim any leading or trailing spaces from customer first names if any.
UPDATE customers
SET first_name = TRIM(first_name)
WHERE first_name IS NOT NULL
  AND first_name <> TRIM(first_name);

-- 137. Convert all customer emails to lowercase if any.
UPDATE customers
SET email = LOWER(email)
WHERE email IS NOT NULL;

-- 138. Replace empty strings in phone numbers with NULL if any.
-- This block checks for either phone_number or contact, depending on your actual column name.
DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = current_schema()
          AND table_name = 'customers'
          AND column_name = 'phone_number'
    ) THEN
        EXECUTE $q$
            UPDATE customers
            SET phone_number = NULL
            WHERE phone_number IS NOT NULL
              AND TRIM(phone_number) = ''
        $q$;
    ELSIF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = current_schema()
          AND table_name = 'customers'
          AND column_name = 'contact'
    ) THEN
        EXECUTE $q$
            UPDATE customers
            SET contact = NULL
            WHERE contact IS NOT NULL
              AND TRIM(contact) = ''
        $q$;
    END IF;
END;
$$;

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any.
SELECT customer_id,
       first_name,
       last_name,
       COALESCE(TO_CHAR(registration_date, 'YYYY'), 'No Registration Date') AS registration_year
FROM customers
ORDER BY customer_id;


