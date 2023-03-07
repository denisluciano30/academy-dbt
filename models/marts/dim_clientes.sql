with clientes as (
    SELECT 
        cliente_id,
        pessoa_id,
        regiao_id,
        loja_id
    FROM {{ ref('stg_erp__customer') }}
), pessoas as (
    SELECT 
        pessoa_id,
        tipo_pessoa,
        primeiro_nome,
        nome_meio,
        ultimo_nome
    FROM {{ ref('stg_erp__person') }}
), lojas as (
    select
        loja_id,
        nome
    from {{ ref('stg_erp__store') }}
)
select 
    c.cliente_id,
    c.regiao_id,
    p.pessoa_id,
    (case
        when c.loja_id is not null then l.nome
        else CONCAT(primeiro_nome, ' ', nome_meio, ' ', ultimo_nome)
    end) as nome

from clientes c
left join pessoas p on c.pessoa_id = p.pessoa_id
left join lojas l on c.loja_id = l.loja_id