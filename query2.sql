-- melakukan join director dan genres ke table movies, limit keluarannya sebanyak 50
-- melakukan join movies dan roles berdasarkan table actors

select "movies"."id", "movies"."name", "movies_genres"."genre", "directors"."last_name" from "movies"
join "movies_directors" on "movies"."id" = "movies_directors"."movie_id"
join "movies_genres" on "movies_genres"."movie_id" = "movies"."id"
join "directors" on "directors"."id" = "movies_directors"."director_id"
limit 50;
