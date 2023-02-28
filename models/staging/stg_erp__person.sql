with source_person as (
    select
        cast(businessentityid as int) as pessoa_id,
        cast(persontype as string) as tipo_pessoa,
        cast(firstname as string) as primeiro_nome,
        cast(middlename as string) as nome_meio,
        cast(lastname as string) as ultimo_nome
    from {{source('erp', 'person')}}
)
select * from source_person