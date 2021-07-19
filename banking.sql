

mysql> create database bank;
Query OK, 1 row affected (0.02 sec)

mysql> use bank;
Database changed
mysql> CREATE TABLE `transaction` (  `sno` int(3) NOT NULL,  `sender` text NOT NULL,  `receiver` text NOT NULL,  `balance` int(8) NOT NULL,  `datetime` datetime NOT NULL DEFAULT current_timestamp()) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES(1, 'Dafny', 'Bharath', 3456, '2021-03-20 06:46:25'),(2, 'Bharath', 'Ram', 23634, '2021-03-20 05:19:00'),(3, 'Iswarya', 'Dafny', 23880, '2021-03-20 04:50:25'),(4, 'Priya', 'Raj', 12000, '2021-03-20 03:19:15'),(5, 'Ramya', 'Dhaarini', 53020, '2021-03-20 06:19:25'),(6, 'Ramya', 'Kavya', 53020, '2021-03-20 06:19:25'),(7, 'Kavya', 'Iswarya', 23400, '2021-03-20 06:23:46'),(8, 'Ram', 'Dafny', 85000, '2021-03-20 06:25:07'),(9, 'Iswarya', 'Kavya', 450, '2021-03-20 17:34:14');
Query OK, 9 rows affected (0.03 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE `users` (  `id` int(3) NOT NULL,  `name` text NOT NULL,  `email` varchar(30) NOT NULL,  `balance` int(8) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES(1, 'Dhaarini', 'dhaarini@gmail.com', 6632),(2, 'Akshaya', 'akshaya@gmail.com', 87400),(3, 'Dafny', 'dafny@gmail.com', 3456),(4, 'Bharath', 'bharath@gmail.com', 23868),(5, 'Iswarya', 'iswarya@gmail.com', 23430),(6, 'Priya', 'priya@gmail.com', 12000),(7, 'Ramya', 'ramya@gmail.com', 53020),(8, 'Kavya', 'kavya@gmail.com', 23850),(9, 'Ram', 'ram@gmail.com', 85000),(10, 'Raj', 'raj@gmail.com', 7320);
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from transaction
    -> ;
+-----+---------+----------+---------+---------------------+
| sno | sender  | receiver | balance | datetime            |
+-----+---------+----------+---------+---------------------+
|   1 | Dafny   | Bharath  |    3456 | 2021-03-20 06:46:25 |
|   2 | Bharath | Ram      |   23634 | 2021-03-20 05:19:00 |
|   3 | Iswarya | Dafny    |   23880 | 2021-03-20 04:50:25 |
|   4 | Priya   | Raj      |   12000 | 2021-03-20 03:19:15 |
|   5 | Ramya   | Dhaarini |   53020 | 2021-03-20 06:19:25 |
|   6 | Ramya   | Kavya    |   53020 | 2021-03-20 06:19:25 |
|   7 | Kavya   | Iswarya  |   23400 | 2021-03-20 06:23:46 |
|   8 | Ram     | Dafny    |   85000 | 2021-03-20 06:25:07 |
|   9 | Iswarya | Kavya    |     450 | 2021-03-20 17:34:14 |
+-----+---------+----------+---------+---------------------+
9 rows in set (0.00 sec)

mysql> select * from users;
+----+----------+--------------------+---------+
| id | name     | email              | balance |
+----+----------+--------------------+---------+
|  1 | Dhaarini | dhaarini@gmail.com |    6632 |
|  2 | Akshaya  | akshaya@gmail.com  |   87400 |
|  3 | Dafny    | dafny@gmail.com    |    3456 |
|  4 | Bharath  | bharath@gmail.com  |   23868 |
|  5 | Iswarya  | iswarya@gmail.com  |   23430 |
|  6 | Priya    | priya@gmail.com    |   12000 |
|  7 | Ramya    | ramya@gmail.com    |   53020 |
|  8 | Kavya    | kavya@gmail.com    |   23850 |
|  9 | Ram      | ram@gmail.com      |   85000 |
| 10 | Raj      | raj@gmail.com      |    7320 |
+----+----------+--------------------+---------+
10 rows in set (0.00 sec)

