WITH enderecos AS (
    SELECT 
        endereco_id,
        estado_id,
        cidade,
        endereco1,
        endereco2,
        CEP
    FROM {{ ref('stg_erp__address') }}
) 
SELECT
    *
FROM enderecos

