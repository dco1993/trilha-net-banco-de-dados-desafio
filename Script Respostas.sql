-- 1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO FROM FILMES ORDER BY ANO ASC

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME, ANO, DURACAO FROM FILMES WHERE NOME LIKE 'DE VOLTA PARA O FUTURO'

-- 4 - Buscar os filmes lançados em 1997
SELECT * FROM FILMES WHERE ANO = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM FILMES WHERE ANO > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(ANO) QUANTIDADE FROM FILMES GROUP BY ANO ORDER BY QUANTIDADE DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'F' ORDER BY PRIMEIRONOME

-- 10 - Buscar o nome do filme e o gênero
SELECT 
	F.NOME,
	G.GENERO
FROM 
	FILMES F
	INNER JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
	INNER JOIN GENEROS G ON FG.IDGENERO = G.ID

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	F.NOME,
	G.GENERO
FROM 
	FILMES F
	INNER JOIN FILMESGENERO FG ON FG.IDFILME = F.ID
	INNER JOIN GENEROS G ON FG.IDGENERO = G.ID
WHERE
	G.GENERO = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	F.NOME,
	A.PRIMEIRONOME,
	A.ULTIMONOME,
	EF.PAPEL
FROM 
	FILMES F
	INNER JOIN ELENCOFILME EF ON EF.IDFILME = F.ID
	INNER JOIN ATORES A ON EF.IDATOR = A.ID