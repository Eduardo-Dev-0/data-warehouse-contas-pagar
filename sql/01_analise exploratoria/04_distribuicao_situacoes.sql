SELECT
    s.descricao AS situacao,
    COUNT(cp.id) AS quantidade
FROM financeiro.conta_pagar cp
INNER JOIN financeiro.situacao_titulo s
    ON cp.id_situacao = s.id
GROUP BY s.descricao
ORDER BY quantidade DESC;