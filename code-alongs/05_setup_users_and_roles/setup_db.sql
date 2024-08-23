USE ROLE sysadmin;

CREATE DATABASE ice_cream_db;

CREATE WAREHOUSE dev_wh
with 
WAREHOUSE_SIZE = 'XSMALL'
AUTO_SUSPEND = 60
AUTO_RESUME = TRUE
INITIALLY_SUSPENDED = TRUE
COMMENT = "warehouse for development and analysis of databases";


USE WAREHOUSE dev_wh;


CREATE TABLE flavors(
    flavor_id INT AUTOINCREMENT,
    flavor_name STRING,
    price DECIMAL(5,2),
    PRIMARY KEY(flavor_id)
);

CREATE TABLE customers(
    customer_id INT AUTOINCREMENT,
    customer_name STRING,
    email STRING,
    PRIMARY KEY(customer_id)
);

CREATE TABLE transactions(
    transaction_id INT AUTOINCREMENT,
    flavor_id INT,
    customer_id INT,
    quantity INT,
    transaction_date TIMESTAMP,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (flavor_id) REFERENCES flavors (flavor_id)
);