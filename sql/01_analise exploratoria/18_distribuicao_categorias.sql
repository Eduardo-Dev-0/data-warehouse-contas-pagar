SELECT
    descricao,
    COUNT(*) AS quantidade
FROM financeiro.conta_pagar
GROUP BY descricao
ORDER BY quantidade DESC;