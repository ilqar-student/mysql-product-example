CREATE VIEW `product_and_category` AS
SELECT 
	product.name AS Product, 
    category.name AS Category 
FROM category
JOIN product ON category.id = product.category_id
;