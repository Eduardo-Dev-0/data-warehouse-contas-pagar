SELECT
    SUM(quantidade_titulos) AS total_titulos
FROM dw_pagamento_contas.fato_contas_pagar;