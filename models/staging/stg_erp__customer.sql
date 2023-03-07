with source_customer as (
    select
        cast(customerid as int) as cliente_id,
        cast(personid as int) as pessoa_id,
        cast(storeid as int) as loja_id,
        cast(territoryid as int) as regiao_id
    from {{source('erp','customer')}}
)
select * from source_customer