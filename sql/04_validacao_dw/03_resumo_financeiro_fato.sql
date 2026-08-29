SELECT
    COUNT(*) AS quantidade,
    SUM(valor_original) AS valor_original_total,
    SUM(valor_atual) AS valor_atual_total,
    AVG(valor_original) AS valor_original_medio,
    MIN(valor_original) AS menor_valor,
    MAX(valor_original) AS maior_valor
FROM dw_pagamento_contas.fato_contas_pagar;