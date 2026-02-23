-- melakukan join director dan genres ke table movies, limit keluarannya sebanyak 50
-- melakukan join movies dan roles berdasarkan table actors

select "movies"."id", "movies"."name", "movies_genres"."genre", "directors"."last_name" from "movies"
join "movies_directors" on "movies"."id" = "movies_directors"."movie_id"
join "movies_genres" on "movies_genres"."movie_id" = "movies"."id"
join "directors" on "directors"."id" = "movies_directors"."director_id"
limit 50;

select "actors"."id" as id, "actors"."first_name" as "Nama Depan", "actors"."last_name" as "Nama Belakang", "movies"."name" as "Nama Film"
from "actors"
join "roles" on "roles"."actor_id" = "actors"."id"
join "movies" on "roles"."movie_id" = "movies"."id"
order by id
limit 50;
