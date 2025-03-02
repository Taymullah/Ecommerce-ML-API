--------------------------------------------------
              -- MySQL Database --
--------------------------------------------------

-- This setup will be the host for the "load" portion of our ETL pipeline.
-- Our REST API will be using this database to store and retrieve data.

-- Create the database
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- Create the customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode VARCHAR(20),
    country VARCHAR(255),
    age INT,
    gender VARCHAR(10),
    income VARCHAR(50),
    customer_segment VARCHAR(50)
)ENGINE=InnoDB;

-- Create the orders table
CREATE TABLE IF NOT EXISTS orders (
    transaction_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    transaction_date DATE,
    transaction_time TIME,
    purchase_hour INT,
    time_of_day VARCHAR(50),
    day_of_week VARCHAR(50),
    weekend_purchase BOOLEAN,
    month_name VARCHAR(20),
    transaction_year VARCHAR(10),
    total_purchases INT,
    transaction_price DECIMAL(12, 2),
    shipping_method VARCHAR(50),
    payment_method VARCHAR(50),
    order_status VARCHAR(50),
    ratings INT,
    feedback TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)ENGINE=InnoDB;

-- Create the products table
CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_price DECIMAL(12, 2),
    product_category VARCHAR (100),
    product_brand VARCHAR(100),
    product_type VARCHAR(100)
)ENGINE=InnoDB;

-- Create Transaction Details Table (used for linking orders and products)
CREATE TABLE IF NOT EXISTS transaction_details (
    transaction_id VARCHAR(50),
    product_id INT,
    PRIMARY KEY (transaction_id, product_id),
    FOREIGN KEY (transaction_id) REFERENCES orders(transaction_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
)ENGINE=InnoDB;