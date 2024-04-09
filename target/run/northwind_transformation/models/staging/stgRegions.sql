
  create view "Northwind"."staging"."stgRegions__dbt_tmp"
    
    
  as (
    SELECT * FROM regions_raw
  );