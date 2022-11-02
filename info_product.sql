use mydb;
SELECT p.*, bd_cat.category_id as main_category, bd_cat.name as cat_name, bd_cat.description as description, bd_img.url, bd_img.alt FROM product p
INNER JOIN (SELECT mc.*, c.name, c.description FROM main_category mc
JOIN category c
WHERE mc.category_id = c.id) bd_cat
ON p.id = bd_cat.product_id
INNER JOIN (SELECT mi.*, i.url, i.alt FROM main_image mi
JOIN img i
ON mi.img_id = i.id) bd_img
ON p.id = bd_img.product_id