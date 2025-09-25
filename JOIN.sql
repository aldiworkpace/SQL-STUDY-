# JOIN
# Secara sederhana, JOIN digunakan untuk menggabungkan baris dari dua atau lebih tabel berdasarkan kolom yang saling berhubungan.
# Ini memungkinkan Anda mengambil data yang tersebar di beberapa tabel dalam satu kueri.

SELECT *
FROM employee_salary
;

SELECT *
FROM employee_demographics
;

# INNER JOIN (Irisan)
# INNER JOIN hanya akan menampilkan baris jika nilai di kolom penghubung ada di kedua tabel. Ini seperti mencari irisan data antara dua himpunan.

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id
;

# Tentu, klausa ON dalam SQL digunakan bersama dengan JOIN untuk menentukan syarat atau kondisi 
# bagaimana baris dari dua tabel akan digabungkan.

# Singkatnya, jika JOIN adalah perintah untuk "menggabungkan dua tabel," 
# maka ON adalah bagian yang menjawab, "Berdasarkan aturan apa penggabungan ini dilakukan?"

#lalu kita bisa menggunakan aliasing untuk menyingkat nya

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

# dapat memilih kolom kedua tabel dengan menggunakan select

SELECT dem.employee_id, dem.first_name, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, dem.first_name, age, occupation, salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;


#OUTER JOIN

# (LEFT JOIN) akan mengambil semuanya dari tabel kiri bahkan jika tidak ada kecocokan dalam gabungan
# dan kemudian itu hanya mengembalikan kecocokan dari tabel kanan kebalikannya berlaku untuk gabungan kanan (RIGHT JOIN)
# Jika tidak ada yang cocok di tabel, nilainya akan diisi dengan NULL

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_salary AS sal
LEFT JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id
;

# ron swanson tidak muncul karna tidak ada di tabel employee demographic


# RIGHT JOIN (Gabungan Kanan)
# Ini adalah kebalikan dari LEFT JOIN. Ia akan menampilkan semua baris dari tabel kanan dan yang cocok dari tabel kiri. 
# RIGHT JOIN lebih jarang digunakan karena biasanya kueri yang sama bisa ditulis dengan LEFT JOIN hanya dengan menukar posisi tabel.
# Jika tidak ada yang cocok di tabel, nilainya akan diisi dengan NULL


SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
;


# SELF JOIN
# SELF JOIN itu adalah gabungan dimana anda mengikat tabel ke dirinya sendiri

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id + 6 = emp2.employee_id
 ;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_santa,
emp2.employee_id AS emp_santa,
emp2.first_name AS first_name_santa,
emp2.last_name AS last_santa
FROM employee_salary emp1
JOIN employee_salary emp2
ON emp1.employee_id + 6 = emp2.employee_id
;

#joining multiple table together


SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
   ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
   ON  sal.dept_id = pd.department_id
;