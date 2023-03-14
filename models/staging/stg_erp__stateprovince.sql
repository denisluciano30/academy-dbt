with source_stateprovince as(
    select
        cast(stateprovinceid as int) as estado_id,
        cast(stateprovincecode as string) as codigo_estado,
        cast(countryregioncode as string) as codigo_regiao,
        cast(name as string) as nome,
        cast(territoryid as int) as territorio_id
    from {{source('erp','stateprovince')}}

)
select * from source_stateprovince