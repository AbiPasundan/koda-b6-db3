


-- task 2
select actors.first_name, actors.last_name, count(roles.actor_id) as "total roles"
from actors
join roles on actors.id = roles.actor_id
group by actors.id
having count(roles.actor_id) > 5
order by "total roles" desc
limit 10;

