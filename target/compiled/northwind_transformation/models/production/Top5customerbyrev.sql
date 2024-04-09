SELECT
    c."customerId",
    c."companyName",
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    "Northwind"."staging"."stgCustomers" c
JOIN
    "Northwind"."staging"."stgOrders" o ON c."customerId" = o."customerId"
JOIN
    "Northwind"."staging"."stgOrderdetails" od ON o."orderId" = od."order_id"
GROUP BY
    c."customerId",
    c."companyName"
ORDER BY
    total_revenue DESC
LIMIT 5