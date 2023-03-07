with clientes as (
    SELECT 
        cliente_id,
        pessoa_id,
        regiao_id
    FROM {{ ref('stg_erp__customer') }}
), pessoas as (
    SELECT 
        pessoa_id,
        tipo_pessoa,
        primeiro_nome,
        nome_meio,
        ultimo_nome
    FROM {{ ref('stg_erp__person') }}
)
select 
    c.cliente_id,
    c.regiao_id,
    p.pessoa_id,
    CONCAT(primeiro_nome, ' ', nome_meio, ' ', ultimo_nome) AS nome

from clientes c
left join pessoas p on c.pessoa_id = p.pessoa_id