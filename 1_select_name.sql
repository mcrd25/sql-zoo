-- countries that start with "Y"
SELECT name FROM world
  WHERE name LIKE 'Y%';

-- countries that end with "Y"
SELECT name FROM world
  WHERE name LIKE '%Y';

-- countries that have the letter "X" in between
SELECT name FROM world
  WHERE name LIKE '%x%';

-- countries that end with land
SELECT name FROM world
  WHERE name LIKE '%land';

-- countries starting with "C" and ending with "ia"
SELECT name FROM world
  WHERE name LIKE 'C%ia';

-- countries having a double oo in between
SELECT name FROM world
  WHERE name LIKE '%oo%';

-- countries with 3 or more a's
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

-- countries with the letter "t" as second character
SELECT name FROM world
 WHERE name LIKE '_t%';
ORDER BY name

-- countries with two "o" chars separated by two other chars
SELECT name FROM world
 WHERE name LIKE '%o__o%';

--  countries with exactly 4 chars
SELECT name FROM world
 WHERE name LIKE '____';

-- countries with exact name as capital
SELECT name
  FROM world
 WHERE name LIKE capital;