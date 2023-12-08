USE cars;

-- Check Data :: SELECT statement
SELECT * FROM car_dekho;

-- Total Cars :: COUNT()
SELECT COUNT(*) FROM car_dekho;				-- Result: 7927

-- Cars Available in the Year 2023 :: COUNT(), WHERE
SELECT COUNT(*) FROM car_dekho
WHERE year = 2023; 							-- Result: 6

-- Total Cars in year 2020, 2021, 2022
SELECT COUNT(*) FROM car_dekho
WHERE year BETWEEN 2020 AND 2022;			-- Result: 87

-- Total Cars in Year 2020, 2021, 2022 (yearwise) :: GROUPBY
SELECT COUNT(*) FROM car_dekho
WHERE year IN (2020, 2021, 2023) 
GROUP BY year;

-- Total of all Cars by Year with Year and Count being displayed :: GROUPBY
SELECT year, COUNT(*) FROM car_dekho
GROUP BY year; 

-- Total Count of Diesel Cars in Year 2020 :: 
SELECT COUNT(*) FROM car_dekho
WHERE year = 2020 AND fuel = "Diesel";				-- Result: 20

-- Total Count of Petrol Cars in Year 2020 ::
SELECT COUNT(*) FROM car_dekho
WHERE year = 2020 AND fuel = "Petrol"				-- Result: 51

-- All fuel cars (Petrol, Diesel, CNG) counts in all the years ::
SELECT year, COUNT(*) FROM car_dekho
WHERE fuel = "Petrol"
GROUP BY year;

SELECT year, COUNT(*) FROM car_dekho
WHERE fuel = "Diesel"
GROUP BY year;

SELECT year, COUNT(*) FROM car_dekho
WHERE fuel = "CNG"
GROUP BY year;

-- Years with more than 100 Cars :: HAVING
SELECT year, COUNT(*) FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

-- Years with less than 50 Cars :: HAVING
SELECT year, COUNT(*) FROM car_dekho
GROUP BY year
HAVING COUNT(*) < 50;

-- Car counts between 2015-2023  ::
SELECT COUNT(*) FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;				-- Result: 4124

-- Details of Cars between 2015-2023 ::
SELECT * FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;

-- :: :: :: :: :: Concluded :: :: :: :: :: -- 






