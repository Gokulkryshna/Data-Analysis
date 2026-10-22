
USE ecomm;

SHOW TABLES;
SELECT COUNT(*) AS TotalCustomers
FROM customer_churn;
SELECT *
FROM customer_churn
LIMIT 5;
SELECT
    SUM(WarehouseToHome IS NULL) AS Missing_WarehouseToHome,
    SUM(HourSpendOnApp IS NULL) AS Missing_HourSpendOnApp,
    SUM(OrderAmountHikeFromlastYear IS NULL) AS Missing_OrderAmountHike,
    SUM(DaySinceLastOrder IS NULL) AS Missing_DaySinceLastOrder,
    SUM(Tenure IS NULL) AS Missing_Tenure,
    SUM(CouponUsed IS NULL) AS Missing_CouponUsed,
    SUM(OrderCount IS NULL) AS Missing_OrderCount
FROM customer_churn;
SELECT
    ROUND(AVG(WarehouseToHome)) AS Mean_WarehouseToHome,
    ROUND(AVG(HourSpendOnApp)) AS Mean_HourSpendOnApp,
    ROUND(AVG(OrderAmountHikeFromlastYear)) AS Mean_OrderAmountHike,
    ROUND(AVG(DaySinceLastOrder)) AS Mean_DaySinceLastOrder
FROM customer_churn;
SELECT COUNT(*) AS MissingRows
FROM customer_churn
WHERE WarehouseToHome IS NULL
   OR HourSpendOnApp IS NULL
   OR OrderAmountHikeFromlastYear IS NULL
   OR DaySinceLastOrder IS NULL;
   SET SQL_SAFE_UPDATES = 0;
   UPDATE customer_churn
SET
    WarehouseToHome = COALESCE(WarehouseToHome, 16),
    HourSpendOnApp = COALESCE(HourSpendOnApp, 3),
    OrderAmountHikeFromlastYear =
        COALESCE(OrderAmountHikeFromlastYear, 16),
    DaySinceLastOrder = COALESCE(DaySinceLastOrder, 5);
    SELECT
    SUM(WarehouseToHome IS NULL) AS Missing_WarehouseToHome,
    SUM(HourSpendOnApp IS NULL) AS Missing_HourSpendOnApp,
    SUM(OrderAmountHikeFromlastYear IS NULL) AS Missing_OrderAmountHike,
    SUM(DaySinceLastOrder IS NULL) AS Missing_DaySinceLastOrder
FROM customer_churn;
SELECT Tenure, COUNT(*) AS Frequency
FROM customer_churn
WHERE Tenure IS NOT NULL
GROUP BY Tenure
ORDER BY Frequency DESC
LIMIT 1;
UPDATE customer_churn
SET Tenure = 1
WHERE Tenure IS NULL;
SELECT CouponUsed, COUNT(*) AS Frequency
FROM customer_churn
WHERE CouponUsed IS NOT NULL
GROUP BY CouponUsed
ORDER BY Frequency DESC
LIMIT 1;
UPDATE customer_churn
SET CouponUsed = 1
WHERE CouponUsed IS NULL;
SELECT OrderCount, COUNT(*) AS Frequency
FROM customer_churn
WHERE OrderCount IS NOT NULL
GROUP BY OrderCount
ORDER BY Frequency DESC
LIMIT 1;
SELECT OrderCount, COUNT(*) AS Frequency
FROM customer_churn
WHERE OrderCount IS NOT NULL
GROUP BY OrderCount
ORDER BY Frequency DESC
LIMIT 1;
UPDATE customer_churn
SET OrderCount = 2
WHERE OrderCount IS NULL;
SELECT COUNT(*) AS RowsToDelete
FROM customer_churn
WHERE WarehouseToHome > 100;
DELETE FROM customer_churn
WHERE WarehouseToHome > 100;
SELECT PreferredLoginDevice, COUNT(*) AS Frequency
FROM customer_churn
GROUP BY PreferredLoginDevice;
UPDATE customer_churn
SET PreferredLoginDevice = 'Mobile Phone'
WHERE PreferredLoginDevice = 'Phone';
SELECT PreferedOrderCat, COUNT(*) AS Frequency
FROM customer_churn
GROUP BY PreferedOrderCat;
UPDATE customer_churn
SET PreferedOrderCat = 'Mobile Phone'
WHERE PreferedOrderCat = 'Mobile';
SELECT PreferredPaymentMode, COUNT(*) AS Frequency
FROM customer_churn
GROUP BY PreferredPaymentMode;
UPDATE customer_churn
SET PreferredPaymentMode = 'Cash on Delivery'
WHERE PreferredPaymentMode = 'COD';

