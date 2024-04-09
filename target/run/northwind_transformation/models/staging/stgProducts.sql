
  create view "Northwind"."staging"."stgProducts__dbt_tmp"
    
    
  as (
    SELECT * FROM products_raw
  );