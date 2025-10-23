# Window function

SELECT dem.first_name, dem.last_name, gender,
AVG(salary) OVER(PARTITION BY gender)
FROM employee_salary AS sal
JOIN employee_demographics AS dem
    ON sal.employee_id = dem.employee_id;
    
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_salary
FROM employee_salary AS sal
JOIN employee_demographics AS dem
    ON sal.employee_id = dem.employee_id;
    