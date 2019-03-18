/* Based on https://sqlzoo.net/wiki/SELECT_basics */

-- 1
SELECT population FROM world
	WHERE name = 'Germany';

-- 2
SELECT name, population FROM world
	WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3
SELECT name, area FROM world
	WHERE area BETWEEN 200000 AND 250000


/*Answers to section's quiz called SELECT QUIZ found at  https://sqlzoo.net/wiki/SELECT_Quiz*/

# 1
SELECT name, population
FROM world
WHERE population BETWEEN 1000000 AND 1250000

# 2 
--     Table-E
-- Albania 3200000
-- Algeria 32900000

# 3 
SELECT name FROM world
WHERE name LIKE '%a' OR name LIKE '%l'

# 4
-- name  length(name)
-- Italy 5
-- Malta 5
-- Spain 5

# 5
-- Andorra 936

# 6
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

# 7
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')