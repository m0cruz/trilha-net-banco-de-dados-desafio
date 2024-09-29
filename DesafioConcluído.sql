SELECT * FROM Filmes
SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero
SELECT * FROM Generos

-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997

SELECT * FROM Filmes WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) AS quantidade FROM Filmes GROUP BY Ano ORDER BY quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.id
WHERE Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON f.id = e.IdFilme
INNER JOIN Atores a ON e.IdAtor = a.id;
