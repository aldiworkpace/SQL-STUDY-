# LIMIT DAN ALIASING
# Dalam MySQL, klausa LIMIT digunakan untuk membatasi jumlah baris yang dikembalikan oleh sebuah kueri. 
# Ini sangat berguna ketika Anda berhadapan dengan tabel yang memiliki ribuan atau bahkan jutaan data dan hanya ingin menampilkan sebagian kecil darinya.

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 4
;

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

# LIMIT MEMBATASI LALU ANGKA PERTAMA YAITU 2, MENGAMBIL DARI POSISI 2, DAN ANGKA 1 MENGAMBIL 1 BARIS 
# SETELAHNYA


# ALIASING KITA BISA MENGGUNAKAN INI UNTUK MERUBAH SUATU KOLOM TANPA PENGGUNAAN (AS)

SELECT first_name nama_pertama, age
FROM employee_demographics
ORDER BY first_name, age
;