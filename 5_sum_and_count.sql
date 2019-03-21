-- total population of the world
SELECT SUM(population) AS total_population
FROM world;

-- list all continents
SELECT DISTINCT continent
FROM world;

-- total GDP of Africa
SELECT SUM(gdp) 
FROM world
WHERE continent = 'Africa';

-- countries with an area at least 1,000,000
SELECT COUNT(name) AS countries
FROM world
WHERE area >= '1000000';

-- total population of Estonia, Latvia and Lithuania
SELECT SUM(population) 
AS baltic_population
FROM world
WHERE name in ('Estonia', 'Latvia', 'Lithuania');

-- for each continent show continent and number of countries
SELECT continent, COUNT(name) AS countries
FROM world
GROUP BY continent;

-- counting big countries in each continent
SELECT continent
FROM world
WHERE population >= '10000000'
GROUP BY continent;

-- counting big continents
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= '100000000';


-- ** QUIZ **

-- 1. Select the statement that shows the sum of population of all countries in 'Europe' 
SELECT SUM(population) FROM bbc WHERE region = 'Europe';

-- 2. Select the statement that shows the number of countries with population smaller than 150000 
SELECT COUNT(name) FROM bbc WHERE population < 150000;

-- 3. Select the list of core SQL aggregate functions 
-- AVG(), COUNT(), MAX(), MIN(), SUM()

-- 4. Select the result that would be obtained from the following code: 
 SELECT region, SUM(area)
   FROM bbc 
  WHERE SUM(area) > 15000000 
  GROUP BY region;
 -- No result due to invalid use of the WHERE function

-- 5. Select the statement that shows the average population of 'Poland', 'Germany' and 'Denmark' 
SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark');

-- 6. Select the statement that shows the medium population density of each region 
SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region;

-- 7. Select the statement that shows the name and population density of the country with the largest population 
SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc);

-- 8. Pick the result that would be obtained from the following code: 
/*
Table-D
Americas	732240
Middle East	13403102
South America	17740392
South Asia	9437710
*/
