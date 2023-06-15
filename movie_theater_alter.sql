-- Adding a customer_id column to the concessions table
alter table concessions_j
add customer_id INTEGER
references customer_jordan(customer_id);

-- Creating customer data for concessions table
update concessions_j
set customer_id = 1
where item_id = 1;

update concessions_j
set customer_id = 1
where item_id = 3;

update concessions_j
set customer_id = 2
where item_id = 2;

update concessions_j
set customer_id = 2
where item_id = 4;

select * from concessions_j;