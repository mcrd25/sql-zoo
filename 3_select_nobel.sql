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

-- 
SELECT yr, subject, winner 
FROM nobel
WHERE subject = 'Physics' AND yr = '1980';

-- Winner for 1980 excluding Chemistry and Medicine
SELECT yr, subject, winner 
FROM nobel
WHERE subject != 'Chemistry' 
AND subject != 'Medicine' 
AND yr = '1980';

SELECT * FROM nobel
WHERE subject = 'Medicine'
AND yr < '1910';