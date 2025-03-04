SELECT
    name,
    CASE WHEN weight IS NULL
        AND units = '%' THEN
        '1.0'
    WHEN weight IS NULL 
    AND units = 'oz' THEN 
    '23.0705263269575'
    WHEN weight IS NULL 
    AND units = 'ct' THEN 
    '10.0'
    WHEN weight IS NULL 
    AND units = 'pk' THEN 
    '12.0909090909091'
    WHEN weight IS NULL 
    AND units = 'gal' THEN 
    '0.650793650793651'
    WHEN weight IS NULL 
    AND units = 'pt' THEN 
    '1.0'
    WHEN weight IS NULL 
    AND units = 'qt' THEN 
    '1.0'

    ELSE 
       weight 
    END AS weight_full
FROM
    products;
