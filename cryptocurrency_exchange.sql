
-- Step 1 - Check the whole transactions table
SELECT * FROM transactions;
 
-- Step 2 - Total of money_in in the table
SELECT SUM(money_in) FROM transactions;


-- Step 3 - Total of money_out in the table
SELECT SUM(money_out) FROM transactions;


-- Step 4 - How many money_in transactions are in the table and how many money_in transactions are in the table where 'BIT' is the currency
SELECT COUNT(money_in) FROM transactions;
SELECT COUNT(money_in) FROM transactions
WHERE currency='BIT';

-- Step 5 - Largest transaction in the whole table
SELECT MAX(money_in) FROM transactions;
SELECT MAX(money_out) FROM transactions;

-- Step 6 - Average money_in in the table for 'ETH' 
SELECT AVG(money_in) from transactions
WHERE currency='ETH';

-- Step 7 - Select date, avg money_in, avg money_mout and group by date.
SELECT date, AVG(money_in), AVG(money_out)
FROM transactions
GROUP BY date;

-- Step 8 - Make the previous query easier to read to round averages to 2 decimal places.
SELECT date AS 'date', ROUND(AVG(money_in), 2) AS 'avg_money_in', ROUND(AVG(money_out),2) as 'avg_money_out'
FROM transactions
GROUP BY date;