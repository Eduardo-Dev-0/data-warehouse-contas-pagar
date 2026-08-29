SELECT
    COUNT(*) AS total_registros,
    COUNT(DISTINCT id) AS ids_distintos,
    COUNT(*) - COUNT(DISTINCT id) AS ids_duplicados
FROM financeiro.conta_pagar;