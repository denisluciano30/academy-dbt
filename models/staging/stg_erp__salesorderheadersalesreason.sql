with source_salesorderheadersalesreason as (
    select 
        cast(salesorderid as int) as pedido_id,
        cast(salesreasonid as int) as razao_venda_id
    from {{source('erp','salesorderheadersalesreason')}}
)
select * from source_salesorderheadersalesreason