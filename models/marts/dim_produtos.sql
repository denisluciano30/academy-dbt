WITH produtos AS (
    SELECT *
    FROM {{ ref('stg_erp__product') }}
) 
SELECT
    *
FROM produtos c

