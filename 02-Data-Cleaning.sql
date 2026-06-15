select * from churn_data;
SELECT *
FROM churn_data
WHERE CustomerId IS NULL;
SELECT CustomerId,
       COUNT(*) AS Duplicate_Count
FROM churn_data
GROUP BY CustomerId
HAVING COUNT(*) > 1;
SELECT *
FROM churn_data
WHERE Balance < 0;
SELECT *
FROM churn_data
WHERE Age < 18
OR Age > 100;
UPDATE churn_data
SET Gender='Female'
WHERE Gender='female';

UPDATE churn_data
SET Gender='Male'
WHERE Gender='male';