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

--Select post and comments for a particular user
select c.comment_content, p.post_content
from POST p
INNER JOIN COMMENT c
on p.id = c.post_id
INNER JOIN USER_PROFILE u
on p.user_id = u.id
where u.id = 1;

--Select all the posts and their comments even if comment does not exist for a post(Left join is used)
select u.name, p.post_content, c.comment_content
from POST p
LEFT JOIN COMMENT c
on p.id = c.post_id
INNER JOIN USER_PROFILE u
on p.user_id = u.id;
