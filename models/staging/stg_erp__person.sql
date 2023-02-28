with source_person as (
    select
        businessentityid as pessoa_id,
        persontype as tipo_pessoa,
        cast(firstname as string) as primeiro_nome,
        cast(middlename as string) as nome_meio,
        cast(lastname as string) as ultimo_nome
    from {{source('erp', 'person')}}
)
select * from source_person