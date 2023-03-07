with razaovenda as (
    SELECT 
        razao_venda_id,
        nome,
        tipo_razao
    FROM {{ ref('stg_erp__salesreason') }}
), razaovendapedido as (
    SELECT 
        pedido_id,
        razao_venda_id
    FROM {{ ref('stg_erp__salesorderheadersalesreason') }}
)
SELECT 
  rvp.pedido_id AS pedido_id,
  STRING_AGG(rv.nome, ', ') AS razoes_de_venda
FROM 
  razaovendapedido rvp
  LEFT JOIN razaovenda rv on rvp.razao_venda_id = rv.razao_venda_id
GROUP BY 
  rvp.pedido_id


