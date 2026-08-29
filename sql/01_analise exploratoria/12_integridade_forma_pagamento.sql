SELECT
    COUNT(*) AS registros_sem_forma_pagamento
FROM financeiro.conta_pagar cp
LEFT JOIN vendas.forma_pagamento fp
    ON cp.id_forma_pagamento = fp.id
WHERE fp.id IS NULL;