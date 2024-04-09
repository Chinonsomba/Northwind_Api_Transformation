
  create view "Northwind"."staging"."stgOrderdetails__dbt_tmp"
    
    
  as (
    SELECT * FROM order_details
  );