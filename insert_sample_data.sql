
-- 2. Insert Sample Data

-- Countries
INSERT INTO country (country_name) VALUES
('Kenya'), ('Uganda'), ('Tanzania');

-- Address Status
INSERT INTO address_status (status_name) VALUES
('Current'), ('Old');

-- Addresses
INSERT INTO address (street, city, state, zip_code, country_id) VALUES
('123 River Rd', 'Nairobi', 'Nairobi', '00100', 1),
('456 Hilltop Ave', 'Kampala', 'Central', '00200', 2);

-- Customers
INSERT INTO customer (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Alice', 'Wanjiku', 'alice.w@example.com'),
('Brian', 'Otieno', 'b.otieno@example.com');

-- Customer Addresses
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1),
(2, 2, 1);

-- Authors
INSERT INTO author (name) VALUES
('Ngugi wa Thiong'o'), ('Chimamanda Ngozi Adichie');

-- Publishers
INSERT INTO publisher (name) VALUES
('East African Publishers'), ('Penguin Books');

-- Book Languages
INSERT INTO book_language (language_name) VALUES
('English'), ('Swahili');

-- Books
INSERT INTO book (title, publisher_id, language_id, publication_year, price, stock) VALUES
('The River Between', 1, 2, 1965, 800.00, 10),
('Half of a Yellow Sun', 2, 1, 2006, 1500.00, 5);

-- Book Authors
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 2);

-- Shipping Methods
INSERT INTO shipping_method (method_name, cost) VALUES
('Standard', 200.00),
('Express', 500.00);

-- Order Status
INSERT INTO order_status (status_name) VALUES
('Pending'), ('Shipped'), ('Delivered'), ('Cancelled');

-- Customer Orders
INSERT INTO cust_order (customer_id, order_date, shipping_method_id, status_id) VALUES
(1, '2025-04-10', 1, 1),
(2, '2025-04-09', 2, 3);

-- Order Lines
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES
(1, 1, 2, 1600.00),
(2, 2, 1, 1500.00);

-- Order History
INSERT INTO order_history (order_id, status_id, changed_on) VALUES
(1, 1, '2025-04-10 09:00:00'),
(2, 1, '2025-04-09 08:30:00'),
(2, 3, '2025-04-10 12:00:00');
