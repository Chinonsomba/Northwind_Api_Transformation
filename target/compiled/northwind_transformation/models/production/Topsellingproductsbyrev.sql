SELECT
    p."productId",
    p."productName",
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    "Northwind"."staging"."stgProducts" p
JOIN
    "Northwind"."staging"."stgOrderdetails" od ON p."productId" = od."product_id"
GROUP BY
    p."productId",
    p."productName"
ORDER BY
    total_revenue DESC
LIMIT 10