use mydb;
SELECT pc.product_id ,c.*  FROM product_category pc
JOIN category c
ON pc.category_id = c.id
WHERE product_id = 5