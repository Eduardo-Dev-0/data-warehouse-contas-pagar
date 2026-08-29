WITH gastos_anuais AS (

    SELECT
        t.ano,
        SUM(f.valor_original) AS valor_total

    FROM dw_pagamento_contas.fato_contas_pagar f

    INNER JOIN dw_pagamento_contas.dim_tempo t
        ON f.id_tempo_emissao = t.id

    GROUP BY t.ano
),

comparacao AS (

    SELECT
        ano,
        valor_total,

        LAG(valor_total) OVER (
            ORDER BY ano
        ) AS valor_ano_anterior

    FROM gastos_anuais
)

SELECT
    ano,
    valor_total,
    valor_ano_anterior,

    CASE
        WHEN valor_ano_anterior IS NULL
            THEN 'Sem Valor Para comparar'

        ELSE
            ROUND(
                100.0 *
                (valor_total - valor_ano_anterior)
                / valor_ano_anterior,
                2
            )::TEXT || '%'
    END AS variacao_percentual

FROM comparacao

ORDER BY ano;