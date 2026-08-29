INSERT INTO dw_pagamento_contas.fato_contas_pagar
(
    documento,
    categoria_despesa,
    situacao,
    forma_pagamento,
    emissao,
    vencimento,
    data_pagamento,
    valor_original,
    valor_atual,
    id_documento,
    id_categoria_despesa,
    id_situacao,
    id_forma_pagamento,
    id_tempo_emissao,
    id_tempo_vencimento,
    id_tempo_pagamento
)
SELECT
    cp.documento,
    cp.descricao,
    st.descricao,
    fp.descricao,
    cp.emissao,
    cp.vencimento,
    cp.data_pagamento,
    cp.valor_original,
    cp.valor_atual,

    dd.id,
    dc.id,
    ds.id,
    dfp.id,

    dte.id,
    dtv.id,
    dtp.id

FROM financeiro.conta_pagar cp

INNER JOIN financeiro.situacao_titulo st
    ON cp.id_situacao = st.id

INNER JOIN vendas.forma_pagamento fp
    ON cp.id_forma_pagamento = fp.id

INNER JOIN dw_pagamento_contas.dim_documento dd
    ON cp.documento = dd.documento

INNER JOIN dw_pagamento_contas.dim_categoria_despesa dc
    ON TRIM(cp.descricao) = dc.categoria_despesa

INNER JOIN dw_pagamento_contas.dim_situacao ds
    ON st.descricao = ds.situacao

INNER JOIN dw_pagamento_contas.dim_forma_pagamento dfp
    ON fp.descricao = dfp.forma_pagamento

INNER JOIN dw_pagamento_contas.dim_tempo dte
    ON cp.emissao = dte.data

INNER JOIN dw_pagamento_contas.dim_tempo dtv
    ON cp.vencimento = dtv.data

INNER JOIN dw_pagamento_contas.dim_tempo dtp
    ON cp.data_pagamento = dtp.data;