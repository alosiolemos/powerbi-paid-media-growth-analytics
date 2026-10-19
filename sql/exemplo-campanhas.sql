-- Exemplo didático de seleção de dados já organizados no BigQuery.
-- Projeto, dataset, tabela e campos são fictícios; não é a consulta histórica.
-- Nenhuma conversão de cost_micros ou unidade monetária é presumida.
SELECT
    CAST(data AS DATE) AS data,
    CAST(campanha_id AS STRING) AS campanha_id,
    campanha_nome,
    SUM(custo) AS custo,
    SUM(cliques) AS cliques,
    SUM(impressoes) AS impressoes
FROM `projeto_exemplo.dataset_exemplo.midia_diaria`
GROUP BY data, campanha_id, campanha_nome;
