-- Insertion of Data in tables
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES(
	1,
	'Nic'
	'Walker'
	'7211 Del Norte St Goleta, CA 93117',
	'4242-4242-4242-4242 623 05/24'
);

-- insert into "order"

INSERT INTO "order"(
	order_id,
	total_cost
) VALUES(
	1,
	40.00	
);

-- INSERT INTO TICKETS

INSERT INTO tickets(
	ticket_id
) VALUES(
	1
);
-- INSERT INTO MOVIES

INSERT INTO movies(
	movie_name
) VALUES(
	avengers_endgame
);

-- INSERT INTO concessions

INSERT INTO concessions(
	item_id,
	amount,
	prod_name
) VALUES(
	1,
	3.99,
	'Almond Joy'
);
