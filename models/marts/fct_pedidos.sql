with
    pedidos as (
        select 
            pedido_id,
            cliente_id,
            territorio_id,
            endereco_id,
            cartao_credito_id,	
            data_do_pedido,			
            data_de_vencimento,					
            data_de_envio,					
            status,
            subtotal	
        from {{ ref('stg_erp__salesorderheader') }}
    ), pedidosdetalhes as (
        select 
            pedido_id,
            detalhe_pedido_id,
            quantidade_pedido,
            produto_id,
            preco_unitario,
            desconto_preco_unitario
        from {{ ref('stg_erp__salesorderdetail') }} 
    )

    
select * 
from pedidos p
--left join pedidosdetalhes pd on p.pedido_id = pd.venda_id