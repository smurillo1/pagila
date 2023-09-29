-- consultando titulo do filme e adicionando o valor somado à coluna 'total_rental'
SELECT f.title AS title_film,
       SUM(p.amount) AS total_rental
FROM film f
-- relacionando as tabelas necessárias para calcular o valor total
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
INNER JOIN payment p ON r.rental_id = p.rental_id
-- agrupando os valores somandos por filme para chegarmos à receita total
GROUP BY f.title
-- ordenando do mais rentável para o menos rentável
ORDER BY total_rental DESC;