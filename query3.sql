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

-- task 3
select directors.id as directors_id, directors.first_name, count(movies.id) as jumlah_movies
from directors
join movies_directors on movies_directors.director_id = directors.id
join movies on movies.id = movies_directors.movie_id
group by directors.id, directors.first_name
order by jumlah_movies desc
limit 1;

-- task 4
select year, count(year) as "jumlah film"
from movies
group by year
order by "jumlah film" desc
limit 1;