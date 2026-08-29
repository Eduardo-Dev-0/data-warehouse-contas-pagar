SELECT
    MIN(valor_original) AS minimo,

    PERCENTILE_CONT(0.25)
        WITHIN GROUP (ORDER BY valor_original) AS q1,

    PERCENTILE_CONT(0.50)
        WITHIN GROUP (ORDER BY valor_original) AS mediana,

    PERCENTILE_CONT(0.75)
        WITHIN GROUP (ORDER BY valor_original) AS q3,

    MAX(valor_original) AS maximo

FROM financeiro.conta_pagar;