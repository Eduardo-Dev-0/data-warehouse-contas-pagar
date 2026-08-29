CREATE OR REPLACE VIEW dw_pagamento_contas.vw_evolucao_despesas AS

SELECT
    t.ano,
    t.trimestre,
    COUNT(*) AS quantidade_titulos,
    SUM(f.valor_original) AS valor_total,
    ROUND(AVG(f.valor_original), 2) AS valor_medio

FROM dw_pagamento_contas.fato_contas_pagar f

INNER JOIN dw_pagamento_contas.dim_tempo t
    ON f.id_tempo_emissao = t.id

GROUP BY
    t.ano,
    t.trimestre

ORDER BY
    t.ano,
    t.trimestre;