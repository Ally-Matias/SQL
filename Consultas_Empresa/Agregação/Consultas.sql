-- Soma, média, mínimo e máximo dos salários de todos os funcionários
SELECT SUM(salario), AVG(salario), MIN(salario), MAX(salario)
FROM funcionario;

-- Contar quantos funcionarios existem
SELECT COUNT(*)
FROM funcionario;

-- Número de funcionários no deparamento pesquisa
SELECT COUNT(*)
FROM departamento, funcionario
WHERE dnome='Pesquisa' AND
      dnr=dnumero;

-- Quantos salário únicos?
SELECT COUNT(DISTINCT salario)
FROM funcionario;

-- Encontre o número de empregados lotados no departamento de Administração
SELECT COUNT(*)
FROM departamento, funcionario
WHERE dnome='Administracao' AND
      dnr=dnumero;

-- Encontre o montante da folha de pagamento da empresa
SELECT SUM(salario)
FROM funcionario;

-- Encontre o salário médio pago pela empresa
SELECT AVG(salario)
FROM funcionario;
