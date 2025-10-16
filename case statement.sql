# case statement
# case statement dalam sql sama seperti menggunakan if else pada pemrograman 
# CASE memungkinkan Anda untuk membuat kondisi dan mengembalikan nilai yang berbeda tergantung pada kondisi mana yang terpenuhi. 
# Ini sangat kuat untuk menambahkan logika kondisional langsung di dalam kueri SQL Anda, terutama untuk mengkategorikan data

SELECT first_name,
last_name,
age,
CASE 
    WHEN age <= 30 THEN 'young'
    WHEN age BETWEEN 31 and 50 THEN 'old'
    WHEN age >= 50 THEN 'They very old'
END AS age_volume
FROM employee_demographics;

SELECT CONCAT(first_name,' ',last_name) EMPLOYEE_NAME,
salary,
CASE 
    WHEN salary >= 70000 THEN 'rich'
    WHEN salary <= 70000 THEN 'POOR'
    END AS salary_OF_employee
FROM employee_salary;

# pay incrase and bonus
# < 50000 = 5%
# > 50000 = 7%
# finance = 10% bonus

SELECT CONCAT(first_name,' ',last_name) AS employee_name,
salary,
CASE
    WHEN salary < 50000 THEN salary * 1.05
	WHEN salary > 50000 THEN salary * 1.07
    END AS new_salary,
CASE 
WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;

