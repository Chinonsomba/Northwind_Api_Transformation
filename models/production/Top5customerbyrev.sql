SELECT
    c."customerId",
    c."companyName",
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    {{ ref('stgCustomers') }} c
JOIN
    {{ ref('stgOrders') }} o ON c."customerId" = o."customerId"
JOIN
    {{ ref('stgOrderdetails') }} od ON o."orderId" = od."order_id"
GROUP BY
    c."customerId",
    c."companyName"
ORDER BY
    total_revenue DESC
LIMIT 5