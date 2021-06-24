---
title: "Data Analyst Portfolio Project"
day: "1"
publishDate: "2021-06-22"
thumbnailImage: "../images/day-1.png"
shareText: " Description: Today we start our Data Analyst Portfolio Project Series. In our first project we will be using SQL to do some Data Exploration. We will then visualize the data in Tableau for our next project."
hashtags: ['learn', 'data-analyst', 'sql', 'exploration']
draft: false

---

# SQL Data Exploration | Project 1/4

| Source:      | Alex The Analyst - Youtube channel |
| ------------ | ---------------------------------- |
| **Siries:**  | Data Analyst Portfolio Project     |
| **Teacher:** | Alex The Analyst                   |



## Notes 



[Github Covid19 data](https://github.com/owid/covid-19-data/blob/master/public/data/owid-covid-codebook.csv)

Login a Mysql por terminal:

```bash
$ sudo
$ mysql

# Crear base de datos covid_portafolio

mysql> CREATE DATABASE covid_portafolio;
Query OK, 1 row affected (0.14 sec)

# Cambio de base de datos
mysql> USE covid_portafolio
Database changed

# Listos para empezar a trabajar

```

```
sudo mysql -u root -p ******i
sudo mysql -u digdata -p R*******23#

CREATE USER 'digdata'@'localhost' identified by 'R*******3#';
CREATE DATABASE portafolio;
FLUSH PRIVILEGES;

```

Cargamos nuestro dataset a la nueva base de datos

Usamos MySQL Workbench for Linux para exploracion de datos con SQL. 

<img src="/home/digdata/.config/Typora/typora-user-images/image-20210623185425985.png" alt="image-20210623185425985" style="zoom:50%;" />

