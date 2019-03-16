-- nobel prices for 1950
SELECT yr, subject, winner
  FROM nobel
WHERE yr = 1950;

-- nobel for literature on 1962
SELECT winner
  FROM nobel
WHERE yr = 1960
  AND subject = 'Literature';

-- year and subject for Einstein
SELECT yr, subject
  FROM nobel
WHERE winner 
  LIKE '%Einstein';

-- peace winners since 2000
SELECT winner
  FROM nobel
WHERE subject = 'Peace'
  AND yr >= '2000'; 

-- All details of the Literature prize winners between 1980 - 1989
SELECT *
  FROM nobel
WHERE subject = 'Literature'
  AND yr BETWEEN '1980' AND '1989';

-- All presidential winners
SELECT * FROM nobel
  WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

 -- Winners with first name john
SELECT winner FROM nobel
  WHERE winner LIKE 'John %';

-- Physics winners for 1980 + Chemistry winners for 1984
SELECT * FROM nobel
WHERE subject = 'Physics'
AND yr = '1980'
UNION ALL
SELECT * FROM nobel
WHERE subject = 'Chemistry'
AND yr = '1984'

-- Winner for 1980 excluding Chemistry and Medicine
SELECT yr, subject, winner 
FROM nobel
WHERE subject != 'Chemistry' 
AND subject != 'Medicine' 
AND yr = '1980';

-- year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004) 
SELECT * FROM nobel
WHERE subject = 'Literature'
AND yr > '2004'
UNION ALL
SELECT * FROM nobel
WHERE subject = 'Medicine'
AND yr < '1910'

-- QUIZ
-- 1. Pick the code which shows the name of winner's names beginning with C and ending in n 
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

-- 2. Select the code that shows how many Chemistry awards were given between 1950 and 1960 
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

-- 3. Pick the code that shows the amount of years where no Medicine awards were given 
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

-- 4. Select the result that would be obtained from the following code: 
SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'
/*
Medicine  Sir John Eccles
Medicine  Sir Frank Macfarlane Burnet
*/

-- 5. Select the code which would show the year when neither a Physics or Chemistry award was given 
SELECT yr FROM nobel
  WHERE yr NOT IN
 (SELECT yr 
  FROM nobel
  WHERE subject IN ('Chemistry','Physics'))

-- 6. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was 
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')

-- 7. Pick the result that would be obtained from the following code: 
 SELECT subject, COUNT(subject) 
  FROM nobel 
  WHERE yr ='1960' 
  GROUP BY subject
/*
Chemistry 1
Literature  1
Medicine  2
Peace 1
Physics 1
*/