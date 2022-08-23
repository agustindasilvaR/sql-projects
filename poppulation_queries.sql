--Step 1 - Years covered by the dataset
SELECT DISTINCT year from population_years;

--Step 2 - Largest population size for Gabon
SELECT MAX(population) FROM population_years WHERE country = 'Gabon';

--Step 3 - 10 lowest population countries in 2005
SELECT * FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

--Step 4 - Distinct countries with a population over 100 million in 2010
SELECT DISTINCT country, year, population
FROM population_years
WHERE year = 2010 AND population > 100;

--Step 5 - Number of countries with the word "Islands"
SELECT COUNT(country) FROM population_years
WHERE country LIKE "%islands%";

--Step 6 - Difference in population between 2000 and 2010 in Indonesia
SELECT DISTINCT country, year, population
FROM population_years
WHERE country = 'Indonesia'
ORDER BY year ASC;