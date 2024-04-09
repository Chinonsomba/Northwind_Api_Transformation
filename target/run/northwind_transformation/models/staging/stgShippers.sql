
  create view "Northwind"."staging"."stgShippers__dbt_tmp"
    
    
  as (
    SELECT * FROM shippers_raw
  );