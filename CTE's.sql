-- COMMON TABLE EXPRESSIONS - CTE's
-- Allow you to define a subquerie block that you can then reference within the main query
-- 'WITH' is the keyword to define the CTE
-- Solo la puedes hacer luego luego que la creas
-- perform more advanced calculations

WITH CTE_Example AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_Example;

-- one level of transformation, meaning your base CTE and changing it or doing one level of advanced thing on top of that querie