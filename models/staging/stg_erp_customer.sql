with source_customer as (
    select
        cast(customerid as int) as cliente_id,
        cast(personid	as int) as pessoa_id,
        --storeid,
        cast(territoryid as int) as regiao_id
    from {{source('erp','customer')}}
)
select * from source_customer