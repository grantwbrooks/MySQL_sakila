1:
select customer.first_name, customer.last_name, customer.email, address.address, address.address2, address.district, address.postal_code, address.city_id, city.city, country.country  from customer
join address on customer.address_id = address.address_id
join city on address.city_id = city.city_id
join country on city.country_id = country.country_id
where address.city_id=312

2:
select film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre from film
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = 'Comedy'

3:
select film_actor.actor_id, film.title, film.description, film.release_year from film
join film_actor on film.film_id = film_actor.film_id
where film_actor.actor_id = 5

4:
select customer.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address from customer
join address on customer.address_id = address.address_id
where customer.store_id = 1 
AND (address.city_id = 1
OR address.city_id = 42
OR address.city_id = 312
OR address.city_id = 459);

5:
select film.title, film.description, film.release_year, film.rating, film.special_features, film_actor.actor_id from film
join film_actor on film.film_id = film_actor.film_id
WHERE film.rating = 'G'
AND film.special_features like '%Behind the scenes%'
AND film_actor.actor_id = 15;

6:
select film.title, film.description, film.release_year, film.rating, film.special_features, film_actor.actor_id, concat_ws(" ",actor.first_name, actor.last_name) as actor_name, actor.last_update from film
join film_actor on film.film_id = film_actor.film_id
join actor on film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369;

7:
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, film.rental_rate from film
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
WHERE film.rental_rate = 2.99
AND category.name = 'drama';

8:
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, film.rental_rate, film_actor.actor_id, concat_ws(" ",actor.first_name, actor.last_name) as actor_name from film
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
join film_actor on film.film_id = film_actor.film_id
join actor on film_actor.actor_id = actor.actor_id
WHERE category.name = 'action'
AND concat_ws(" ",actor.first_name, actor.last_name) = 'SANDRA KILMER';