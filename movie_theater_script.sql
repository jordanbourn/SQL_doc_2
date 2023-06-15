-- Movie Theater table creation 
create table movie_theater(
	theater_id SERIAL primary key,
	theater_name VARCHAR(100),
	revenue INTEGER
);


-- Movie Table creation 
create table movies_j(
	movie_id SERIAL primary key,
	showtime DATE default current_date,
	movie_title VARCHAR(150),
	content_rating VARCHAR(10)
);

-- Customer table creation
-- this table already exists, though this what I would use to create it.
create table customer_jordan(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Concessions Table creation 
create table concessions_j(
	item_id SERIAL primary key,
	product_name VARCHAR(100),
	item_amount NUMERIC(4,2),
	total_cost NUMERIC(8,2),
	theater_id INTEGER not null,
	foreign KEY(theater_id) references movie_theater(theater_id),
);

-- Ticket Table creation 
create table ticket_j(
	ticket_id SERIAL primary key,
	ticket_date DATE default current_date,
	seat_assignment VARCHAR(10),
	ticket_cost NUMERIC(4,2),
	customer_id INTEGER not NULL,
	movie_id INTEGER not null,
	theater_id INTEGER not null,
	foreign key(customer_id) references customer_jordan(customer_id),
	foreign key(movie_id) references movies_j(movie_id),
	foreign key(theater_id) references movie_theater(theater_id)
);