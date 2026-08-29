SELECT
    COUNT(DISTINCT descricao) AS descricoes_distintas,

    COUNT(DISTINCT TRIM(descricao))
        AS descricoes_distintas_sem_espacos

FROM financeiro.conta_pagar;