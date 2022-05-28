-- C9
SELECT cpf
FROM funcionario;

-- C10 
SELECT cpf, dnome
FROM funcionario, departamento;

-- Todo funcionarios cujo departamento que ele trabalha é 5 (pesquisa)
SELECT *
FROM funcionario
WHERE dnr=5;

-- Todo os funcionários que trabalham no departamento de pesquisa juntamente com as informações do departamento
SELECT *
FROM funcionario, departamento
WHERE dnome='Pesquisa' and dnr=dnumero;

-- C11
SELECT salario
FROM funcionario;

-- C11A
SELECT DISTINCT salario
FROM funcionario;

-- C4A
(SELECT projnumero
FROM projeto, departamento, funcionario
WHERE dnum=dnumero and cpf_gerente=cpf and unome='Silva')
UNION
(SELECT projnumero
FROM funcionario, trabalha_em, projeto
WHERE cpf=fcpf and unome='Silva' and pnr=projnumero);

-- Todos os nome que começam com Jo
SELECT pnome
FROM funcionario
WHERE pnome LIKE 'Jo%';

-- Todos nome que contém 'i'
SELECT pnome
FROM funcionario
WHERE pnome LIKE '%i%';

-- Nomes que terminam com 'r'
SELECT pnome
FROM funcionario
WHERE pnome LIKE '%r';

-- Nome completo dos nossos funcionários
SELECT pnome || ' ' || minicial || ' ' || unome
FROM funcionario;

-- Salários acrescido de 10%
SELECT salario*1.1
FROM funcionario;

-- Funcionários com salário entre 30k e 50k
SELECT *
FROM funcionario
WHERE salario BETWEEN 30000 and 50000;


-- 
SELECT *
FROM funcionario
ORDER BY salario DESC, unome ASC;
