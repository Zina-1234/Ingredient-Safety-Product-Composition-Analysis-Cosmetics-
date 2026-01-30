USE cosmetics_regulatory_db;

-- Overall Regulatory Risk in the Market --

-- Percentage of products with restricted ingredients (Sephora)
SELECT 
    COUNT(*) AS total_products,
    SUM(has_restricted_ingredient) AS products_with_restriction,
    ROUND(SUM(has_restricted_ingredient) / COUNT(*) * 100, 2) AS percent_with_restriction
FROM sephora_products;

-- Percentage of products containing CMR substances
SELECT 
    COUNT(*) AS total_products,
    SUM(has_cmr) AS products_with_cmr,
    ROUND(SUM(has_cmr) / COUNT(*) * 100, 2) AS percent_with_cmr
FROM sephora_products;

-- Restricted ingredients by product type
SELECT 
    product_type,
    COUNT(*) AS total_products,
    SUM(has_restricted_ingredient) AS restricted_products,
    ROUND(SUM(has_restricted_ingredient) / COUNT(*) * 100, 2) AS risk_percentage
FROM sephora_products
GROUP BY product_type
ORDER BY risk_percentage DESC;

-- CMR exposure by product type
SELECT 
    product_type,
    COUNT(*) AS total_products,
    SUM(has_cmr) AS cmr_products,
    ROUND(SUM(has_cmr) / COUNT(*) * 100, 2) AS cmr_percentage
FROM sephora_products
GROUP BY product_type
ORDER BY cmr_percentage DESC;

-- Brands with the most restricted ingredients
SELECT 
    brand_name,
    COUNT(*) AS total_products,
    SUM(restricted_ingredient_count) AS total_restricted_ingredients
FROM sephora_products
GROUP BY brand_name
ORDER BY total_restricted_ingredients DESC
LIMIT 10;

-- Brands with CMR substances
SELECT 
    brand_name,
    COUNT(*) AS total_products,
    SUM(has_cmr) AS products_with_cmr
FROM sephora_products
GROUP BY brand_name
ORDER BY products_with_cmr DESC
LIMIT 10;

-- Products with the highest number of restricted ingredients
SELECT 
    product_name,
    brand_name,
    product_type,
    restricted_ingredient_count
FROM sephora_products
ORDER BY restricted_ingredient_count DESC
LIMIT 10;

-- Products with multiple CMR substances
SELECT 
    product_name,
    brand_name,
    product_type,
    cmr_count
FROM sephora_products
WHERE cmr_count > 0
ORDER BY cmr_count DESC;

-- Market Impact of Regulatory Risk --

-- Price vs restricted ingredients
SELECT 
    has_restricted_ingredient,
    ROUND(AVG(price_usd), 2) AS avg_price
FROM sephora_products
GROUP BY has_restricted_ingredient;

-- Consumer response to risky products
SELECT 
    has_restricted_ingredient,
    ROUND(AVG(rating), 2) AS avg_rating,
    ROUND(AVG(loves_count), 0) AS avg_loves
FROM sephora_products
GROUP BY has_restricted_ingredient;


-- Skincare-Specific Regulatory Risk -- 
-- Skincare products with restricted ingredients
SELECT 
    product_type,
    COUNT(*) AS total_products,
    SUM(has_restricted_ingredient) AS restricted_products,
    ROUND(SUM(has_restricted_ingredient) / COUNT(*) * 100, 2) AS risk_percentage
FROM skincare_products
GROUP BY product_type
ORDER BY risk_percentage DESC;

-- Top risky skincare brands
SELECT 
    brand,
    COUNT(*) AS total_products,
    SUM(has_cmr) AS cmr_products
FROM skincare_products
GROUP BY brand
ORDER BY cmr_products DESC
LIMIT 10;






