--Step 1 - Query for the nomnom table
SELECT * FROM nomnom;

--Step 2 - Distinct neighborhoods
SELECT DISTINCT neighborhood FROM nomnom;

--Step 3 - Distinct cuisine types
SELECT DISTINCT cuisine FROM nomnom;

--Step 4 - Chinese restaurants
SELECT * FROM nomnom WHERE cuisine = 'Chinese';

--Step 5 - Restaurants with reviews of 4 and above
SELECT * FROM nomnom WHERE review >= 4;

--Step 6 - Restaurants which are Italian and $$$
SELECT * FROM nomnom WHERE cuisine='Italian' AND price = '$$$';

--Step 7 - Restaurant which contains 'meatball'
SELECT * FROM nomnom WHERE name LIKE '%meatball%';

--Step8 - Close restaurants in Midtown, Downtown or Chinatown
SELECT * FROM nomnom WHERE neighborhood = 'Midtown' OR neighborhood = 'Downtown' OR neighborhood = 'Chinatown';

--Step9 - Health grade pending restaurants
SELECT * FROM nomnom WHERE health is NULL;

--Step10 - Top 10 restaurants ranking according to reviews
SELECT * FROM nomnom
ORDER BY review DESC
LIMIT 10;

--Step11 - Rating system 
SELECT name,
CASE
WHEN review > 4.5 THEN 'Extraordinary'
WHEN review > 4 THEN 'Excellent'
WHEN review > 3 THEN 'Good'
WHEN review > 2 THEN 'Fair'
ELSE 'Poor'
END AS 'Review'
FROM nomnom;