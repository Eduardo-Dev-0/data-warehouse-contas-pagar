SELECT
    COUNT(*) AS quantidade,
    SUM(valor_original) AS valor_total,
    AVG(valor_original) AS valor_medio,
    MIN(valor_original) AS menor_valor,
    MAX(valor_original) AS maior_valor
FROM financeiro.conta_pagar;