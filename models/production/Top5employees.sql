-- models/production/top_employee_performance.sql

SELECT
    e."employeeId",
    e."firstName",
    e."lastName",
    COUNT(o."orderId") AS total_orders,
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    {{ ref('stgEmployees') }} e
LEFT JOIN
    {{ ref('stgOrders') }} o ON e."employeeId" = o."employeeId"
LEFT JOIN
    {{ ref('stgOrderdetails') }} od ON o."orderId" = od."order_id"
GROUP BY
    e."employeeId",
    e."firstName",
    e."lastName"
ORDER BY
    total_revenue DESC
