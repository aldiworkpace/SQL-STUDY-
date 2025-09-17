#WHERE CLAUSE
#Digunakan memfilter baris. Memungkinkan Anda mengambil, mengubah, atau menghapus hanya rekaman yang memenuhi kriteria tertentu. Misalnya:

SELECT *
FROM employee_demographics
WHERE first_name = 'Leslie'
;

#then the output that comes out in the first name column is only Leslie

#Let's try to compare salaries, if the salary is more than 50,000
#then the output that comes out is for employees who have a salary of more than 50,000

SELECT *
FROM employee_salary
WHERE salary > 50000
;


SELECT *
FROM employee_salary
WHERE salary < 50000
;

#If we try to use the equal sign in the comparison, 
#then someone with a salary of 50,000 will be included in the table output.

SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT  *
FROM employee_demographics
WHERE gender = 'Female'
;

SELECT  *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE gender <> 'Female'
;

#Comparison Operator List
#Here are the most commonly used comparison operators in MySQL:
# = (Equals): Compares whether two values ​​are identical.
# <> (Not Equals): Compares whether two values ​​are not identical.
# != (Not Equals): An alternative to the <> operator and also means not equal to.
# > (Greater Than): Checks whether the value on the left is greater than the value on the right.
# < (Less Than): Checks whether the value on the left is less than the value on the right.
# >= (Greater Than or Equals): Checks whether the value on the left is greater than or equal to the value on the right.
# <= (Less Than or Equals): Checks whether the value on the left is less than or equal to the value on the right.

## AND OR NOT LOGICAL OPERATOR

##The AND operator combines two or more conditions
##Ia mengembalikan TRUE hanya jika semua kondisi gabungan adalah TRUE 

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

#Operator OR menggabungkan dua atau lebih kondisi.
#Mengembalikan TRUE jika setidaknya satu dari kondisi gabungan adalah TRUE

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;

#dia akan menampilkan tahun lahir lebih dari 1985 tetapi juga menampilkan tahun lahir jauh sebelum 1985 bagi pria 
#dan bukan hanya itu saja dia menampilkan gender wanita diatas tahun 1985

#sekarang kita coba menggunakan operator or not

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

#JADI SEKARANG YANG DIKATAKAN ADALAH TANGGAL LAHIR LEBIH BESAR DARI 1985
#ATAU TIDAK BISA SAMA DENGAN LAKI LAKI YANG YANG BERJENIS KELAMIN PEREMPUAN
 
 
#NOW WE GONNA SEARCH SPECIFIC PERSON 
 
SELECT *
FROM employee_demographics
WHERE first_name = 'Leslie' AND age > 40
;

#EXAMPLE 2
#disni kita menggunakan prinsip pemdas di mana operasi dalam tanda kurung dievaluasi terlebih dahulu, diikuti oleh perkalian dan pembagian
#lalu penjumlahan dan pengurangan, dan seterusnya dari kiri ke kanan

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

SELECT *
FROM employee_salary
WHERE (first_name = 'Leslie' AND salary = 75000) OR salary > 50000
;

# LIKE STATEMENT
# using % AND _
# Operator LIKE di MySQL digunakan dalam klausa WHERE untuk mencari pola tertentu dalam suatu kolom. 
# Memungkinkan pencocokan pola yang fleksibel menggunakan karakter wildcard

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'J___%'
;


SELECT first_name, salary, occupation
FROM employee_salary
WHERE (salary LIKE '5____%') OR salary > 60000
;
