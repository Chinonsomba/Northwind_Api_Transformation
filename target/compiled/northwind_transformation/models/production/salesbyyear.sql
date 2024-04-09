SELECT
    DATE_TRUNC('year', CAST(o."orderDate" AS DATE)) AS year,
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_sales
FROM
    "Northwind"."staging"."stgOrders" o
JOIN
    "Northwind"."staging"."stgOrderdetails" od ON o."orderId" = od."order_id"
GROUP BY
    DATE_TRUNC('year', CAST(o."orderDate" AS DATE))
ORDER BY
    DATE_TRUNC('year', CAST(o."orderDate" AS DATE))