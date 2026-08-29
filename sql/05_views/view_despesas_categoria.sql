CREATE OR REPLACE VIEW dw_pagamento_contas.vw_despesas_categoria AS

SELECT
    categoria_despesa,
    COUNT(*) AS quantidade_titulos,
    SUM(valor_original) AS valor_total,
    ROUND(AVG(valor_original), 2) AS valor_medio,
    MIN(valor_original) AS menor_valor,
    MAX(valor_original) AS maior_valor
FROM dw_pagamento_contas.fato_contas_pagar
GROUP BY categoria_despesa
ORDER BY valor_total DESC;