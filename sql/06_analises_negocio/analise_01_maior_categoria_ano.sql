WITH gastos_anuais AS (

    SELECT
        t.ano,
        f.categoria_despesa,
        SUM(f.valor_original) AS valor_total

    FROM dw_pagamento_contas.fato_contas_pagar f

    INNER JOIN dw_pagamento_contas.dim_tempo t
        ON f.id_tempo_emissao = t.id

    GROUP BY
        t.ano,
        f.categoria_despesa
),

ranking AS (

    SELECT
        ano,
        categoria_despesa,
        valor_total,

        ROW_NUMBER() OVER (
            PARTITION BY ano
            ORDER BY valor_total DESC
        ) AS posicao

    FROM gastos_anuais
)

SELECT
    ano,
    categoria_despesa,
    valor_total

FROM ranking

WHERE posicao = 1

ORDER BY ano;