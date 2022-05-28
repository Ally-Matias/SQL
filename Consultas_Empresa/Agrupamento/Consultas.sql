SELECT dnr, COUNT(*), AVG(salario)
FROM funcionario
GROUP BY dnr;

SELECT projnome, projnumero, COUNT(*)
FROM projeto, trabalha_em
WHERE projnumero=pnr
GROUP BY projnumero, projnome;

-- Nome do funcionario e a quantidade de dependentes que cada um tem
SELECT pnome, minicial, unome, COUNT(*)
FROM funcionario, dependente
WHERE cpf=fcpf
GROUP BY cpf;

SELECT dnome, COUNT(*)
FROM funcionario, departamento
WHERE dnr=dnumero
GROUP BY dnr, dnome
HAVING COUNT(*)>1;

-- Obter os nomes dos funcionários que possuem mais de um dependente
SELECT pnome, COUNT(*)
FROM funcionario, dependente
WHERE cpf=fcpf
GROUP BY cpf, pnome
HAVING COUNT(*)>1;

-- Para cada projeto em que mais de dois funcionários trabalham, recupere o número e o nome do projeto e o número de funcionários que trabalham no projeto.

SELECT projnumero, projnome, COUNT(*)
FROM trabalha_em, projeto
WHERE pnr=projnumero
GROUP BY projnumero, projnome
HAVING COUNT(*)>2;

-- Para cada projeto, recupere o número, nome do projeto e o número de funcionários do departamento 5 que trabalham no projeto

SELECT projnumero, projnome, COUNT(*)
FROM projeto, trabalha_em, funcionario
WHERE projnumero=pnr AND
      fcpf=cpf AND
      dnr=5
GROUP BY projnumero, projnome;

-- Listar maiores e menores salários de cada departamento
SELECT dnr, MAX(salario), MIN(salario)
FROM funcionario
GROUP BY dnr;
