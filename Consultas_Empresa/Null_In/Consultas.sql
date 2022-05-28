-- Todos os funcionários que tem supervisor
SELECT *
FROM funcionario
WHERE cpf_supervisor IS NOT NULL;

-- Todos os funcionários que não tem supervisor
SELECT *
FROM funcionario
WHERE cpf_supervisor IS NULL;

-- Todos os projetos cujo número é 2,3 ou 10
SELECT *
FROM projeto
WHERE projnumero IN (2,3,10);
