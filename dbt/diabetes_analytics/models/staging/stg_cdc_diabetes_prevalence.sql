{{ config(materialized='view') }}

select
  region,
  cast(date_month as date) as date_month,
  cast(diagnosed_diabetes_population as bigint) as diagnosed_diabetes_population
from {{ ref('cdc_diabetes_prevalence') }}