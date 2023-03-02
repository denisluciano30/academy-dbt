WITH enderecos AS (
    SELECT *
    FROM {{ ref('stg_erp__address') }}
) 
SELECT
    *
FROM enderecos

