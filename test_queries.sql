
-- 3. Test Queries

-- 1. Get all books along with their authors
SELECT b.title, a.name AS author
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id;

-- 2. Find all books written in Swahili
SELECT b.title
FROM book b
JOIN book_language bl ON b.language_id = bl.language_id
WHERE bl.language_name = 'Swahili';

-- 3. List all orders by a customer with their status
SELECT co.order_id, co.order_date, os.status_name
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN order_status os ON co.status_id = os.status_id
WHERE c.email = 'john.doe@example.com';

-- 4. Show all books in an order
SELECT co.order_id, b.title, ol.quantity, ol.price
FROM cust_order co
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id
WHERE co.order_id = 1;

-- 5. Retrieve the history of a specific order
SELECT oh.order_id, os.status_name, oh.changed_on
FROM order_history oh
JOIN order_status os ON oh.status_id = os.status_id
WHERE oh.order_id = 2
ORDER BY oh.changed_on;

-- 6. Find customers who have placed more than 1 order
SELECT c.first_name, c.last_name, COUNT(co.order_id) AS total_orders
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id
GROUP BY c.customer_id
HAVING total_orders > 1;

-- 7. Get books that are out of stock
SELECT title
FROM book
WHERE stock = 0;

-- 8. Show all customers and their current address
SELECT c.first_name, c.last_name, a.street, a.city, cn.country_name
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country cn ON a.country_id = cn.country_id
JOIN address_status s ON ca.status_id = s.status_id
WHERE s.status_name = 'Current';

-- 9. List total quantity and amount spent per order
SELECT co.order_id, SUM(ol.quantity) AS total_items, SUM(ol.price) AS total_amount
FROM cust_order co
JOIN order_line ol ON co.order_id = ol.order_id
GROUP BY co.order_id;

-- 10. Get the top 3 best-selling books
SELECT b.title, SUM(ol.quantity) AS total_sold
FROM book b
JOIN order_line ol ON b.book_id = ol.book_id
GROUP BY b.book_id
ORDER BY total_sold DESC
LIMIT 3;
