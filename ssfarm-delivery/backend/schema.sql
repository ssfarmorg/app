CREATE DATABASE IF NOT EXISTS ssfarm_db;
USE ssfarm_db;
CREATE TABLE customers (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50), phone VARCHAR(15), email VARCHAR(50));
INSERT INTO customers (name, phone, email) VALUES ('Customer 1','9999000001','c1@test.com'),('Customer 2','9999000002','c2@test.com'),('Customer 3','9999000003','c3@test.com'),('Customer 4','9999000004','c4@test.com'),('Customer 5','9999000005','c5@test.com'),('Customer 6','9999000006','c6@test.com'),('Customer 7','9999000007','c7@test.com'),('Customer 8','9999000008','c8@test.com'),('Customer 9','9999000009','c9@test.com'),('Customer 10','9999000010','c10@test.com');
CREATE TABLE products (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50), price DECIMAL(10,2));
INSERT INTO products (name, price) VALUES ('Buffalo Milk',100),('Cow Milk',100),('Paneer',500);
CREATE TABLE subscriptions (id INT AUTO_INCREMENT PRIMARY KEY, customer_id INT, product_id INT, quantity INT, days VARCHAR(20), start_date DATE, end_date DATE, FOREIGN KEY (customer_id) REFERENCES customers(id), FOREIGN KEY (product_id) REFERENCES products(id));
INSERT INTO subscriptions (customer_id, product_id, quantity, days, start_date) VALUES (1,1,1,'Mon,Tue,Wed,Thu,Fri,Sat,Sun',CURDATE()),(2,2,1,'Mon,Tue,Wed,Thu,Fri,Sat,Sun',CURDATE()),(3,3,1,'Mon,Tue,Wed,Thu,Fri,Sat,Sun',CURDATE()),(4,1,2,'Mon,Wed,Fri',CURDATE()),(5,2,2,'Tue,Thu,Sat',CURDATE());