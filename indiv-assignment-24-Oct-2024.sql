Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database ruhande;
Query OK, 1 row affected (0.01 sec)

mysql> create table ngoma (NID int(16) primary key,firstName char(50),lastName(50),gender char(1),province char(30),sector char(30),cell char(30),village char (30),email char(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(50),gender char(1),province char(30),sector char(30),cell char(30),village char' at line 1
mysql> create table ngoma (NID int(16) primary key,firstName char(50),lastName char(50),gender char(1),province char(30),sector char(30),cell char(30),village char(30),email char(30));
ERROR 1046 (3D000): No database selected
mysql> use ruhande;
Database changed
mysql> create table ngoma (NID int(16) primary key,firstName char(50),lastName char(50),gender char(1),province char(30),sector char(30),cell char(30),village char(30),email char(30));
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> desc ngoma;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| NID       | int      | NO   | PRI | NULL    |       |
| firstName | char(50) | YES  |     | NULL    |       |
| lastName  | char(50) | YES  |     | NULL    |       |
| gender    | char(1)  | YES  |     | NULL    |       |
| province  | char(30) | YES  |     | NULL    |       |
| sector    | char(30) | YES  |     | NULL    |       |
| cell      | char(30) | YES  |     | NULL    |       |
| village   | char(30) | YES  |     | NULL    |       |
| email     | char(30) | YES  |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table ngoma drop village;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc ngoma;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| NID       | int      | NO   | PRI | NULL    |       |
| firstName | char(50) | YES  |     | NULL    |       |
| lastName  | char(50) | YES  |     | NULL    |       |
| gender    | char(1)  | YES  |     | NULL    |       |
| province  | char(30) | YES  |     | NULL    |       |
| sector    | char(30) | YES  |     | NULL    |       |
| cell      | char(30) | YES  |     | NULL    |       |
| email     | char(30) | YES  |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table ngoma add phone int(10);
Query OK, 0 rows affected, 1 warning (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc ngoma;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| NID       | int      | NO   | PRI | NULL    |       |
| firstName | char(50) | YES  |     | NULL    |       |
| lastName  | char(50) | YES  |     | NULL    |       |
| gender    | char(1)  | YES  |     | NULL    |       |
| province  | char(30) | YES  |     | NULL    |       |
| sector    | char(30) | YES  |     | NULL    |       |
| cell      | char(30) | YES  |     | NULL    |       |
| email     | char(30) | YES  |     | NULL    |       |
| phone     | int      | YES  |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> insert into ngoma values(1200238647235424,'Clement','Mucyo','M','South','Ngoma','Karubanda','mucyo@gmail.com',0785450436);
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> select * from ngoma;
+------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
| NID        | firstName | lastName | gender | province | sector | cell      | email           | phone     |
+------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
| 2147483647 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com | 785450436 |
+------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
1 row in set (0.00 sec)

mysql> alter table ngoma change column phone phone char (10);
Query OK, 1 row affected (0.04 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> insert into ngoma values(1200238647235420,'John','Mugabo','M','South','Ngoma','Karubanda','mugabo@gmail.com',0784050430);
ERROR 1062 (23000): Duplicate entry '2147483647' for key 'ngoma.PRIMARY'
mysql> alter ngom change column NID NID bigint
    -> ;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
ERROR 2003 (HY000): Can't connect to MySQL server on 'localhost:3306' (10061)
ERROR:
Can't connect to the server

mysql> alter ngom change column NID NID bigint
    -> ;
No connection. Trying to reconnect...
Connection id:    8
Current database: ruhande

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ngom change column NID NID bigint' at line 1
mysql> alter table ngoma change column NID NID bigint;
Query OK, 1 row affected (0.05 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> update ngoma set NID =1200238647235424 where firstName = 'Clement'
    -> ;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from ngoma;
+------------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell      | email           | phone     |
+------------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
| 1200238647235424 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com | 785450436 |
+------------------+-----------+----------+--------+----------+--------+-----------+-----------------+-----------+
1 row in set (0.00 sec)

mysql> insert into ngoma values(1200238647235420,'John','Mugabo','M','South','Ngoma','Karubanda','mugabo@gmail.com',0784050430);
Query OK, 1 row affected (0.00 sec)

mysql> desc ngoma;
+-----------+----------+------+-----+---------+-------+
| Field     | Type     | Null | Key | Default | Extra |
+-----------+----------+------+-----+---------+-------+
| NID       | bigint   | NO   | PRI | NULL    |       |
| firstName | char(50) | YES  |     | NULL    |       |
| lastName  | char(50) | YES  |     | NULL    |       |
| gender    | char(1)  | YES  |     | NULL    |       |
| province  | char(30) | YES  |     | NULL    |       |
| sector    | char(30) | YES  |     | NULL    |       |
| cell      | char(30) | YES  |     | NULL    |       |
| email     | char(30) | YES  |     | NULL    |       |
| phone     | char(10) | YES  |     | NULL    |       |
+-----------+----------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql> insert into ngoma (NID,firstName,lastName,gender,province,sector,cell,email,phone) values (1200238647235411,'Jean','Kagabo','M','South','Ngoma','Matyazo','jean@gmail.com',0784050411), (1200238647235412,'bosco','Karemera','M','South','Ngoma','Karubanda','karemera@gmail.com',0784050412),(12002386472354132,'Albert','Mutabazi','M','South','Ngoma','Matyazo','mutabazi@gmail.com',0784050413),(1200238647235414,'Anet','Keza','F','South','Ngoma','Karubanda','keza12@gmail.com',0784050414),(1200238647235415,'Jesca','Umuriza','F','South','Ngoma','Karubanda','umuriza@gmail.com',0784050415),(1200238647235416,'Risa','Umwiza','F','South','Ngoma','Karubanda','riza@gmail.com',0784050416),(1200238647235417,'John','Kalisa','M','South','Ngoma','Karubanda','kalisa@gmail.com',0784050417),(1200238647235418,'Claude','Kalisa','M','South','Ngoma','Matyazo','kalclaude@gmail.com',0784059417),(1200238647235419,'Kelia','Mukiza','F','South','Ngoma','Karubanda','mukiza@gmail.com',0784050419);
Query OK, 9 rows affected (0.00 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select * from ngoma;
+-------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| NID               | firstName | lastName | gender | province | sector | cell      | email               | phone     |
+-------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
|  1200238647235424 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com     | 785450436 |
|  1200238647235420 | John      | Mugabo   | M      | South    | Ngoma  | Karubanda | mugabo@gmail.com    | 784050430 |
|  1200238647235411 | Jean      | Kagabo   | M      | South    | Ngoma  | Matyazo   | jean@gmail.com      | 784050411 |
|  1200238647235412 | bosco     | Karemera | M      | South    | Ngoma  | Karubanda | karemera@gmail.com  | 784050412 |
| 12002386472354132 | Albert    | Mutabazi | M      | South    | Ngoma  | Matyazo   | mutabazi@gmail.com  | 784050413 |
|  1200238647235414 | Anet      | Keza     | F      | South    | Ngoma  | Karubanda | keza12@gmail.com    | 784050414 |
|  1200238647235415 | Jesca     | Umuriza  | F      | South    | Ngoma  | Karubanda | umuriza@gmail.com   | 784050415 |
|  1200238647235416 | Risa      | Umwiza   | F      | South    | Ngoma  | Karubanda | riza@gmail.com      | 784050416 |
|  1200238647235417 | John      | Kalisa   | M      | South    | Ngoma  | Karubanda | kalisa@gmail.com    | 784050417 |
|  1200238647235418 | Claude    | Kalisa   | M      | South    | Ngoma  | Matyazo   | kalclaude@gmail.com | 784059417 |
|  1200238647235419 | Kelia     | Mukiza   | F      | South    | Ngoma  | Karubanda | mukiza@gmail.com    | 784050419 |
+-------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
11 rows in set (0.00 sec)

mysql> update ngoma set NID =1200238647354132 where NID = 12002386472354132
    -> ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from ngoma;
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell      | email               | phone     |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| 1200238647235424 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com     | 785450436 |
| 1200238647235420 | John      | Mugabo   | M      | South    | Ngoma  | Karubanda | mugabo@gmail.com    | 784050430 |
| 1200238647235411 | Jean      | Kagabo   | M      | South    | Ngoma  | Matyazo   | jean@gmail.com      | 784050411 |
| 1200238647235412 | bosco     | Karemera | M      | South    | Ngoma  | Karubanda | karemera@gmail.com  | 784050412 |
| 1200238647354132 | Albert    | Mutabazi | M      | South    | Ngoma  | Matyazo   | mutabazi@gmail.com  | 784050413 |
| 1200238647235414 | Anet      | Keza     | F      | South    | Ngoma  | Karubanda | keza12@gmail.com    | 784050414 |
| 1200238647235415 | Jesca     | Umuriza  | F      | South    | Ngoma  | Karubanda | umuriza@gmail.com   | 784050415 |
| 1200238647235416 | Risa      | Umwiza   | F      | South    | Ngoma  | Karubanda | riza@gmail.com      | 784050416 |
| 1200238647235417 | John      | Kalisa   | M      | South    | Ngoma  | Karubanda | kalisa@gmail.com    | 784050417 |
| 1200238647235418 | Claude    | Kalisa   | M      | South    | Ngoma  | Matyazo   | kalclaude@gmail.com | 784059417 |
| 1200238647235419 | Kelia     | Mukiza   | F      | South    | Ngoma  | Karubanda | mukiza@gmail.com    | 784050419 |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
11 rows in set (0.00 sec)

mysql> select * from ngoma where firstName = 'Claude';
+------------------+-----------+----------+--------+----------+--------+---------+---------------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell    | email               | phone     |
+------------------+-----------+----------+--------+----------+--------+---------+---------------------+-----------+
| 1200238647235418 | Claude    | Kalisa   | M      | South    | Ngoma  | Matyazo | kalclaude@gmail.com | 784059417 |
+------------------+-----------+----------+--------+----------+--------+---------+---------------------+-----------+
1 row in set (0.00 sec)

mysql> select * from ngoma where sector = 'Ngoma' and cell ='Karubanda';
+------------------+-----------+----------+--------+----------+--------+-----------+--------------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell      | email              | phone     |
+------------------+-----------+----------+--------+----------+--------+-----------+--------------------+-----------+
| 1200238647235424 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com    | 785450436 |
| 1200238647235420 | John      | Mugabo   | M      | South    | Ngoma  | Karubanda | mugabo@gmail.com   | 784050430 |
| 1200238647235412 | bosco     | Karemera | M      | South    | Ngoma  | Karubanda | karemera@gmail.com | 784050412 |
| 1200238647235414 | Anet      | Keza     | F      | South    | Ngoma  | Karubanda | keza12@gmail.com   | 784050414 |
| 1200238647235415 | Jesca     | Umuriza  | F      | South    | Ngoma  | Karubanda | umuriza@gmail.com  | 784050415 |
| 1200238647235416 | Risa      | Umwiza   | F      | South    | Ngoma  | Karubanda | riza@gmail.com     | 784050416 |
| 1200238647235417 | John      | Kalisa   | M      | South    | Ngoma  | Karubanda | kalisa@gmail.com   | 784050417 |
| 1200238647235419 | Kelia     | Mukiza   | F      | South    | Ngoma  | Karubanda | mukiza@gmail.com   | 784050419 |
+------------------+-----------+----------+--------+----------+--------+-----------+--------------------+-----------+
8 rows in set (0.00 sec)

mysql> select * from ngoma where gender = 'F' or cell ='Matyazo';
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell      | email               | phone     |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| 1200238647235411 | Jean      | Kagabo   | M      | South    | Ngoma  | Matyazo   | jean@gmail.com      | 784050411 |
| 1200238647354132 | Albert    | Mutabazi | M      | South    | Ngoma  | Matyazo   | mutabazi@gmail.com  | 784050413 |
| 1200238647235414 | Anet      | Keza     | F      | South    | Ngoma  | Karubanda | keza12@gmail.com    | 784050414 |
| 1200238647235415 | Jesca     | Umuriza  | F      | South    | Ngoma  | Karubanda | umuriza@gmail.com   | 784050415 |
| 1200238647235416 | Risa      | Umwiza   | F      | South    | Ngoma  | Karubanda | riza@gmail.com      | 784050416 |
| 1200238647235418 | Claude    | Kalisa   | M      | South    | Ngoma  | Matyazo   | kalclaude@gmail.com | 784059417 |
| 1200238647235419 | Kelia     | Mukiza   | F      | South    | Ngoma  | Karubanda | mukiza@gmail.com    | 784050419 |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
7 rows in set (0.00 sec)

mysql> delete from ngoma where NID =1200238647235415;
Query OK, 1 row affected (0.00 sec)

mysql> select * from ngoma;
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| NID              | firstName | lastName | gender | province | sector | cell      | email               | phone     |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
| 1200238647235424 | Clement   | Mucyo    | M      | South    | Ngoma  | Karubanda | mucyo@gmail.com     | 785450436 |
| 1200238647235420 | John      | Mugabo   | M      | South    | Ngoma  | Karubanda | mugabo@gmail.com    | 784050430 |
| 1200238647235411 | Jean      | Kagabo   | M      | South    | Ngoma  | Matyazo   | jean@gmail.com      | 784050411 |
| 1200238647235412 | bosco     | Karemera | M      | South    | Ngoma  | Karubanda | karemera@gmail.com  | 784050412 |
| 1200238647354132 | Albert    | Mutabazi | M      | South    | Ngoma  | Matyazo   | mutabazi@gmail.com  | 784050413 |
| 1200238647235414 | Anet      | Keza     | F      | South    | Ngoma  | Karubanda | keza12@gmail.com    | 784050414 |
| 1200238647235416 | Risa      | Umwiza   | F      | South    | Ngoma  | Karubanda | riza@gmail.com      | 784050416 |
| 1200238647235417 | John      | Kalisa   | M      | South    | Ngoma  | Karubanda | kalisa@gmail.com    | 784050417 |
| 1200238647235418 | Claude    | Kalisa   | M      | South    | Ngoma  | Matyazo   | kalclaude@gmail.com | 784059417 |
| 1200238647235419 | Kelia     | Mukiza   | F      | South    | Ngoma  | Karubanda | mukiza@gmail.com    | 784050419 |
+------------------+-----------+----------+--------+----------+--------+-----------+---------------------+-----------+
10 rows in set (0.00 sec)


mysql> create table test_delete_table(id int primary key,item char(20));
Query OK, 0 rows affected (0.01 sec)

mysql> drop table test_delete_table;
Query OK, 0 rows affected (0.01 sec)