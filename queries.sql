INSERT INTO sales 
VALUES (416,1,208,101,301,'2024-03-15',2);

SELECT * FROM sales WHERE sale_id=416;

SELECT * FROM products;
/*All product catalog*/

SELECT s.sale_id, c.customer_name, s.sale_date
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id;
 /*Sales with customer names*/

SELECT SUM(quantity) FROM sales; /*o/p:51*/

SELECT customer_name, email, phone
FROM customers
WHERE city = 'Delhi';
/*customers from delhi*/

SELECT DISTINCT c.customer_name, c.email
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
WHERE p.category = 'Electronics';
/* Name, Email if Customers who have purchased Electronics category products are displayed*/

SELECT staff_name, email, phone, store_id
FROM staff
WHERE role = 'Manager';
/*Complete details of Managers from the staff are seen as the output*/

SELECT p.product_name, SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;
/*TOP 5 HIGHEST REVENUE PRODUCTS*/

SELECT s.store_name, SUM(p.price * sa.quantity) AS total_sales
FROM sales sa
JOIN stores s ON sa.store_id = s.store_id
JOIN products p ON sa.product_id = p.product_id
GROUP BY s.store_name;
/* The order of performance of statemnts are 
 --->FROM , JOIN, WHERE, GROUP BY, HAVING, SELECT, ORDER BY
 so accordingly store name along with tOtal sale of products in that store are displayed*/

 /* Monthly Revenue Trend*/
SELECT DATE_FORMAT(sale_date,'%Y-%m') AS month,  SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month;

/*Stores with No Sales*/
SELECT store_name
FROM stores
WHERE store_id NOT IN (SELECT DISTINCT store_id FROM sales);

SELECT st.store_name, SUM(p.price * s.quantity) AS revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN products p ON s.product_id = p.product_id
GROUP BY st.store_name
ORDER BY revenue DESC
LIMIT 1
;
/* STORE WITH HIGHEST REVENUE*/

SELECT c.customer_name, SUM(p.price * s.quantity) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;
/*TOP 3 CUSTOMERS WITH TOTAL PURCHASE VALUE*/

SELECT p.product_name
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE s.quantity = 1;
/*Low volume per order purchases
Products never sold more than once in single order*/

SELECT st.staff_name, COUNT(s.sale_id) AS total_sales
FROM staff st
JOIN sales s ON st.staff_id = s.staff_id
GROUP BY st.staff_name
HAVING total_sales > 1;
/*Staff handling more than one sale*/

SELECT c.customer_name, COUNT(DISTINCT p.category) AS categories_bought
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_name
HAVING categories_bought > 1;
/* Customer with more than one product type*/
SELECT st.store_name, AVG(p.price * s.quantity) AS avg_order_value
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN products p ON s.product_id = p.product_id
GROUP BY st.store_name;
/*Average order value per store*
how expensive an average order is in each store*/
