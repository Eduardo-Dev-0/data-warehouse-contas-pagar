SELECT
    COUNT(*) AS total_registros,

    COUNT(*) FILTER (WHERE documento IS NULL) AS documento_nulo,
    COUNT(*) FILTER (WHERE categoria_despesa IS NULL) AS categoria_nula,
    COUNT(*) FILTER (WHERE situacao IS NULL) AS situacao_nula,
    COUNT(*) FILTER (WHERE forma_pagamento IS NULL) AS forma_pagamento_nula,
    COUNT(*) FILTER (WHERE emissao IS NULL) AS emissao_nula,
    COUNT(*) FILTER (WHERE vencimento IS NULL) AS vencimento_nula,
    COUNT(*) FILTER (WHERE data_pagamento IS NULL) AS pagamento_nulo

FROM dw_pagamento_contas.fato_contas_pagar;