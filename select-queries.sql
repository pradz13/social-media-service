USE social_media_db;
-- Select skills for a particular users
select u.name 'Name', s.name 'Skill'
from USER_SKILLS us 
INNER JOIN USER_PROFILE u
ON us.user_id = u.id
INNER JOIN SKILLS s
on us.skill_id = s.id
where u.id = 1;

-- Select the count of skills for users
select u.name 'Name', count(s.name) 'Skill Count'
from USER_SKILLS us 
INNER JOIN USER_PROFILE u
ON us.user_id = u.id
INNER JOIN SKILLS s
on us.skill_id = s.id
GROUP BY u.name
HAVING count(s.name) >= 2
ORDER BY count(s.name) DESC;
