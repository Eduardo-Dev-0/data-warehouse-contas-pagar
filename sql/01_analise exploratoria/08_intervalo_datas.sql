SELECT
    MIN(emissao) AS primeira_emissao,
    MAX(emissao) AS ultima_emissao,

    MIN(vencimento) AS primeiro_vencimento,
    MAX(vencimento) AS ultimo_vencimento,

    MIN(data_pagamento) AS primeiro_pagamento,
    MAX(data_pagamento) AS ultimo_pagamento

FROM financeiro.conta_pagar;