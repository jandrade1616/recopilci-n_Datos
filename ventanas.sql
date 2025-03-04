SELECT DISTINCT
    name_store AS store_name,
    category AS category,
    date_upd::date AS sale_date,
    name,
    price,
    RANK() OVER (PARTITION BY name_store, category ORDER BY price) AS rank
FROM
    products_data_all
WHERE
    date_upd::date = '2019-06-02'
ORDER BY
    store_name,
    category,
    rank;
