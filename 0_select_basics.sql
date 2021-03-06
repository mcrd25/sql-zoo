/* Based on https://sqlzoo.net/wiki/SELECT_basics */

-- 1. The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text that are data) should be in 'single quotes';
SELECT population FROM world
	WHERE name = 'Germany';

-- 2. Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
			-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM world
	WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- 3. Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area FROM world
	WHERE area BETWEEN 200000 AND 250000




/*Answers to section's quiz called SELECT QUIZ found at  https://sqlzoo.net/wiki/SELECT_Quiz*/

# 1. 
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