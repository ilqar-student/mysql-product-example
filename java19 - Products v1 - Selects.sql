use java19;

-- All tables
SELECT * FROM language;
SELECT * FROM category;
SELECT * FROM measure_unit;
SELECT * FROM product;
SELECT * FROM product_description;

-- Convinient and comprehensive way to query the product with its category name 
-- SELECT product.name AS Product, category.name AS Category 
-- FROM product
-- JOIN category ON category.id = product.category_id;

-- Product with its category name 
-- NOTE: Optimal way to query the product with its category name
SELECT product.name AS Product, category.name AS Category 
FROM category
JOIN product ON category.id = product.category_id
;

-- Product with its category name by using the View
-- NOTE: This one line below is equivalent to the previous [optimal] one
SELECT * FROM product_and_category;

-- Product with its category name by using the Procedure
-- NOTE: Same as above code but with the use of Stored Procedures
CALL product_and_category_proc(1);

-- Products with their category names and descriptions
-- NOTE: This version is not optimal !
SET @lang = "en";
SELECT 
	category.name AS Category,
    product.name AS Product,
    product_description.description AS Description
FROM product
JOIN category ON category.id = product.category_id 
JOIN product_description ON product_description.product_id = product.id
JOIN language ON language.id = product_description.language_id
WHERE language.code = @lang
;

-- Avarage price of Products in each Category
SELECT 
	category.name AS Category,
    avg(price) AS 'Avarage Price'
FROM product
INNER JOIN category ON category.id = product.category_id 
GROUP BY Category
;

-- Total Worth of Products in each Category grouped by the measure units
SELECT 
	category.name AS Category,
	sum(stock) AS Stock,
	measure_unit.unit AS 'In Units',
    sum(price * stock) AS 'Worth $'
FROM product
JOIN category ON category.id = product.category_id 
JOIN measure_unit ON measure_unit.id = product.units_id 
GROUP BY Category, product.units_id
;


-- First sort by category_id then
-- Sort Products by Name that has Fruit category
-- Sort Products by Price that has Vegetable category
-- NOTE: Sorting first by category_id to avoid inconsistency
SELECT * FROM product
ORDER BY category_id, (
	CASE
		WHEN product.category_id = 1 THEN product.name
        ELSE product.price
	END
) desc
;
