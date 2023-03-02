with
    source_salesorderheader as (
        select 
            cast(salesorderid as int) as pedido_id,
            cast(customerid as string) as cliente_id,
            cast(territoryid as int) as territorio_id,
            cast(shiptoaddressid as int) as endereco_id,
            cast(creditcardid	as string) as cartao_credito_id,	
            cast(orderdate as timestamp) as data_do_pedido,			
            cast(duedate as timestamp) as data_de_vencimento,					
            cast(shipdate as timestamp) as data_de_envio,					
            cast(status as int) as status,
            cast(subtotal	as numeric)	as subtotal			
        from {{source('erp','salesorderheader')}}
    )
select *
from source_salesorderheader