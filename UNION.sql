#UNION
#UNION dalam SQL digunakan untuk menggabungkan hasil dari dua atau lebih kueri SELECT menjadi satu tumpukan hasil (result set) tunggal
#UNION menggabungkan data ke bawah (menumpuk baris dari kueri lain).
#seperti kalian menumpuk data yang sama dalam satu kertas 


SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

#UNION ALL akan menyertakan semua baris dari setiap kueri SELECT, termasuk jika ada baris yang duplikat. 
#Karena tidak perlu memeriksa duplikat, UNION ALL lebih cepat dan lebih efisien daripada UNION

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary
;

#UNION
#Secara default, UNION akan menghapus baris duplikat dari hasil gabungan. 
#Ia hanya akan menampilkan nilai yang unik.

SELECT first_name, last_name, 'OLD' AS Label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highest paid employee' AS Label
FROM employee_salary
WHERE salary > 70000
;

SELECT first_name, last_name, 'OLD man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLD female' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highest paid employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

