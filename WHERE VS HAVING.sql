# Having vs Where 
# Secara singkat, klausa HAVING dalam MySQL digunakan untuk memfilter hasil dari query yang sudah dikelompokkan menggunakan GROUP BY. HAVING bekerja mirip seperti WHERE, 
# tetapi WHERE memfilter baris sebelum dikelompokkan, sedangkan HAVING memfilter grup setelah diagregasi.
# Dan where tidak dapat digunakan bersama fungsi agregat


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender, age
HAVING AVG(age)
;

# Having akan menampilkan fungsi agregat rata rata umur
# sementara itu kita coba menggunakan where dengan fungsi agregat

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender, age
WHERE AVG(age)
;

# SEPERTI CONTOH DIATAS INI AKAN MENYEBABKAN EROR

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, SUM(salary)
FROM employee_salary
GROUP BY occupation
HAVING SUM(salary)
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

# KITA BISA MENCARI DATA JABATAN KARYAWAN LALU MELIHAT RATA RATA GAJINYA SECARA SPESIFIK


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;