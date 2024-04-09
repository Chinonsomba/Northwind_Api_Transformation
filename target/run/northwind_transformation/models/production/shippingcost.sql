
  
    

  create  table "Northwind"."staging"."shippingcost__dbt_tmp"
  
  
    as
  
  (
    SELECT
    s."companyName" AS shipper_name,
    SUM(o."freight") AS total_shipping_cost
FROM
    "Northwind"."staging"."stgOrders" o
JOIN
    "Northwind"."staging"."stgShippers" s ON o."shipVia" = s."shipperId"
GROUP BY
    s."companyName"
  );
  