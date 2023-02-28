with source_productcategory as (
    select
        cast(productcategoryid as int) as categoria_produto_id,
        cast(name as string) as nome,
        --rowguid,
        --modifieddate
    from {{source('erp','productcategory')}}
)
select * from source_productcategory