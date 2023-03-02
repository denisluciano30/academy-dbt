with source_product as (
    select

        cast(productid as int) as produto_id, 
        cast(name as string) as nome,
        cast(productnumber as string) as numero_produto,
        cast(productsubcategoryid as int) as subcategoria_produto_id,
        cast(productmodelid as int)	as modelo_produto_id

    from {{source('erp','product')}}
)
select * from source_product