
  create view "Northwind"."staging"."stgOrders__dbt_tmp"
    
    
  as (
    SELECT * FROM order_raw
  );