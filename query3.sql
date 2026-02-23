-- task 1

select directors.first_name, directors.last_name, string_agg(directors_genres.genre, ',' order by directors_genres.genre asc) as "genre"
from directors
join directors_genres on directors_genres.genre = genre
group by id
limit 10;



-- task 2
select actors.first_name, actors.last_name, count(roles.actor_id) as "total roles"
from actors
join roles on actors.id = roles.actor_id
group by actors.id
having count(roles.actor_id) > 5
order by "total roles" desc
limit 10;

