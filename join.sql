SELECT 
	transactions.id_transaction AS id_transaction,
    SUM (products_stores.price) AS total,
    COUNT (products_stores.id_product) AS amount
FROM
    transactions
    LEFT JOIN products_stores ON CAST(products_stores.date_upd AS date) = CAST (transactions.date AS date) AND products_stores.id_product = transactions.id_product AND products_stores.id_store = transactions.id_store
GROUP BY 
	transactions.id_transaction
HAVING 
SUM(products_stores.price) > 35
