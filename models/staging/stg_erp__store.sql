with source_store as (
    select 
        cast(businessentityid as int) as loja_id,
        cast(name as string) as nome
    from {{source('erp','store')}}
)
select * from source_store