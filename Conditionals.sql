-- CONDITIONALS

SELECT * FROM dim_product;


/*

Full Structure of CASE Syntax:

CASE
    WHEN condition THEN value
    WHEN condition THEN value
    ELSE value
END 
or    
END AS Alias name of the column  <-- Creates a column alias (temporary column name).


It works like:
IF condition is true
    return some value
ELSE
    return another value
    
*/


-- 1
SELECT 
     *,
     CASE 
     WHEN unit_price <= 100 THEN 'Affordable'
     WHEN unit_price <= 200 THEN 'Normal_price'
     ELSE 'Expensive'
     END AS price_category
 FROM 
     dim_product; 
     
     
-- 2
SELECT 
     *,
     CASE
     WHEN  unit_price <=100 AND category='clothing' THEN 'Expensive'
     WHEN unit_price <=200  AND category ='clothing' THEN 'Normal'
     WHEN unit_price >200 AND category='clothing'  THEN 'Expensive'
     ELSE CONCAT('Not this category:',category)
     END AS  Descriptive_analysis
FROM 
    dim_product;
    
    
-- Categorize Products by Price Range using CASE
SELECT 
    product_name,
    category,
    unit_price,
    CASE
        WHEN unit_price < 200 THEN 'Low Price'
        WHEN unit_price BETWEEN 200 AND 700 THEN 'Medium Price'
        ELSE 'High Price'
    END AS price_category
FROM dim_product;


-- Show Brand Priority using CASE
SELECT 
    product_name,
    brand,
    CASE
        WHEN brand = 'BrandA' THEN 'Premium Brand'
        WHEN brand = 'BrandB' THEN 'Popular Brand'
        ELSE 'Regular Brand'
    END AS brand_type
FROM dim_product;


-- Check Whether Product is Old or New
SELECT 
    product_name,
    launch_date,
    CASE
        WHEN YEAR(launch_date) >= 2024 THEN 'New Product'
        ELSE 'Old Product'
    END AS product_status
FROM dim_product;    
    
    
-- Sort Products Based on Conditional Priority

SELECT 
    product_name,
    category,
    unit_price
FROM dim_product
ORDER BY 
    CASE
        WHEN category = 'Electronics' THEN 1
        WHEN category = 'Sports' THEN 2
        ELSE 3
    END;
  
  
 -- Display Discount Eligibility
 SELECT 
    product_name,
    unit_price,
    CASE
        WHEN unit_price > 800 THEN '20% Discount'
        WHEN unit_price > 500 THEN '10% Discount'
        ELSE 'No Discount'
    END AS Discount_Offer
FROM dim_product;


-- Check Product Cost Status using IF,   synatx: IF(condition, value_if_true, value_if_false)
/*
if condition is true
    return value_if_true
else
    return value_if_false
*/    
SELECT 
    product_name,
    unit_price,
    IF(unit_price > 500, 'Costly', 'Affordable') AS Price_Status
FROM dim_product;
 
 
 
-- 1 
SELECT 
    product_name,
    category,
    unit_price
FROM dim_product
ORDER BY 
    CASE
        WHEN category = 'Electronics' THEN 1
        WHEN category = 'Sports' THEN 2
        ELSE 3
    END;



-- 2    
SELECT 
    product_name,
    category,
    unit_price,
    CASE
        WHEN category = 'Electronics' THEN 1
        WHEN category = 'Sports' THEN 2
        ELSE 3
    END AS sort_order
FROM dim_product
ORDER BY sort_order; 

    
 /*
 Step-by-Step Internal Working:
 Step 1: SQL Reads Rows from dim_product
 
 
 Step 2: CASE Expression Executes for Every Row

For each row, SQL evaluates:

CASE
    WHEN category = 'Electronics' THEN 1
    WHEN category = 'Sports' THEN 2
    ELSE 3
END

It creates a temporary hidden value internally.

example:

Row-by-Row Evaluation:

Row 1:
category = Electronics

Condition matched:
WHEN category = 'Electronics' THEN 1

Temporary value: 1

Row 2:
category = Sports

Condition matched:
WHEN category = 'Sports' THEN 2

Temporary value:2

Row 3:
category = Education

No condition matched.

So:
ELSE 3
Temporary value: 3


Internally SQL Creates Something Like 
--------------------------------------------
product_name	category	temp_sort_value
--------------------------------------------
Laptop	        Electronics	    1
Football	    Sports	        2
Book	        Education	    3
Mobile	        Electronics	    1
Bat	             Sports	        2
---------------------------------------------


SQL sorts rows based on:

1 → first
2 → second
3 → last


 */
 
 
 


 -- Question 1: How would you categorize customers as either "Northeast" or "Other" if the states New York and New Hampshire are the primary focus?
