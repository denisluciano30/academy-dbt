with source_salesorderdetail as (
    select 
        cast(salesorderid as int) as pedido_id,
        cast(salesorderdetailid as string) as detalhe_pedido_id,
        cast(orderqty as int) as quantidade_pedido,
        cast(productid as int) as  produto_id,
        cast(unitprice as numeric) as  preco_unitario,
        cast(unitpricediscount as numeric) as  desconto_preco_unitario
    from {{source('erp','salesorderdetail')}} 
)
select * from source_salesorderdetail