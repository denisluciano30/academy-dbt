with
    pedidos as (
        select *
        from {{ ref('stg_erp__salesorderheader') }}
    )
select * from pedidos