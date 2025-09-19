#GROUP BY
#Klausa (GROUP BY) dalam MySQL digunakan untuk mengelompokkan baris-baris yang memiliki nilai yang sama dalam satu atau lebih kolom tertentu ke dalam baris-baris ringkasan. 
#Hal ini khususnya berguna untuk melakukan perhitungan agregat pada kelompok ini. 

# (AS) Bisa digunakan untuk mengganti nama suatu kolom

SELECT gender, first_name AS nama_pertama
FROM employee_demographics
GROUP BY gender, first_name
;

SELECT gender, age AS UMUR, first_name AS nama_pertama
FROM employee_demographics
GROUP BY gender, age, first_name
;




SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

#AVG(): Menghitung rata-rata kolom numerik untuk setiap grup
#SUM(): Menghitung jumlah kolom numerik untuk setiap grup.
#COUNT(): Menghitung jumlah baris dalam setiap grup
#MAX(): Menemukan nilai maksimum dalam kolom untuk setiap grup.
#MIN(): Menemukan nilai minimum dalam kolom untuk setiap grup.

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

#DIATAS CONTOH MENGHITUNG RATA RATA UMUR,LALU UMUR PALING BESAR DAN KECIL, PRIA DAN WANITA
#COUNT MENGHITUNG JUMLAH BARIS UMUR

# ORDER BY
# Klausa ORDER BY dalam MySQL digunakan untuk mengurutkan kumpulan hasil pernyataan SELECT . 
# Memungkinkan Anda mengatur baris yang diambil dalam urutan tertentu berdasarkan satu atau lebih kolom. 

SELECT *
FROM employee_demographics
ORDER BY first_name 
;

# ASC (Menaik): Mengurutkan hasil dalam urutan menaik 
# (AZ untuk teks, terkecil ke terbesar untuk angka, terlama ke terbaru untuk tanggal).
# DESC (Menurun): Mengurutkan hasil dalam urutan menurun (ZA untuk teks, terbesar ke terkecil untuk angka, terbaru ke terlama untuk tanggal). 

SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;

