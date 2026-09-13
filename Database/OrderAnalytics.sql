 USE dbaUbuntuBox;

-- ORDER MANAGEMENT ANALYTICS
--***********************************************************************

-- VIEWING ALL THE ORDERS

SELECT
    [Order].OrderID,
    [Order].UserID,
    [User].Usernames,
    [Order].OrderStatus,
    [Order].OrderDate

FROM [Order]

INNER JOIN [User]
    ON [Order].UserID = [User].UserID

ORDER BY
    [Order].OrderDate DESC;



--***********************************************************************
-- TOTAL ORDERS MADE BY EACH CUSTOMER

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    COUNT([Order].OrderID) AS TotalOrdersMade

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames;



--***********************************************************************
-- TOTAL CANCELLED ORDERS BY EACH CUSTOMER

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    SUM(
        CASE
            WHEN [Order].OrderStatus = 'Cancelled'
            THEN 1
            ELSE 0
        END
    ) AS TotalOrdersCancelled

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames;



--***********************************************************************
-- ORDER ACTIVITY AND USER TYPE

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    COUNT([Order].OrderID) AS TotalOrdersMade,

    SUM(
        CASE
            WHEN [Order].OrderStatus = 'Cancelled'
            THEN 1
            ELSE 0
        END
    ) AS TotalOrdersCancelled,

    CASE

        -- Inappropriate = 3 or more cancelled orders
        -- @Ramsey we can change this anytime
        WHEN SUM(
            CASE
                WHEN [Order].OrderStatus = 'Cancelled'
                THEN 1
                ELSE 0
            END
        ) >= 3
        THEN 'Inappropriate'

        -- Retained = 4 or more orders
        WHEN COUNT([Order].OrderID) >= 4
        THEN 'Retained'

        -- Occasional = less than 4 orders
        ELSE 'Occasional'

    END AS UserTypeByActivity

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames

ORDER BY
    [User].UserID;



--***********************************************************************
-- VIEW PRODUCTS INSIDE EACH ORDER

SELECT
    [Order].OrderID,

    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    [Product].ProductID,
    [Product].ProductName,

    OrderItem.Quantity,
    OrderItem.UnitPrice,

    (OrderItem.Quantity * OrderItem.UnitPrice)
        AS ProductTotal,

    [Order].OrderStatus,
    [Order].OrderDate

FROM [Order]

INNER JOIN [User]
    ON [Order].UserID = [User].UserID

INNER JOIN OrderItem
    ON [Order].OrderID = OrderItem.OrderID

INNER JOIN [Product]
    ON OrderItem.ProductID = [Product].ProductID

ORDER BY
    [Order].OrderID;



--***********************************************************************
-- TOTAL BOXES BOUGHT BY EACH CUSTOMER
-- Only completed orders count as products bought

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    ISNULL(
        SUM(
            CASE
                WHEN [Order].OrderStatus = 'Complete'
                THEN OrderItem.Quantity
                ELSE 0
            END
        ), 0
    ) AS TotalBoxesBought

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

LEFT JOIN OrderItem
    ON [Order].OrderID = OrderItem.OrderID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames;



--***********************************************************************
-- TOTAL MONEY SPENT BY EACH CUSTOMER
-- Only completed orders count
-- UnitPrice stores the price paid at the time of purchase

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    ISNULL(
        SUM(
            CASE
                WHEN [Order].OrderStatus = 'Complete'
                THEN OrderItem.Quantity * OrderItem.UnitPrice
                ELSE 0
            END
        ), 0
    ) AS TotalMoneySpent

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

LEFT JOIN OrderItem
    ON [Order].OrderID = OrderItem.OrderID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames;



--***********************************************************************
-- FULL ORDER MANAGEMENT ANALYTICS
--
-- Shows:
-- Customer ID
-- Customer Name
-- Total Orders Made
-- Total Orders Cancelled
-- User Type By Activity
-- Total Boxes Bought
-- Total Money Spent
--***********************************************************************

SELECT
    [User].UserID AS CustomerID,
    [User].Usernames AS CustomerName,

    COUNT(
        DISTINCT [Order].OrderID
    ) AS TotalOrdersMade,

    COUNT(
        DISTINCT CASE
            WHEN [Order].OrderStatus = 'Cancelled'
            THEN [Order].OrderID
        END
    ) AS TotalOrdersCancelled,

    CASE

        WHEN COUNT(
            DISTINCT CASE
                WHEN [Order].OrderStatus = 'Cancelled'
                THEN [Order].OrderID
            END
        ) >= 3
        THEN 'Inappropriate'

        WHEN COUNT(
            DISTINCT [Order].OrderID
        ) >= 4
        THEN 'Retained'

        ELSE 'Occasional'

    END AS UserTypeByActivity,

    ISNULL(
        SUM(
            CASE
                WHEN [Order].OrderStatus = 'Complete'
                THEN OrderItem.Quantity
                ELSE 0
            END
        ), 0
    ) AS TotalBoxesBought,

    ISNULL(
        SUM(
            CASE
                WHEN [Order].OrderStatus = 'Complete'
                THEN OrderItem.Quantity * OrderItem.UnitPrice
                ELSE 0
            END
        ), 0
    ) AS TotalMoneySpent

FROM [User]

LEFT JOIN [Order]
    ON [User].UserID = [Order].UserID

LEFT JOIN OrderItem
    ON [Order].OrderID = OrderItem.OrderID

WHERE
    [User].IsAdmin = 0

GROUP BY
    [User].UserID,
    [User].Usernames

ORDER BY
    [User].UserID;