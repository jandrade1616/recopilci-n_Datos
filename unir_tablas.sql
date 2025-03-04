SELECT 
	transactions.id_transaction AS id_transaction,
    products.name AS name
    
FROM
    transactions
    INNER JOIN products ON products.id_product = transactions.id_product
    INNER JOIN weather ON CAST (weather.date AS date) = cast (transactions.date AS date)
WHERE 
weather.rain = False	
