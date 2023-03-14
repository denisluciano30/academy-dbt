WITH cartaocredito AS (
    SELECT 
        cartao_credito_id,
        cartao_credito_tipo,
        numero_cartao,
        mes_expiracao,
        ano_expiracao
    FROM {{ ref('stg_erp__creditcard') }}
) 
SELECT
    *
FROM cartaocredito c

