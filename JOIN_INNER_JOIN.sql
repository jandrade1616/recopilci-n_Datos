SELECT 
	products.name AS name,
    products.category AS category,
    products.units AS units,
    products.weight AS weight,
    products_stores.price AS price
    
FROM
	products
INNER JOIN products_stores ON products_stores.id_product = products.id_product
WHERE 
products.units = 'oz'
AND CAST(products_stores.date_upd as date) = '2019-06-13';
