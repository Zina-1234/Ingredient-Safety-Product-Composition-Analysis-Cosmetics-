-- Create the database
CREATE DATABASE cosmetics_regulatory_db;

-- Select the database
USE cosmetics_regulatory_db;

-- Create the sephora_products Table
CREATE TABLE sephora_products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(100),
    product_name TEXT,
    brand_name TEXT,
    product_type TEXT,
    price_usd FLOAT,
    rating FLOAT,
    reviews INT,
    loves_count INT,
    restricted_ingredient_count INT,
    cmr_count INT,
    has_restricted_ingredient TINYINT,
    has_cmr TINYINT
) CHARACTER SET utf8mb4;

-- Create the skincare_products Table
CREATE TABLE skincare_products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand TEXT,
    product_name TEXT,
    product_type TEXT,
    price FLOAT,
    rating FLOAT,
    restricted_ingredient_count INT,
    cmr_count INT,
    has_restricted_ingredient TINYINT,
    has_cmr TINYINT
) CHARACTER SET utf8mb4;
