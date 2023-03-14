WITH enderecos AS (
    SELECT 
        endereco_id,
        estado_id,
        cidade,
        endereco1,
        endereco2,
        CEP
    FROM {{ ref('stg_erp__address') }}
), estado as (
    select 
        estado_id,
        codigo_estado,
        codigo_regiao,
        nome,
        territorio_id
    from {{ ref('stg_erp__stateprovince') }}
), pais as (
    select 
        codigo_regiao,	
        nome
    from {{ ref('stg_erp__countryregion') }} 
)
SELECT
    en.endereco_id,
    en.estado_id,
    en.cidade, 
    en.endereco1 as endereco,
    en.CEP,
    es.codigo_estado,
    es.codigo_regiao,
    es.nome as estado,
    es.territorio_id,
    p.nome as pais


FROM enderecos en
left join estado es on en.estado_id = es.estado_id
left join pais p on es.codigo_regiao = p.codigo_regiao

