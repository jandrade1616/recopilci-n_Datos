SELECT
    DATE_TRUNC('day', date) AS date_month,
    COUNT(id_product) AS cnt
FROM
    transactions
GROUP BY
    date_month
ORDER BY
    date_month;
