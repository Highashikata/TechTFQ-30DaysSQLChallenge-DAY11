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