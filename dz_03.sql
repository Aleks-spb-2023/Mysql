use dz_02;
use dz_02;
select * from staff order by salary;
select * from staff order by salary desc;

select salary from staff 
order by salary desc
limit 5;

SELECT 
	post,
    SUM(salary) AS sum_salary
FROM staff
GROUP BY post;

SELECT
	post
FROM staff
GROUP BY post
HAVING AVG(age) < 30;
