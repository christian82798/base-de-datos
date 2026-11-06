-- busca las peliculas que tengan menos actores que AMADEUS HOLLY -SAKILA- 
select count(*) 
from film as f 
join film_actor as fa 
	on f.film_id = fa.film_id 
where f.title = "AMADEUS HOLY"; 

select f.title, count(fa.actor_id) 
from film as f
join film_actor as fa 
	on f.film_id = fa.film_id 
group by f.title
having count(fa.actor_id) < (
	select count(fa.actor_id) 
    from film as f
    join film_actor as fa 
		on f.film_id = fa.film_id
	where f.title = "AMADEUS HOLY"
);
