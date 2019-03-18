/* Based on https://sqlzoo.net/wiki/Self_join Tutorial. */

-- 1
SELECT COUNT(*) FROM stops;

-- 2
SELECT id FROM stops
WHERE name = 'Craiglockhart';


-- 3
SELECT id, name 
FROM stops JOIN route ON (id = stop)
WHERE num = 4 AND company = 'LRT';


-- 4
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num HAVING COUNT(*) = 2;

-- 5
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 AND b.stop = 149;

-- 6
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name = 'London Road';

-- 7
SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON (a.company = b.company AND a.num = b.num)
WHERE a.stop=115 AND b.stop = 137 AND a.num = b.num;

-- 8
SELECT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name = 'Tollcross';

-- 9
SELECT DISTINCT stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name = 'Craiglockhart';

-- 10
SELECT a.num, a.company, stopb.name, c.num, c.company
FROM route a
  JOIN route b ON (a.company = b.company AND a.num = b.num)
    JOIN (route c JOIN route d ON (c.company = d.company AND c.num = d.num))
      JOIN stops stopa ON a.stop = stopa.id
        JOIN stops stopb ON b.stop = stopb.id
          JOIN stops stopc ON c.stop = stopc.id
            JOIN stops stopd ON d.stop = stopd.id
  WHERE stopa.name = 'Craiglockhart' AND stopd.name = 'Lochend' AND stopb.name = stopc.name
ORDER BY b.num, stopb.name, d.num, LENGTH(a.num), LENGTH(c.num);

-- QUIZ (https://sqlzoo.net/wiki/Self_join_Quiz) 

-- 1
SELECT DISTINCT a.name, b.name
  FROM stops a JOIN route z ON a.id=z.stop
  JOIN route y ON y.num = z.num
  JOIN stops b ON y.stop=b.id
 WHERE a.name='Craiglockhart' AND b.name ='Haymarket'

-- 2
SELECT S2.id, S2.name, R2.company, R2.num
  FROM stops S1, stops S2, route R1, route R2
 WHERE S1.name='Haymarket' AND S1.id=R1.stop
   AND R1.company=R2.company AND R1.num=R2.num
   AND R2.stop=S2.id AND R2.num='2A'

-- 3
SELECT a.company, a.num, stopa.name, stopb.name
  FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
 WHERE stopa.name='Tollcross'




