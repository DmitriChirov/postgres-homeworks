-- В командной строке первая команда psql -U postgres
-- После ввода пароля следующая команда create database north;

-- Затем запускаем PGAdmin и подключаемся к БД north

-- SQL-команды для создания таблиц

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	birth_date DATE,
	notes TEXT
);

CREATE TABLE customers (
	customer_id VARCHAR(5) PRIMARY KEY,
	company_name VARCHAR(100),
	contact_name VARCHAR(50)
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
	customer_id VARCHAR(5) REFERENCES customers(customer_id) NOT NULL,
	employee_id INT REFERENCES employees(employee_id) NOT NULL,
	order_date DATE,
	ship_city VARCHAR(50)
);
