
  create view "Northwind"."staging"."stgCustomers__dbt_tmp"
    
    
  as (
    SELECT * FROM customera_raw
  );