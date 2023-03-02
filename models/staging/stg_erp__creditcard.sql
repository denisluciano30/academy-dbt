with source_creditcard as (
    select
        cast(creditcardid as int) as cartao_credito_id,
	    cast(cardtype as string) as cartao_credito_tipo,
	    cast(cardnumber as int) as numero_cartao,
	    cast(expmonth as int) as mes_expiracao,
	    cast(expyear as int) as ano_expiracao
    
    from {{source('erp','creditcard')}}
)
select * from source_creditcard
