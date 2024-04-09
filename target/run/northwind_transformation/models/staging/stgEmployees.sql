
  create view "Northwind"."staging"."stgEmployees__dbt_tmp"
    
    
  as (
    SELECT * FROM employees_raw
  );