SELECT first_name, state, 
CASE WHEN state IN ('New York', 'New Hampshire') THEN 'Northeast' 
ELSE 'Other' END AS region_tier 
FROM dim_customer;


-- Question 2: Based on the phone column, how can we distinguish between international contacts (starting with '00') and local ones?
SELECT customer_id, phone, 
IF(phone LIKE '00%', 'International', 'Local') AS contact_type   -- IF(CONDITION , Value_If_True, Value_if_false)
FROM dim_customer;



-- Question 3: If a customer joined before 2022, they are "Legacy"; otherwise, they are "New." How is this written using the join_date?
SELECT customer_id, join_date, 
CASE WHEN join_date < '2022-01-01' THEN 'Legacy' 
ELSE 'New' END AS membership_status 
FROM dim_customer;



-- Question 4: For the stores, label those in the 'North' or 'South' regions as "Vertical Axis" and all others as "Central/Misc."
SELECT store_name, region, 
CASE WHEN region IN ('North', 'South') THEN 'Vertical Axis' 
ELSE 'Central/Misc' END AS alignment 
FROM dim_store;



-- Question 5: How would you flag customers using 'example.net' as "Internal Test" vs "External" in the dim_customer table?
SELECT email, 
IF(email LIKE '%@example.net', 'Internal Test', 'External') AS user_type 
FROM dim_customer;


-- Question 6: Using the unit_price, classify products over 500.00 as "High-End" and those below as "Standard."
SELECT product_name, unit_price, 
CASE WHEN unit_price > 500 THEN 'High-End' 
ELSE 'Standard' END AS price_class 
FROM dim_product;


-- Question 7: How do you label 'Clothing' and 'Electronics' as "Technical/Wearable" and everything else as "General Inventory"?
SELECT product_name, category, 
CASE WHEN category IN ('Clothing', 'Electronics') THEN 'Technical/Wearable' 
ELSE 'General Inventory' END AS inventory_group 
FROM dim_product;



-- Question 8: If the brand is 'BrandA' or 'BrandB', it is "Premium Brand"; otherwise, it is "Third Party." Use the dim_product table.
SELECT product_name, brand, 
IF(brand IN ('BrandA', 'BrandB'), 'Premium Brand', 'Third Party') AS brand_tier 
FROM dim_product;



-- Question 9: In the fact_sales table, identify transactions where quantity_sold is greater than 5 as "Bulk Order."
SELECT sales_id, quantity_sold, 
CASE WHEN quantity_sold > 5 THEN 'Bulk Order' 
ELSE 'Retail' END AS order_type 
FROM fact_sales;



-- Question 10: How would you flag a sale as "Deep Discount" if the discount is greater than 40.00?
SELECT sales_id, discount, 
IF(discount > 40.00, 'Deep Discount', 'Standard') AS margin_flag 
FROM fact_sales;



-- Question 11: Categorize sales based on total_amount: over 5000 is "Enterprise," 1000-5000 is "Mid-Market," and under 1000 is "Consumer."
SELECT sales_id, total_amount, 
CASE 
  WHEN total_amount > 5000 THEN 'Enterprise' 
  WHEN total_amount BETWEEN 1000 AND 5000 THEN 'Mid-Market' 
  ELSE 'Consumer' 
END AS account_segment 
FROM fact_sales;


-- Question 12: Create a column that shows 'Yes' if a discount was applied and 'No' if it was 0.
SELECT sales_id, discount, 
IF(discount > 0, 'Yes', 'No') AS is_discounted 
FROM fact_sales;



-- Question 13: Using dim_date, label sales in 'October', 'November', and 'December' as "Q4 Peak" and others as "Off-Peak."
SELECT date, month_name, 
CASE WHEN month_name IN ('October', 'November', 'December') THEN 'Q4 Peak' 
ELSE 'Off-Peak' END AS seasonality 
FROM dim_date;



-- Question 14: If a sale occurs on a weekend (is_weekend = 1), label it "Premium Window," otherwise "Standard Window."
SELECT date, is_weekend, 
IF(is_weekend = 1, 'Premium Window', 'Standard Window') AS pricing_window 
FROM dim_date;



-- Question 15: Group the quarters so that Quarters 1 and 2 are "First Half" and 3 and 4 are "Second Half."
SELECT date, quarter, 
CASE WHEN quarter <= 2 THEN 'First Half' 
ELSE 'Second Half' END AS annual_split 
FROM dim_date;