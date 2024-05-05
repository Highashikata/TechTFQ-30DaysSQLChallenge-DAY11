# TechTFQ-30DaysSQLChallenge-DAY11


Remove outliers SQL challenge

going through the challenge of SQL interview questions featured in the TechTFQ channel



In this repository we will be going through the SQL interview questions featured in the following YouTube video [SQL Interview Questions](https://www.youtube.com/watch?v=LBWXjtLNauQ&list=PLavw5C92dz9Hxz0YhttDniNgKejQlPoAn&index=11).

# **Day 11: The problem statement:  Removing outliers**


**PROBLEM STATEMENT :**
In the given input table, there are hotel ratings which are either too high or too low compared to the standard ratings the hotel receives each year. Write a query to identify and exclude these outlier records as shown in expected output below. 
Your output should follow the same order of records as shown.

![image](https://github.com/Highashikata/TechTFQ-30DaysSQLChallenge-DAY11/assets/96960411/5eb10929-05fb-4a4f-9fbc-3aba147e6a7e)



**DDL&DML**

```
DROP TABLE IF EXISTS hotel_ratings;


CREATE TABLE hotel_ratings
(
    hotel varchar(30),
    YEAR int,
    rating decimal
);


INSERT INTO hotel_ratings
VALUES
('Radisson Blu', 2020, 4.8);


INSERT INTO hotel_ratings
VALUES
('Radisson Blu', 2021, 3.5);


INSERT INTO hotel_ratings
VALUES
('Radisson Blu', 2022, 3.2);


INSERT INTO hotel_ratings
VALUES
('Radisson Blu', 2023, 3.8);


INSERT INTO hotel_ratings
VALUES
('InterContinental', 2020, 4.2);


INSERT INTO hotel_ratings
VALUES
('InterContinental', 2021, 4.5);


INSERT INTO hotel_ratings
VALUES
('InterContinental', 2022, 1.5);


INSERT INTO hotel_ratings
VALUES
('InterContinental', 2023, 3.8);


SELECT *
FROM hotel_ratings;
```


**DQL**

```

```
