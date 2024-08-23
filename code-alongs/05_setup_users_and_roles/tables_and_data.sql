USE ROLE ice_cream_writer;

USE WAREHOUSE dev_wh;

USE SCHEMA ice_cream_db.public;

INSERT INTO flavors (flavor_name, price) VALUES
('Vanilla', 2.50),
('Chocolate', 2.75),
('Strawberry', 2.50),
('Mint Chocolate Chip', 3.00),
('Cookie Dough', 3.25);

INSERT INTO customers (customer_name, email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Alice Johnson', 'alice.johnson@example.com');

INSERT INTO transactions (
    customer_id, flavor_id, quantity, transaction_date
) VALUES
(1, 1, 2, CURRENT_TIMESTAMP),
(2, 2, 1, CURRENT_TIMESTAMP),
(3, 3, 3, CURRENT_TIMESTAMP),
(1, 4, 1, CURRENT_TIMESTAMP),
(2, 5, 2, CURRENT_TIMESTAMP);


select * from flavors;

select * from customers;

use role ice_cream_reader;

