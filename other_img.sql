use mydb;
SELECT pi.*, i.url, i.alt FROM product_img pi
JOIN img i
ON pi.img_id = i.id
WHERE pi.product_id = 1