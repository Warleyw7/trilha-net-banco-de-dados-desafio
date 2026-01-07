SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes
WHERE Ano = 1997

SELECT * FROM Filmes
WHERE Ano > 2000

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT 
    Ano,
    COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

SELECT PrimeiroNome, UltimoNome FROM Atores

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'f' 
ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Generos.Genero = 'mistério'

SELECT 
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef
    ON f.Id = ef.IdFilme
INNER JOIN Atores a
    ON ef.IdAtor = a.Id
ORDER BY f.Nome;
