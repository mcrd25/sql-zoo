-- Questions: https://sqlzoo.net/wiki/More_JOIN_operations
-- Schema: https://sqlzoo.net/wiki/More_details_about_the_database.

-- 1. List the films where the yr is 1962 [Show id, title] 
SELECT id, title 
FROM movie
WHERE yr=1962;

-- 2. Give year of 'Citizen Kane'. 
SELECT yr FROM movie
WHERE title = 'Citizen Kane';

-- 3. List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year. 
SELECT id, title, yr
FROM movie
WHERE title LIKE 'Star Trek%';

-- 4. What id number does the actor 'Glenn Close' have? 
SELECT id FROM actor
WHERE name = 'Glenn Close';

-- 5. What is the id of the film 'Casablanca' ?
SELECT id FROM movie
WHERE title = 'Casablanca';

-- 6. Obtain the cast list for 'Casablanca'.
SELECT name FROM actor
JOIN casting ON id = actorid
WHERE movieid = 11768;

-- 7. Obtain the cast list for the film 'Alien' 
SELECT name FROM actor
JOIN casting ON id = actorid
JOIN movie ON movieid = movie.id
WHERE title = 'Alien';

-- 8. List the films in which 'Harrison Ford' has appeared 
SELECT title FROM movie
JOIN casting ON id = movieid
JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford';

-- 9. List the films where 'Harrison Ford' has appeared as supporting actor
SELECT title FROM movie
JOIN casting ON id = movieid
JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford'
AND ord != '1';

-- 10. List the films together with the leading star for all 1962 films. 
SELECT title, name FROM movie
JOIN casting ON id = movieid
JOIN actor ON actorid = actor.id
WHERE yr = '1962'
AND ord = '1';

-- QUIZ

-- 1. Select the statement which lists the unfortunate directors of the movies which have caused financial loses (gross < budget) 
SELECT name
FROM actor INNER JOIN movie ON actor.id = director
WHERE gross < budget


-- 2. Select the correct example of JOINing three tables 
SELECT *
FROM actor JOIN casting ON actor.id = actorid
JOIN movie ON movie.id = movieid

-- 3. Select the statement that shows the list of actors called 'John' by order of number of movies in which they acted 
SELECT name, COUNT(movieid)
FROM casting JOIN actor ON actorid=actor.id
WHERE name LIKE 'John %'
GROUP BY name ORDER BY 2 DESC

-- 4. Select the result that would be obtained from the following code: 
/*
"Crocodile" Dundee
Crocodile Dundee in Los Angeles
Flipper
Lightning Jack
*/

-- 5. Select the statement that lists all the actors that starred in movies directed by Ridley Scott who has id 351 
SELECT name
FROM movie JOIN casting ON movie.id = movieid
JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

-- 6. There are two sensible ways to connect movie and actor. They are: 
/*
link the director column in movies with the primary key in actor
connect the primary keys of movie and actor via the casting table
*/

-- 7. Select the result that would be obtained from the following code: 
/*
A Bronx Tale	1993
Bang the Drum Slowly	1973
Limitless	2011
*/
