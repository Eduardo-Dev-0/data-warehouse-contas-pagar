INSERT INTO dw_pagamento_contas.dim_situacao
(
    situacao
)
SELECT
    descricao
FROM financeiro.situacao_titulo
ORDER BY id;