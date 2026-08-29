INSERT INTO dw_pagamento_contas.dim_tempo
(
    data,
    ano,
    mes,
    dia,
    dia_da_semana,
    nome_mes,
    trimestre,
    semestre
)
SELECT
    dt::date AS data,
    EXTRACT(YEAR FROM dt)::integer AS ano,
    EXTRACT(MONTH FROM dt)::integer AS mes,
    EXTRACT(DAY FROM dt)::integer AS dia,
    TRIM(TO_CHAR(dt, 'Day')) AS dia_da_semana,
    TRIM(TO_CHAR(dt, 'Month')) AS nome_mes,
    EXTRACT(QUARTER FROM dt)::integer AS trimestre,
    CASE
        WHEN EXTRACT(MONTH FROM dt) <= 6 THEN 1
        ELSE 2
    END AS semestre
FROM generate_series(
    '2015-01-01'::date,
    '2030-12-30'::date,
    INTERVAL '1 day'
) AS dt;