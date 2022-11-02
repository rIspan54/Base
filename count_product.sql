use mydb;
SELECT cat.id, cat.name, COUNT(category_id) as count FROM category cat 
LEFT JOIN product_category pr
ON cat.id = pr.category_id
GROUP BY category_id
ORDER BY count DESC