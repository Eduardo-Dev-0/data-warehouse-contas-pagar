INSERT INTO dw_pagamento_contas.dim_forma_pagamento
(
    forma_pagamento
)
SELECT
    descricao
FROM vendas.forma_pagamento
ORDER BY id;