UPDATE customer_churn
SET PreferredPaymentMode = 'Credit Card'
WHERE PreferredPaymentMode = 'CC';
ALTER TABLE customer_churn
RENAME COLUMN PreferedOrderCat TO PreferredOrderCat;
ALTER TABLE customer_churn
RENAME COLUMN HourSpendOnApp TO HoursSpentOnApp;
ALTER TABLE customer_churn
ADD COLUMN ComplaintReceived VARCHAR(3);
    DESCRIBE customer_churn;
    ALTER TABLE customer_churn
ADD COLUMN ComplaintReceived VARCHAR(3);
UPDATE customer_churn
SET ComplaintReceived =
    CASE
        WHEN Complain = b'1' THEN 'Yes'
        ELSE 'No'
    END;
    ALTER TABLE customer_churn
ADD COLUMN ChurnStatus VARCHAR(7);
UPDATE customer_churn
SET ChurnStatus =
    CASE
        WHEN Churn = b'1' THEN 'Churned'
        ELSE 'Active'
    END;
    ALTER TABLE customer_churn
DROP COLUMN Churn,
DROP COLUMN Complain;
SELECT
    ChurnStatus,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY ChurnStatus;
SELECT
    AVG(Tenure) AS AverageTenure,
    SUM(CashbackAmount) AS TotalCashback
FROM customer_churn
WHERE ChurnStatus = 'Churned';SELECT
    AVG(Tenure) AS AverageTenure,
    SUM(CashbackAmount) AS TotalCashback
