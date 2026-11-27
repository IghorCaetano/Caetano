-- Verificando se id_transacao é de fato único em cada tabela de score antes de decidir o tipo de JOIN, pra não duplicar linha sem perceber.
SELECT (COUNT(*))
FROM `unipdsaula-514200.CapstoneFraude.scores_comportamentais`;

SELECT COUNT(DISTINCT id_transacao)
FROM `unipdsaula-514200.CapstoneFraude.scores_comportamentais`;

SELECT (COUNT(*))
FROM `unipdsaula-514200.CapstoneFraude.scores_financeiros`;

SELECT COUNT(DISTINCT id_transacao)
FROM `unipdsaula-514200.CapstoneFraude.scores_financeiros`;

SELECT (COUNT(*))
FROM `unipdsaula-514200.CapstoneFraude.scores_modelo`;

SELECT COUNT(DISTINCT id_transacao)
FROM `unipdsaula-514200.CapstoneFraude.scores_modelo`;

SELECT (COUNT(*))
FROM `unipdsaula-514200.CapstoneFraude.transacoes`;

SELECT COUNT(DISTINCT id_transacao)
FROM `unipdsaula-514200.CapstoneFraude.transacoes`;
-- resultado: 150200 em todas as 4 tabelas → confirma 1:1, id_transacao serve como PK

-----------------------------------------------------------------------------------------------------------------------

-- teste de integridade referencial, buscando se algum país existe na tabela transacoes que não está em dim_paises
SELECT DISTINCT sigla_pais
FROM `unipdsaula-514200.CapstoneFraude.dim_paises`;

SELECT DISTINCT pais
FROM `unipdsaula-514200.CapstoneFraude.transacoes`;
-- possível notar que na tabela transacoes existe linha com pais sendo NULL, possivelmente um INNER JOIN fará com que sumam linhas silenciosamente

SELECT *
FROM `unipdsaula-514200.CapstoneFraude.transacoes`
WHERE pais IS NULL;

-----------------------------------------------------------------------------------------------------------------------
