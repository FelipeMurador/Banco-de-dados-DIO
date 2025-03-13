-- 1

SELECT 
nome, ano
from Filmes

-- 2
SELECT
nome, ano, Duracao
from Filmes 
ORDER BY ano ASC 

--3
SELECT
nome, ano, duracao
FROM Filmes 
WHERE nome = 'De Volta para o Futuro';

--4
SELECT
nome, ano, duracao
FROM Filmes
Where ano = 1997

-- 5
SELECT 
nome, ano, duracao
FROM Filmes
Where ano >= 2000

-- 6 
SELECT
nome, ano, duracao
FROM Filmes
WHERE
duracao >= 100
AND
duracao < 150

--7 
SELECT ano, COUNT(*) AS total_filmes
FROM Filmes
GROUP BY ano
ORDER BY MAX(duracao) DESC;

--8
SELECT 
id, PrimeiroNome, UltimoNome, genero
FROM Atores

--9
SELECT
id, PrimeiroNome, UltimoNome, genero
FROM Atores
WHERE genero = 'F'

--10
SELECT
Nome, Genero
FROM Filmes, Generos;

--11
SELECT
Nome, Genero
FROM Filmes, Generos
WHERE Genero = 'Mistério';

--12
SELECT
Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes, Atores, ElencoFilme
