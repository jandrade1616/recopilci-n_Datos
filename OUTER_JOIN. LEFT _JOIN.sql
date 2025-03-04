SELECT DISTINCT
    products.name AS name
FROM
    products
    LEFT JOIN (
        SELECT
            id_product,
            id_store
        FROM
            transactions
        WHERE
            CAST(transactions.date AS date) = '2019-06-11') AS subquery ON subquery.id_product = products.id_product
WHERE
    subquery.id_product IS NULL;
