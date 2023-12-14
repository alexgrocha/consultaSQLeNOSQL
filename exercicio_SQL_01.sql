/* Exercício 1:  - Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes. - 
 Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator participou. 
 Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram. - 
 Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de duração (120min). 
 Ordene a lista pelo numero de filmes que cada ator participou. 
*/
SELECT filme.titulo, categoria.nome
FROM filme
JOIN filme_categoria ON filme.id = filme_categoria.id_filme
JOIN categoria ON filme_categoria.id_categoria = categoria.id;

SELECT ator.nome, COUNT(participacao.id_filme) AS numero_filmes
FROM ator
LEFT JOIN participacao ON ator.id = participacao.id_ator
GROUP BY ator.nome
ORDER BY numero_filmes DESC;

SELECT ator.nome, COUNT(participacao.id_filme) AS numero_filmes
FROM ator
JOIN participacao ON ator.id = participacao.id_ator
JOIN filme ON participacao.id_filme = filme.id
WHERE filme.duracao > 120
GROUP BY ator.nome
ORDER BY numero_filmes DESC;


/* Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros encontrados pela busca
*/


SELECT filme.titulo, categoria.nome
FROM filme
JOIN filme_categoria ON filme.id = filme_categoria.id_filme
JOIN categoria ON filme_categoria.id_categoria = categoria.id;

-- Número de registros
SELECT COUNT(*) AS numero_registros
FROM filme
JOIN filme_categoria ON filme.id = filme_categoria.id_filme
JOIN categoria ON filme_categoria.id_categoria = categoria.id;

SELECT ator.nome, COUNT(participacao.id_filme) AS numero_filmes
FROM ator
LEFT JOIN participacao ON ator.id = participacao.id_ator
GROUP BY ator.nome
ORDER BY numero_filmes DESC;

-- Número de registros
SELECT COUNT(*) AS numero_registros
FROM ator;
SELECT ator.nome, COUNT(participacao.id_filme) AS numero_filmes
FROM ator
JOIN participacao ON ator.id = participacao.id_ator
JOIN filme ON participacao.id_filme = filme.id
WHERE filme.duracao > 120
GROUP BY ator.nome
ORDER BY numero_filmes DESC;

-- Número de registros
SELECT COUNT(*) AS numero_registros
FROM ator
JOIN participacao ON ator.id = participacao.id_ator
JOIN filme ON participacao.id_filme = filme.id
WHERE filme.duracao > 120;

SELECT ator.nome, COUNT(participacao.id_filme) AS numero_filmes
FROM ator
JOIN participacao ON ator.id = participacao.id_ator
JOIN filme ON participacao.id_filme = filme.id
WHERE filme.duracao > 120
GROUP BY ator.nome
ORDER BY numero_filmes DESC;

-- Número de registros
SELECT COUNT(*) AS numero_registros
FROM ator
JOIN participacao ON ator.id = participacao.id_ator
JOIN filme ON participacao.id_filme = filme.id
WHERE filme.duracao > 120;
