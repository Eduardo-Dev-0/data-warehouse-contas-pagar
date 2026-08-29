SELECT
    MIN(criado_em) AS menor_criacao,
    MAX(criado_em) AS maior_criacao,

    MIN(atualizado_em) AS menor_atualizacao,
    MAX(atualizado_em) AS maior_atualizacao,

    COUNT(*) FILTER (
        WHERE atualizado_em < criado_em
    ) AS atualizacao_antes_criacao

FROM financeiro.conta_pagar;