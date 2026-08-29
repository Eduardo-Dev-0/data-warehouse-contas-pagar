SELECT
    COUNT(*) AS total_registros,
    COUNT(*) FILTER (WHERE valor_atual = 0) AS valor_atual_zerado,
    COUNT(*) FILTER (WHERE valor_atual <> 0) AS valor_atual_nao_zerado
FROM financeiro.conta_pagar;