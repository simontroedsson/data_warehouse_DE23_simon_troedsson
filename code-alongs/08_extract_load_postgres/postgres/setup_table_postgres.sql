-- C:/Users/simon/Documents/DataEngineer/github/data_warehouse_DE23_simon_troedsson/exercies/postgres/postgres_testing.sql


CREATE TABLE amazon_products (
    product_id TEXT,
    product_name TEXT,
    category TEXT,
    discounted_price VARCHAR(50),
    actual_price VARCHAR(50),
    discount_percentage VARCHAR(10),
    rating VARCHAR(10),
    rating_count VARCHAR(20),
    about_product TEXT,
    user_id TEXT,
    user_name TEXT,
    review_id TEXT,
    review_title TEXT,
    review_content TEXT,
    img_link TEXT,
    product_link TEXT
);