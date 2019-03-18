/* Based on https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial*/

-- 1
SELECT name, continent, population FROM world;

-- 2
SELECT name FROM world
WHERE population >= 200000000;

-- 3
SELECT name, gdp/population FROM world
WHERE population >= 200000000;

-- 4
SELECT name, population/1000000 AS population FROM world
WHERE continent = 'South America';

-- 5
SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

-- 6
SELECT name FROM world
WHERE name LIKE '%United%';

-- 7
SELECT name, population, area FROM world
WHERE area > 3000000 or population > 250000000;

-- 8
SELECT name, population, area FROM world 
WHERE area > 3000000 XOR population > 250000000;

-- 9
SELECT name, ROUND(population/1000000, 2) as population, ROUND(gdp/1000000000, 2) as gdp FROM world
WHERE continent = 'South America';

-- 10
SELECT name, ROUND(gdp/population, -3) AS per_capita_gdp FROM world
WHERE gdp >= 1000000000000;

-- 11
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- 12
SELECT name, capital FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND capital != name;

-- 13
SELECT name FROM world
WHERE name LIKE '%u%' 
 and name LIKE '%a%' 
 and name LIKE '%o%' 
 and name LIKE '%i%'
 and name LIKE '%e%'
 and name NOT LIKE '% %';


 /* Answers to associated Quiz called BBC Quiz found at https://sqlzoo.net/wiki/BBC_QUIZ */

 -- 1
SELECT name
  FROM world
 WHERE name LIKE 'U%'

 --  2
 SELECT population
  FROM world
 WHERE name = 'United Kingdom'

 --  3
	-- 	'name' should be name

-- 4
	-- Nauru	990

-- 5
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

 -- 6
 SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

 -- 7
 	-- Brazil
	-- Colombia