\copy amazon_products 
FROM 'C:\Users\simon\Documents\DataEngineer\github\data_warehouse_DE23_simon_troedsson\code-alongs\08_extract_load_postgres\amazon.csv'
DELIMITER ',' CSV HEADER;


