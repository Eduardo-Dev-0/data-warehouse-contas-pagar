CREATE OR REPLACE VIEW dw_pagamento_contas.vw_formas_pagamento AS

SELECT
    forma_pagamento,
    COUNT(*) AS quantidade_titulos,
    SUM(valor_original) AS valor_total,
    ROUND(AVG(valor_original), 2) AS valor_medio

FROM dw_pagamento_contas.fato_contas_pagar

GROUP BY forma_pagamento

ORDER BY valor_total DESC;