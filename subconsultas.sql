SELECT
    EXTRACT(WEEK FROM SUBQ.trunc_date) AS week_number,
    AVG(SUBQ.transactions_per_day) AS avg_week_transaction
FROM (
    SELECT 
        DATE_TRUNC('day', date) AS trunc_date,
        COUNT(DISTINCT id_transaction) AS transactions_per_day
    FROM 
        transactions
    GROUP BY 
        DATE_TRUNC('day', date)
) AS SUBQ
GROUP BY
    week_number
ORDER BY 
    week_number ASC;
