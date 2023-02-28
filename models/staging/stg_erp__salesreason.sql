with source_salesreason as (
    select 
        cast(salesreasonid as int) as razao_venda_id,
        cast(name as string) as  nome,
        cast(reasontype as string) tipo_razao
        --modifieddate    
    from {{source('erp','salesreason')}}
)
select * from source_salesreason