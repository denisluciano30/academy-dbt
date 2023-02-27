with source_product as (
    select

        cast(productid as int) as produto_id, 
        cast(name as string) as nome,
        cast(productnumber as string) as numero_produto,
        -- cast(makeflag as boolean) as makeflag,
        -- cast(finishedgoodsflag as  as boolean) as finishedgoodsflag,	
        -- cast(color as string)	
        -- cast(safetystocklevel as int)
        -- cast(reorderpoint as  as int)
        -- cast(standardcost as numeric)
        -- cast(listprice as numeric)
        -- cast(size as as string)
        -- cast(sizeunitmeasurecode as as string)
        -- cast(weightunitmeasurecode as string)
        -- cast(weight as numeric)
        -- cast(daystomanufacture as  as int)
        -- cast(productline as as string)
        -- cast(class as as string)
        -- cast(style as as string)
        cast(productsubcategoryid as int) as subcategoria_produto_id,
        cast(productmodelid as int)	as modelo_produto_id
        -- cast(sellstartdate as as string)
        -- cast(sellenddate as as string)
        -- cast(discontinueddate as  as int)
        -- cast(rowguid as string)	
    from {{source('erp','product')}}
)
select * from source_product