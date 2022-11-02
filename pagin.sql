use mydb;
SELECT p.*, pc.category_id FROM product_category pc
JOIN product p
ON pc.product_id = p.id
WHERE p.status = 1 and category_id = 1
LIMIT 0, 11