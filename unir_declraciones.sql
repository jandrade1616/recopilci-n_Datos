SELECT 
    COUNT (SUBQ.name) AS SUBQ--escribe tu código aquí
FROM ( SELECT DISTINCT
        products.name AS name
    FROM
        products
    LEFT JOIN (
        SELECT
            id_product
        FROM
            transactions
        WHERE
            CAST(transactions.date AS date) = '2019-06-01') AS SUBQ1 ON products.id_product = SUBQ1.id_product
    WHERE
        SUBQ1.id_product IS NOT NULL
        UNION ALL --escribe tu código aquí
        SELECT DISTINCT
            products.name AS name
        FROM
            products
        LEFT JOIN (
            SELECT
                id_product
            FROM
                transactions
            WHERE
                CAST(transactions.date AS date) = '2019-06-08') AS SUBQ2 ON products.id_product = SUBQ2.id_product
        WHERE
            SUBQ2.id_product IS NOT NULL) AS SUBQ
