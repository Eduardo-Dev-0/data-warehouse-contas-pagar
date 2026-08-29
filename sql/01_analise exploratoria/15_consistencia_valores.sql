SELECT
    COUNT(*) AS total_registros,

    COUNT(*) FILTER (
        WHERE valor_original <= 0
    ) AS valor_original_invalido,

    COUNT(*) FILTER (
        WHERE valor_atual < 0
    ) AS valor_atual_negativo

FROM financeiro.conta_pagar;