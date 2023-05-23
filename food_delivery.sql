CREATE DATABASE food_delivery;
USE food_delivery;

/*Customers*/
CREATE TABLE customers (
id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
city_id INT NOT NULL,
email VARCHAR(50) NOT NULL,
phone_number INT NOT NULL,
joined_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (city_id) 
REFERENCES city(id)
);

/*Restaurants*/
CREATE TABLE restaurants (
restaurant_id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(25) NOT NULL,
address VARCHAR(50) NOT NULL,
city_id INT NOT NULL,
FOREIGN KEY (city_id) 
REFERENCES city (id)
);

/*City*/
CREATE TABLE city (
id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(25) NOT NULL
);

/*Delivery Orders*/
CREATE TABLE delivery_orders (
order_id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
order_time TIMESTAMP, 
customer_id INT,
restaurant_id INT,
total_price DECIMAL(3,2),
discount DECIMAL(3,2),
order_status VARCHAR(25),
predicted_time TIMESTAMP,
actual_time TIMESTAMP,
FOREIGN KEY (customer_id)
REFERENCES customers(id),
FOREIGN KEY (restaurant_id)
REFERENCES restaurants (restaurant_id)
);
