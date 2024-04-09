
  
    

  create  table "Northwind"."staging"."productcategorydistribution__dbt_tmp"
  
  
    as
  
  (
    SELECT
    c."categoryId",
    c."categoryName",
    COUNT(p."productId") AS total_products
FROM
    "Northwind"."staging"."stgCategories" c
LEFT JOIN
    "Northwind"."staging"."stgProducts" p ON c."categoryId" = p."categoryId"
GROUP BY
    c."categoryId",
    c."categoryName"
ORDER BY
    total_products DESC
  );
  