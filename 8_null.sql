/* Based on https://sqlzoo.net/wiki/Using_Null Tutorial. */

-- 1
SELECT name FROM teacher
  WHERE dept IS NULL

-- 2
SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

-- 3
SELECT teacher.name, dept.name
 FROM teacher LEFT JOIN dept
           ON (teacher.dept=dept.id)

-- 4
SELECT teacher.name, dept.name
 FROM teacher RIGHT JOIN dept
           ON (teacher.dept=dept.id)

-- 5
SELECT name, COALESCE(mobile, '07986 444 2266')
  FROM teacher

-- 6
SELECT teacher.name, COALESCE(dept.name, 'None') 
  FROM teacher
    LEFT JOIN  dept ON (teacher.dept = dept.id) 

-- 7
SELECT COUNT(name), COUNT(mobile) 
FROM teacher

-- 8
SELECT dept.name, COUNT(teacher.dept) 
  FROM teacher RIGHT JOIN dept 
    ON (teacher.dept = dept.id)
  GROUP BY dept.name

-- 9
SELECT name, 
  CASE 
    WHEN dept IN (1,2) 
      THEN 'Sci'
    ELSE 'Art' 
  END
FROM teacher

-- 10
SELECT name, 
  CASE 
    WHEN dept IN (1,2) 
      THEN 'Sci'
    WHEN dept = 3
      THEN 'Art' 
    ELSE 'None'
  END
FROM teacher


-- QUIZ (https://sqlzoo.net/wiki/Nested_SELECT_Quiz)

-- 1
 SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

-- 2
SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower'

 -- 3
 SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name

-- 4
  -- display 0 in result column for all teachers without department

-- 5
  -- 'four' for Throd

-- 6

      -- Table-A
  -- Shrivell  Computing
  -- Throd Computing
  -- Splint  Computing
  -- Spiregrain  Other
  -- Cutflower Other
  -- Deadyawn  Other



