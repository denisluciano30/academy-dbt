WITH produtos AS (
    SELECT 
        produto_id, 
        nome,
        numero_produto,
        subcategoria_produto_id,
        modelo_produto_id
    FROM {{ ref('stg_erp__product') }}
) 
SELECT
    *
FROM produtos c

