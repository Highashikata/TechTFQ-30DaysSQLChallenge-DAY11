--- Cheking the data
SELECT *
FROM hotel_ratings;

--- Fetching the AVG TO define the outliers rule
SELECT HOTEL,
	YEAR,
	AVG(RATING)
FROM HOTEL_RATINGS
GROUP BY HOTEL,
	YEAR;


	
--- 
SELECT HOTEL,
       YEAR,
       CASE 
           WHEN RATING > AVG_RATING + 1 AND RATING < AVG_RATING - 1 THEN RATING 
           ELSE NULL 
       END AS FILTERED_RATING
FROM (
    SELECT HOTEL,
           YEAR,
           AVG(RATING) OVER(PARTITION BY HOTEL, YEAR) AS AVG_RATING,
           RATING
    FROM HOTEL_RATINGS
) AS subquery;



--- Measuring the difference between avg rating and rating for every hotel

SELECT *
FROM HOTEL_RATINGS
WHERE HOTEL = 'Radisson Blu';

-- Fetching the avg rating for every hotel
SELECT *,
	ROUND(AVG(RATING) OVER(PARTITION BY HOTEL range between unbounded preceding and unbounded following), 2) AS avg_rating 
FROM HOTEL_RATINGS;

--- Using CTE 
WITH AVG_cte as(
	SELECT *,
		ROUND(AVG(RATING) OVER(PARTITION BY HOTEL), 2) AS avg_rating 
	FROM HOTEL_RATINGS
)

SELECT *
FROM AVG_CTE
WHERE RATING < AVG_RATING + 0.9
	AND RATING > AVG_RATING - 1.5
ORDER BY
	HOTEL DESC;






