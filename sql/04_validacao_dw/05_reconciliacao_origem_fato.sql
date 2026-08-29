SELECT

    (SELECT COUNT(*)
     FROM financeiro.conta_pagar)
        AS registros_origem,

    (SELECT COUNT(*)
     FROM dw_pagamento_contas.fato_contas_pagar)
        AS registros_fato,

    (SELECT SUM(valor_original)
     FROM financeiro.conta_pagar)
        AS valor_origem,

    (SELECT SUM(valor_original)
     FROM dw_pagamento_contas.fato_contas_pagar)
        AS valor_fato;