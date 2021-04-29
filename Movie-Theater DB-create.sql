-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint(if applicable)

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

CREATE TABLE "order"(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	total_cost NUMERIC(10,2),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(item_id) REFERENCES concessions(item_id),
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	FOREIGN KEY(order_id) REFERENCES "order"(order_id),
	FOREIGN KEY(movie_name) REFERENCES movies(movie_id)
);

CREATE TABLE movies(
	movie_name VARCHAR(150) PRIMARY KEY	
);

CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100)
);