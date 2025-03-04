SELECT DISTINCT
    name_store AS store_name,
    date_upd::date AS sale_date,
    category AS category,
    SUM(price) OVER (
    PARTITION BY 
      name_store, category, date_upd
  ) * 100 / SUM(price) OVER (
    PARTITION BY 
      name_store, date_upd
  ) AS percent
FROM
    products_data_all
WHERE
    date_upd::date BETWEEN '2019-06-01'
    AND '2019-06-06'
ORDER BY
    date_upd::date,
    name_store;