FROM customer_churn
WHERE ChurnStatus = 'Churned';
SELECT
    ROUND(
        SUM(CASE
            WHEN ComplaintReceived = 'Yes' THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS ComplaintPercentage
FROM customer_churn
WHERE ChurnStatus = 'Churned';
SELECT
    CityTier,
    COUNT(*) AS ChurnedCustomers
FROM customer_churn
WHERE ChurnStatus = 'Churned'
  AND PreferredOrderCat = 'Laptop & Accessory'
GROUP BY CityTier
ORDER BY ChurnedCustomers DESC
LIMIT 1;
SELECT
    PreferredPaymentMode,
    COUNT(*) AS TotalCustomers
FROM customer_churn
WHERE ChurnStatus = 'Active'
GROUP BY PreferredPaymentMode
ORDER BY TotalCustomers DESC
LIMIT 1;
SELECT
    SUM(OrderAmountHikeFromlastYear) AS TotalOrderAmountHike
FROM customer_churn
WHERE MaritalStatus = 'Single'
  AND PreferredOrderCat = 'Mobile Phone';
  SELECT
    AVG(NumberOfDeviceRegistered) AS AverageDevices
FROM customer_churn
WHERE PreferredPaymentMode = 'UPI';
SELECT
    CityTier,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY CityTier
ORDER BY TotalCustomers DESC
LIMIT 1;
SELECT
    Gender,
    SUM(CouponUsed) AS TotalCouponsUsed
FROM customer_churn
GROUP BY Gender
ORDER BY TotalCouponsUsed DESC
LIMIT 1;
SELECT
    PreferredOrderCat,
    COUNT(*) AS TotalCustomers,
    MAX(HoursSpentOnApp) AS MaxAppHours
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY PreferredOrderCat;
SELECT
    SUM(OrderCount) AS TotalOrders,
    MAX(SatisfactionScore) AS MaxSatisfactionScore
FROM customer_churn
WHERE PreferredPaymentMode = 'Credit Card';
SELECT
    AVG(SatisfactionScore) AS AverageSatisfactionScore
FROM customer_churn
WHERE ComplaintReceived = 'Yes';
SELECT
    PreferredOrderCat,
    COUNT(*) AS TotalCustomers
FROM customer_churn
WHERE CouponUsed > 5
GROUP BY PreferredOrderCat
ORDER BY TotalCustomers DESC
LIMIT 1;
SELECT
    PreferredOrderCat,
    ROUND(AVG(CashbackAmount), 2) AS AverageCashback
FROM customer_churn
GROUP BY PreferredOrderCat
ORDER BY AverageCashback DESC
LIMIT 3;

SELECT PreferredPaymentMode, COUNT(*) AS TotalCustomers
FROM customer_churn
WHERE Tenure = 10
  AND OrderCount > 500
GROUP BY PreferredPaymentMode;

SELECT COUNT(*) AS MatchingCustomers
FROM customer_churn
WHERE Tenure = 10
  AND OrderCount > 500;
  
SELECT
    AVG(Tenure) AS AverageTenure,
    MAX(OrderCount) AS MaximumOrderCount
FROM customer_churn;

SELECT
    PreferredPaymentMode,
    ROUND(AVG(Tenure), 2) AS AverageTenure,
    SUM(OrderCount) AS TotalOrders
FROM customer_churn
GROUP BY PreferredPaymentMode
HAVING ROUND(AVG(Tenure), 0) = 10
   AND SUM(OrderCount) > 500;
   
SELECT
    CASE
        WHEN WarehouseToHome <= 5 THEN 'Very Close Distance'
        WHEN WarehouseToHome <= 10 THEN 'Close Distance'
        WHEN WarehouseToHome <= 15 THEN 'Moderate Distance'
        ELSE 'Far Distance'
    END AS DistanceCategory,
    ChurnStatus,
    COUNT(*) AS TotalCustomers
FROM customer_churn
GROUP BY DistanceCategory, ChurnStatus
ORDER BY
    CASE DistanceCategory
        WHEN 'Very Close Distance' THEN 1
        WHEN 'Close Distance' THEN 2
        WHEN 'Moderate Distance' THEN 3
        WHEN 'Far Distance' THEN 4
    END,
    ChurnStatus;
    
SELECT *
FROM customer_churn
WHERE MaritalStatus = 'Married'
  AND CityTier = 1
  AND OrderCount > (
      SELECT AVG(OrderCount)
      FROM customer_churn
  );

SELECT COUNT(*) AS TotalMatchingCustomers
FROM customer_churn
WHERE MaritalStatus = 'Married'
  AND CityTier = 1
  AND OrderCount > (
      SELECT AVG(OrderCount)
      FROM customer_churn
  );

CREATE TABLE customer_returns (
    ReturnID INT PRIMARY KEY,
    CustomerID INT,
    ReturnDate DATE,
    RefundAmount INT
);

INSERT INTO customer_returns
    (ReturnID, CustomerID, ReturnDate, RefundAmount)
VALUES
    (1001, 50022, '2023-01-01', 2130),
    (1002, 50316, '2023-01-23', 2000),
    (1003, 51099, '2023-02-14', 2290),
    (1004, 52321, '2023-03-08', 2510),
    (1005, 52928, '2023-03-20', 3000),
    (1006, 53749, '2023-04-17', 1740),
    (1007, 54206, '2023-04-21', 3250),
    (1008, 54838, '2023-04-30', 1990);
    
SELECT
    cr.ReturnID,
    cr.CustomerID,
    cr.ReturnDate,
    cr.RefundAmount,
    cc.* 
FROM customer_returns AS cr
INNER JOIN customer_churn AS cc
    ON cr.CustomerID = cc.CustomerID
WHERE cc.ChurnStatus = 'Churned'
  AND cc.ComplaintReceived = 'Yes';






