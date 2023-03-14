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

    
select 
    p.pedido_id,
    p.cliente_id,
    p.territorio_id,
    p.endereco_id,
    p.cartao_credito_id,	
    p.data_do_pedido,			
    p.data_de_vencimento,					
    p.data_de_envio,					
    p.status,
    p.subtotal,
    pd.detalhe_pedido_id,
    pd.quantidade_pedido,
    pd.produto_id,
    pd.preco_unitario,
    (pd.preco_unitario *  pd.quantidade_pedido) as valor_bruto,
    (pd.preco_unitario *  pd.quantidade_pedido) * (1 - desconto_preco_unitario) as valor_liquido,
    pd.desconto_preco_unitario
from pedidos p
left join pedidosdetalhes pd on p.pedido_id = pd.pedido_id