SELECT
    COUNT(*) AS total_registros,

    COUNT(*) FILTER (
        WHERE emissao > vencimento
    ) AS emissao_apos_vencimento,

    COUNT(*) FILTER (
        WHERE data_pagamento < emissao
    ) AS pagamento_antes_emissao,

    COUNT(*) FILTER (
        WHERE data_pagamento > vencimento
    ) AS pagamento_apos_vencimento

FROM financeiro.conta_pagar;