CREATE DATABASE restro_data;
USE restro_data;
CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(255),
    customer_name VARCHAR(255),
    customer_email VARCHAR(255),
    customer_contact VARCHAR(20),
    payment_id VARCHAR(255),
    razorpay_signature VARCHAR(255),
    total_amount DECIMAL(10,2),
    order_details TEXT
);

USE restro_data;
ALTER TABLE orders
ADD COLUMN created_at DATETIME DEFAULT CURRENT_TIMESTAMP;