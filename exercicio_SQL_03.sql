
/* Exercício 1:  Use o banco books.json, o mesmo usado em aula Observação: 
Projete apenas o necessário nas buscas.   - 
Faça uma busca de quantos livros não estão com o status publicado e pageCount menor que 300 - 
Faça uma busca de livros que contém as palavras MongoDB e SQL Server no título - 
Faça uma busca com expressão regular onde ISBN começa com 18 - 
Usando Expressão Regular, busque livros que contém a palavra JAVA ou Mobile na descrição do livro (LongDescription), 
lembrando que deve trazer todas as palavras independente de começa com maiúsculo ou minúsculo Exercício 2: 
Nas mesmas buscas do exercício anterior, traga apenas o número do resultado usando o contador
*/

SELECT COUNT(*) AS total_livros
FROM livros
WHERE status <> 'publicado' AND pageCount < 300;

SELECT *
FROM livros
WHERE LOWER(titulo) LIKE '%mongodb%' AND LOWER(titulo) LIKE '%sql server%';

SELECT *
FROM livros
WHERE ISBN = '^18';

SELECT *
FROM livros
WHERE LOWER(LongDescription) = 'java|mobile';

-- Para a consulta 1
SELECT COUNT(*) AS total_livros
FROM livros
WHERE status <> 'publicado' AND pageCount < 300;

-- Para a consulta 2
SELECT COUNT(*) AS total_livros
FROM livros
WHERE LOWER(titulo) LIKE '%mongodb%' AND LOWER(titulo) LIKE '%sql server%';

-- Para a consulta 3
SELECT COUNT(*) AS total_livros
FROM livros
WHERE ISBN = '^18';

-- Para a consulta 4
SELECT COUNT(*) AS total_livros
FROM livros
WHERE LOWER(LongDescription) = 'java|mobile';

