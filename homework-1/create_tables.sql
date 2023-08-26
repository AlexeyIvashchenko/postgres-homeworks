CREATE TABLE orders
(
    order_id int PRIMARY KEY,
    customer_id varchar(100) NOT NULL,
	employee_id int NOT NULL,
	order_date date NOT NULL,
	ship_city varchar(100)
);

CREATE TABLE employees
(
    employee_id int PRIMARY KEY,
    first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date date NOT NULL,
	notes text
);

CREATE TABLE customers
(
    customer_id varchar(100) PRIMARY KEY,
    company_name varchar(100) UNIQUE NOT NULL,
	contact_name varchar(100) NOT NULL
);

-- Добавляем внешние ключи
#не мог разобраться как связать столбцы, выдавало ошибку про уникальность ключей,
#поэтому нашёл этот способ в интернете
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_employee FOREIGN KEY (employee_id) REFERENCES employees(employee_id);-- SQL-команды для создания таблиц
