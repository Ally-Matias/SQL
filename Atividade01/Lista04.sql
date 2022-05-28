-- a)
SELECT f.fnome
FROM fornecedor f
WHERE NOT EXISTS (
	SELECT *
	FROM projetos j, fornpecaproj fpj
	WHERE f.fid=fpj.fid AND 
          fpj.jid=j.jid AND 
          j.cidade<>'Quixadá'
) AND EXISTS(
	SELECT *
	FROM projetos j, fornpecaproj fpj
	WHERE f.fid=fpj.fid AND 
          fpj.jid=j.jid AND 
          j.cidade='Quixadá'
);

-- b)
SELECT *
FROM pecas p
WHERE NOT EXISTS(
	SELECT *
	FROM fornecedor f, fornpecaproj fpj
	WHERE p.pid=fpj.pid AND 
          fpj.fid=f.fid AND 
          (f.fnome='Maria Silva' OR f.fnome='João Silva') 
);

-- c)
SELECT p.pid, (
    SELECT sum(fpj.qtd) 
    FROM fornpecaproj fpj 
    WHERE fpj.pid=p.pid
)
FROM pecas p;

-- d)
SELECT DISTINCT f.fnome
FROM fornecedor f, fornpecaproj fpj, projetos j
WHERE f.fid=fpj.fid AND
      fpj.jid=j.jid AND
      j.jnome='J1';

-- e) 
SELECT DISTINCT p.pnome
FROM fornecedor f, fornpecaproj fpj, pecas p
WHERE f.fid=fpj.fid AND 
      fpj.jid=p.pid AND 
      f.fnome='F1';

-- f)
SELECT p.pnome, max(fpj.qtd), min(fpj.qtd) 
FROM pecas p, fornpecaproj fpj
WHERE fpj.pid=p.pid AND
      NOT EXISTS (
          SELECT *
          FROM fornpecaproj fpj1, fornecedor f
          WHERE f.fid=fpj1.fid AND 
                fpj.jid=p.pid AND 
                f.fnome='F1'
      )
GROUP BY p.pid;

-- g)
SELECT fpj.pid
FROM fornpecaproj fpj
GROUP BY fpj.pid
HAVING count(DISTINCT fpj.fid)>1

-- h)
SELECT f.fid, sum(fpj.qtd)
FROM fornecedor f LEFT OUTER JOIN fornpecaproj fpj ON f.fid=fpj.fid
GROUP BY f.fid
