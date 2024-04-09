
  create view "Northwind"."staging"."stgSuppliers__dbt_tmp"
    
    
  as (
    SELECT * FROM suppliers_raw
  );