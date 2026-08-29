SELECT
    COUNT(*) FILTER (WHERE documento IS NULL) AS documento_nulo,
    COUNT(*) FILTER (WHERE emissao IS NULL) AS emissao_nula,
    COUNT(*) FILTER (WHERE vencimento IS NULL) AS vencimento_nulo,
    COUNT(*) FILTER (WHERE valor_original IS NULL) AS valor_original_nulo,
    COUNT(*) FILTER (WHERE valor_atual IS NULL) AS valor_atual_nulo,
    COUNT(*) FILTER (WHERE id_situacao IS NULL) AS situacao_nula,
    COUNT(*) FILTER (WHERE data_pagamento IS NULL) AS pagamento_nulo,
    COUNT(*) FILTER (WHERE id_forma_pagamento IS NULL) AS forma_pagamento_nula,
    COUNT(*) FILTER (WHERE descricao IS NULL) AS descricao_nula
FROM financeiro.conta_pagar;