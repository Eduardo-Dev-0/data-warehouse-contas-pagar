WITH gastos_categoria AS (

    SELECT
        categoria_despesa,
        SUM(valor_original) AS valor_total

    FROM dw_pagamento_contas.fato_contas_pagar

    GROUP BY categoria_despesa
)

SELECT
    categoria_despesa,
    valor_total,

    ROUND(
        100.0 * valor_total
        / SUM(valor_total) OVER (),
        2
    ) AS participacao_percentual

FROM gastos_categoria

ORDER BY valor_total DESC;