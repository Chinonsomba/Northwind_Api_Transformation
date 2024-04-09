
  create view "Northwind"."staging"."stgCategories__dbt_tmp"
    
    
  as (
    SELECT * FROM categories_raw
  );