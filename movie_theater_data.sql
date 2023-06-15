-- Movie Theater data
insert into movie_theater(
	theater_id,
	theater_name,
	revenue
)VALUES(
	1,
	'Cinemark Temple Theater',
	0
);

-- Movie data
insert into movies_j(
	movie_id,
	movie_title,
	content_rating
)VALUES(
	01,
	'Python on a Plane',
	'R'
);

insert into movies_j(
	movie_id,
	movie_title,
	content_rating
)VALUES(
	02,
	'Guests With Spaceships',
	'PG'
);

insert into movies_j(
	movie_id,
	movie_title,
	content_rating
)VALUES(
	03,
	'Cuddling With Python',
	'PG-13'
);

-- Customer data
insert into customer_jordan(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Jordan',
	'Bourn',
	'1234 Hill Drive, Boulder, CO 80303',
	'4242-4242-4242-4242'
);

insert into customer_jordan(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	2,
	'Betty',
	'Barnes',
	'1234 Somewhere Rd, Westminister, CO 80031',
	'1234-1234-1234-1234'
);

select * from customer_jordan;

-- Concessions data
insert into concessions_j(
	item_id,
	product_name,
	item_amount,
	total_cost,
	theater_id
)VALUES(
	0001,
	'popcorn_small',
	3.00,
	3.75,
	1
);

insert into concessions_j(
	item_id,
	product_name,
	item_amount,
	total_cost,
	theater_id
)VALUES(
	0002,
	'popcorn_large',
	5.00,
	6.15,
	1
);

insert into concessions_j(
	item_id,
	product_name,
	item_amount,
	total_cost,
	theater_id
)VALUES(
	0003,
	'fountain_drink_small',
	4.00,
	4.75,
	1
);

insert into concessions_j(
	item_id,
	product_name,
	item_amount,
	total_cost,
	theater_id
)VALUES(
	0004,
	'fountain_drink_large',
	5.50,
	6.80,
	1
);

-- Ticket data
insert into ticket_j(
	ticket_id,
	seat_assignment,
	ticket_cost,
	customer_id,
	movie_id,
	theater_id
)VALUES(
	1,
	'C16',
	15.00,
	1,
	2,
	1
);

insert into ticket_j(
	ticket_id,
	seat_assignment,
	ticket_cost,
	customer_id,
	movie_id,
	theater_id
)VALUES(
	2,
	'C15',
	15.00,
	1,
	2,
	1
);

insert into ticket_j(
	ticket_id,
	seat_assignment,
	ticket_cost,
	customer_id,
	movie_id,
	theater_id
)VALUES(
	3,
	'B10',
	15.00,
	2,
	1,
	1
);

select * from ticket_j;