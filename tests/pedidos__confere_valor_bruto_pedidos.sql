
SELECT 
  SUM(valor_bruto) as total_valor_bruto
from {{ ref('fct_pedidos') }} 
HAVING total_valor_bruto < 100000000
