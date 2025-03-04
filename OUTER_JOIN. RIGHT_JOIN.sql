SELECT DISTINCT 
    products.name AS name
FROM ( SELECT DISTINCT --selecciona productos únicos de la tienda 3.
		id_product
    FROM
       transactions 		
    WHERE
		id_store = 3) AS subquery
    RIGHT JOIN products ON products.id_product = subquery.id_product
WHERE
 subquery.id_product IS NULL;
