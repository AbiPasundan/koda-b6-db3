select count(id) from movies;

select "name" from "movies" where year > 2000 limit 10;

select "name" from "movies" where rankscore = 6 limit 10;

select "last_name" from "actors" where last_name ilike '%s' order by "id" desc limit 10;
select "first_name" from "actors" where first_name ilike '%s' order by "id" desc limit 10;
select "first_name", "last_name" from "actors" where last_name ilike '%s' order by "id" desc limit 10;
select "first_name", "last_name" from "actors" where first_name ilike '%s' order by "id" desc limit 10;


select "name", "year", "rankscore" from "movies" where "rankscore" >= 5 and "rankscore" <= 7 and "year" >= 2004 and "year" <= 2006 order by "id" asc limit 10;