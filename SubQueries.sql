-- SUBQUERIES

SELECT AVG(unit_price) 
FROM dim_product; -- returns single value

-- display products having price more than Avg price

SELECT *, AVG(unit_price) AS AVG_PRICE
FROM dim_product
WHERE unit_price > '495.790060';


