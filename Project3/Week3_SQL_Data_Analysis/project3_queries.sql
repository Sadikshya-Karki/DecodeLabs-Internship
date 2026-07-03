-- Count total number of orders
SELECT COUNT(*) AS Total_Orders FROM orders;

-- Calculate total revenue and average order value
SELECT 
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Average_Order_Value,
    MIN(TotalPrice) AS Minimum_Order,
    MAX(TotalPrice) AS Maximum_Order
FROM orders;

-- Count orders by product
SELECT 
    Product,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue
FROM orders
GROUP BY Product
ORDER BY Total_Orders DESC;

-- Count orders by order status
SELECT 
    OrderStatus,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

-- Count orders by referral source
SELECT 
    ReferralSource,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY ReferralSource
ORDER BY Total_Orders DESC;

-- Count orders by payment method
SELECT 
    PaymentMethod,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

-- Filter only delivered orders
SELECT 
    OrderID,
    Product,
    TotalPrice,
    OrderStatus
FROM orders
WHERE OrderStatus = 'Delivered'
ORDER BY TotalPrice DESC;

-- Find high value orders above 3000
SELECT 
    OrderID,
    Product,
    Quantity,
    TotalPrice,
    OrderStatus
FROM orders
WHERE TotalPrice > 3000
ORDER BY TotalPrice DESC;

-- Total revenue by payment method
SELECT 
    PaymentMethod,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Avg_Order_Value
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Revenue DESC;

-- Find orders where no coupon was used
SELECT 
    COUNT(*) AS Orders_Without_Coupon
FROM orders
WHERE CouponCode = '' OR CouponCode IS NULL;

-- Total revenue by referral source
SELECT 
    ReferralSource,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Avg_Order_Value
FROM orders
GROUP BY ReferralSource
ORDER BY Total_Revenue DESC;

-- Find cancelled orders by product
SELECT 
    Product,
    COUNT(*) AS Cancelled_Orders
FROM orders
WHERE OrderStatus = 'Cancelled'
GROUP BY Product
ORDER BY Cancelled_Orders DESC;

-- Monthly order trend
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Monthly_Revenue
FROM orders
GROUP BY Month
ORDER BY Month ASC;

-- Average quantity ordered per product
SELECT 
    Product,
    AVG(Quantity) AS Avg_Quantity
FROM orders
GROUP BY Product
ORDER BY Avg_Quantity DESC;

-- Top 10 highest value orders
SELECT 
    OrderID,
    CustomerID,
    Product,
    TotalPrice,
    OrderStatus
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- Count orders by coupon code
SELECT 
    CouponCode,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue
FROM orders
WHERE CouponCode != ''
GROUP BY CouponCode
ORDER BY Total_Orders DESC;

-- Orders returned by product
SELECT 
    Product,
    COUNT(*) AS Returned_Orders
FROM orders
WHERE OrderStatus = 'Returned'
GROUP BY Product
ORDER BY Returned_Orders DESC;

-- Compare delivered vs cancelled orders per product
SELECT 
    Product,
    SUM(CASE WHEN OrderStatus = 'Delivered' THEN 1 ELSE 0 END) AS Delivered,
    SUM(CASE WHEN OrderStatus = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled
FROM orders
GROUP BY Product
ORDER BY Product ASC;

