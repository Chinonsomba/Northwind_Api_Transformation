SELECT
    p."productId",
    p."productName",
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    {{ ref('stgProducts') }} p
JOIN
    {{ ref('stgOrderdetails') }} od ON p."productId" = od."product_id"
GROUP BY
    p."productId",
    p."productName"
ORDER BY
    total_revenue DESC
LIMIT 10
