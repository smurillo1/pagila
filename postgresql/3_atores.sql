-- consultando nome e sobre nome na tabela 'actor'
SELECT a.first_name, a.last_name
FROM actor a
-- relacionando tabelas film_actor com actor para obter nome e sobrenome
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
-- agrupando os id's, realizando contagem de filmes feitos e retornando os com 15 ou mais participações
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING COUNT(fa.film_id) >= 15;