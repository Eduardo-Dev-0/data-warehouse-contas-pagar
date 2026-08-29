SELECT
    COUNT(*) AS total_registros,

    COUNT(*) FILTER (
        WHERE data_pagamento > vencimento
    ) AS pagos_com_atraso,

    COUNT(*) FILTER (
        WHERE data_pagamento <= vencimento
    ) AS pagos_no_prazo

FROM financeiro.conta_pagar;