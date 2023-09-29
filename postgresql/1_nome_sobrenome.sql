-- Consultando colunas relacionadas nas tabelas
SELECT c.first_name, c.last_name, r.rental_date
FROM customer c
-- relacionando tabelas 'rental' e 'customer'
INNER JOIN rental r
ON c.customer_id = r.customer_id
-- retornando apenas valores dentro do intervalo e ordenando pela data de forma crescente
WHERE rental_date > '2022-07-31 23:59:59.000000+00' AND rental_date < '2022-09-01 00:00:00.000000+00'
ORDER BY rental_date;