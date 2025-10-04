# String function

# (length) bisa kita gunakan untuk menghitung panjang dari setiap karakter ataupun huruf

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
; 

SELECT salary, LENGTH(salary)
FROM employee_salary
; 

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
; 

#Kegunaan length itu biasanya untuk memastikan keakuratan data misalnya jumlah nomor telephon, dan biasanya digunakan pada data cleaning

# Lalu ada (LOWER) DAN (UPPER) yang dimana membuat karakter menjadi huruf kapital semua atau menjadi huruf kecil semua

SELECT UPPER('sky')
;
SELECT LOWER('SKY')
;

SELECT first_name, UPPER(first_name)
FROM employee_demographics
; 

SELECT first_name, LOWER(first_name)
FROM employee_demographics
; 

# (TRIM) Berguna untuk menghilangkan spasi pada kiri maupun kanan dalam kolom 
# (LTRIM) digunakan untuk menghilangkan spasi di sisi kiri
# (RTRIM) digunakan untuk menghilangkan spasi di sisi kanan

SELECT ('      ALDI      ')
;

SELECT TRIM('      ALDI      ')
;

SELECT LTRIM('      ALDI      ')
;

SELECT RTRIM('      ALDI      ')
;

#substring

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;

# LEFT membuat kita bisa membatasi karakter dari kiri lalu angka 4 membuat batasan tersebut yang membuat karakter dibatasi 4 saja dari kiri

SELECT first_name, RIGHT(first_name, 4)
FROM employee_demographics
;

SELECT first_name, LEFT(first_name, 4)
FROM employee_demographics
;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics
;

SELECT first_name, birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;

# SUBSTRING membatasi dan mengambil karakter contoh diatas jika kita hanya ingin menampilkan bulan saja di kolom birth_date
# angka 6 mengawali posisi yang kita inginkan dan selanjutnya angka 2 membatasi karakter yang hanya diambil,itu berarti hanya 2 karakter

# REPLACE sebagai sebuah statement (perintah): Perintah ini digunakan untuk memasukkan atau memperbarui data dalam sebuah tabel.
# REPLACE() sebagai sebuah function (fungsi): Fungsi ini digunakan untuk mengganti bagian dari sebuah teks (string).

SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics
;

# Pada fungsi REPLACE (a) adalah huruf yang ingin diganti dan (z) adalah huruf yang menggantikan a dalam karakter string
# jadi seperti itulah replace mengganti apa yang ingin anda gantikan

# LOCATE Fungsi LOCATE() digunakan untuk menemukan posisi sebuah teks (substring) di dalam teks lain yang lebih panjang (string). Fungsi ini akan mengembalikan angka yang merupakan posisi awal dari teks yang dicari

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics
;

# CONCAT Berfungsi menggabungkan beberapa kolom

SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS name_employee
FROM employee_demographics
;


SELECT DEM.first_name, DEM.last_name,
CONCAT(DEM.first_name,' ',DEM.last_name) AS name_employee, salary
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAl
ON DEM.employee_id = SAL.employee_id
ORDER BY name_employee
;
