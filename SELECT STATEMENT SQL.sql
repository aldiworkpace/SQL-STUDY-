#SELECT DAN FROM STATEMENT MENGGUNAKAN SQL

#SELECT DIGUNAKAN UNTUK MEMILIH KOLOM DARI TABEL BISA KOLOM SATU DAN BISA JUGA SEMUA KOLOM DENGAN MENGGUNNAKAN TANDA (*)
#FROM DIGUNAKAN UNTUK MEMILIH TABEL DISINI KITA MEMILIH TABEL DARI EMOPLOYE DEMOGRAPHIC


SELECT *
FROM employee_demographics;

## DISINI KITA AKAN MENGGUNAKAN SELECT UNTUK MEMILIH KOLOM DARI TABEL EMPLOYEE DEMOGRAPHIC MISAL KOLOM FIRST NAME DAN AGE.

SELECT first_name,age
FROM employee_demographics;

#kita akan coba menambahkan sampai 3 kolom
SELECT first_name,last_name,age
FROM employee_demographics;

#PEMDAS mengacu pada aturan urutan operasi aritmatika standar yang digunakan untuk menghitung ekspresi matematika di dalam kueri SQL
##di mana operasi dalam tanda kurung dievaluasi terlebih dahulu, diikuti oleh perkalian dan pembagian
##lalu penjumlahan dan pengurangan, dan seterusnya dari kiri ke kanan. 
##disini kita akan coba menambahkan umur di kolom age
#Penjelasan Urutan Operasi (PEMDAS/BODMAS) dalam MySQL
##Tanda Kurung (Parentheses): Operasi di dalam tanda kurung dievaluasi lebih dahulu, dari dalam ke luar. 
#Eksponen (Exponents): Meskipun tidak secara eksplisit tercantum dalam tabel prioritas MySQL, operasi pangkat memiliki prioritas tinggi. 
#Perkalian (Multiplication) dan Pembagian (Division): Setelah tanda kurung, operasi ini dievaluasi dari kiri ke kanan. 
#Penjumlahan (Addition) dan Pengurangan (Subtraction): Operasi ini adalah yang terakhir dievaluasi, juga dari kiri ke kanan. 


SELECT first_name,
last_name,
age,
(age + 10) * 10 
FROM employee_demographics;
