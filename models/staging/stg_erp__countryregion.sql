with source_countryregion as (
    select
        cast(countryregioncode as string) as codigo_regiao,	
        cast(name as string) as nome
    from {{source('erp','countryregion')}} 
)
select * from source_countryregion