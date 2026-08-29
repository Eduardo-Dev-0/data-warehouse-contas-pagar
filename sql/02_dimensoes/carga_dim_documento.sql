INSERT INTO dw_pagamento_contas.dim_documento
(
    documento
)
SELECT DISTINCT
    documento
FROM financeiro.conta_pagar
WHERE documento IS NOT NULL
ORDER BY documento;