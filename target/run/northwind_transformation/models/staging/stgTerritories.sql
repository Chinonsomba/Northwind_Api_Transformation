
  create view "Northwind"."staging"."stgTerritories__dbt_tmp"
    
    
  as (
    SELECT * FROM terriotories_raw
  );