


### Checking Queries

Show all friend connections

SELECT * FROM Friends;

Filter the top 3 comments on posts

SELECT post_id, post_content, comments
FROM Posts
ORDER BY comments DESC
LIMIT 3;


Show all likes on posts

SELECT post_id, post_content, likes
FROM Posts;
