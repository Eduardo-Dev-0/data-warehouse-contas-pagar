INSERT INTO dw_pagamento_contas.dim_categoria_despesa
(
    categoria_despesa
)
SELECT DISTINCT
    TRIM(descricao)
FROM financeiro.conta_pagar
WHERE descricao IS NOT NULL
ORDER BY TRIM(descricao);