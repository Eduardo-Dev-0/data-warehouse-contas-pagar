SELECT
    COUNT(*) AS total_registros,
    COUNT(data_pagamento) AS com_data_pagamento,
    COUNT(*) - COUNT(data_pagamento) AS sem_data_pagamento
FROM financeiro.conta_pagar;