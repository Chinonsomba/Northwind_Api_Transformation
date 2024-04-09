
  
    

  create  table "Northwind"."staging"."Top5employees__dbt_tmp"
  
  
    as
  
  (
    -- models/production/top_employee_performance.sql

SELECT
    e."employeeId",
    e."firstName",
    e."lastName",
    COUNT(o."orderId") AS total_orders,
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM
    "Northwind"."staging"."stgEmployees" e
LEFT JOIN
    "Northwind"."staging"."stgOrders" o ON e."employeeId" = o."employeeId"
LEFT JOIN
    "Northwind"."staging"."stgOrderdetails" od ON o."orderId" = od."order_id"
GROUP BY
    e."employeeId",
    e."firstName",
    e."lastName"
ORDER BY
    total_revenue DESC
  );
  