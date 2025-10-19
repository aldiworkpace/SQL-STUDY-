# Subqueries

#Subquery dalam SQL adalah kueri SELECT yang disematkan di dalam kueri SQL lain, 
#seperti SELECT, INSERT, UPDATE, atau DELETE. Subquery dieksekusi terlebih dahulu untuk menghasilkan nilai atau set data yang kemudian digunakan oleh kueri utama


SELECT *
FROM employee_demographics
WHERE employee_id IN 
					(SELECT employee_id
                    FROM employee_salary
                    WHERE dept_id = 1
                    
 )
 ;
 # CONTOH diatas misalnya kita mencari id dept dengan id 1 pada tabel emp_dmo, emp_dmo tidak ada dept_id jadi kita bisa mencarinya dengan subquery dari tabel emp_sal yang memiliki kolom dept_id dan dicocokan dengan emp_id

SELECT *
FROM employee_demographics
WHERE employee_id IN
					(SELECT employee_id
                    FROM employee_salary
                    WHERE salary > 70000

)
;
# contoh diatas kita mencari salary karyawan diatas 70000

SELECT first_name, salary,
(SELECT AVG (salary)
FROM employee_salary)
FROM employee_salary
;


SELECT gender, AVG (age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


SELECT AVG (`MAX(age)`) AS age_avg_max
FROM
(SELECT gender, AVG (age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS avg_age
;

#diatas adalah contoh untuk mencari rata rata umur laki laki dan wanita

SELECT AVG (`MAX(age)`) 
FROM
(SELECT gender, AVG (max_age),
AVG (age) AS avg_age, 
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender) AS avg_age
;

