SELECT
    COUNT(*) AS registros_sem_situacao
FROM financeiro.conta_pagar cp
LEFT JOIN financeiro.situacao_titulo s
    ON cp.id_situacao = s.id
WHERE s.id IS NULL;