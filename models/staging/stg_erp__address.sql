with source_address as (
    select
        cast (addressid as int) as endereco_id,
        cast (stateprovinceid as int) as estado_id,
        cast (city as string) as cidade,
        cast(addressline1 as string) as endereco1,
        cast(addressline2 as string) as endereco2,
        cast(postalcode as string) as CEP
        --spatiallocation					


    from {{source('erp','address')}}
)
select * from source_address