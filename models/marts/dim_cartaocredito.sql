WITH cartaocredito AS (
    SELECT *
    FROM {{ ref('stg_erp__creditcard') }}
) 
SELECT
    *
FROM cartaocredito c

