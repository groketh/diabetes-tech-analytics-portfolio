{{ config(materialized='view') }}

with installed as (
  select
    region,
    date_month,
    sum(active_devices) as active_devices_total
  from {{ ref('stg_cgm_installed_base') }}
  group by 1,2
),
pop as (
  select
    region,
    date_month,
    diagnosed_diabetes_population
  from {{ ref('stg_cdc_diabetes_prevalence') }}
)

select
  i.region,
  i.date_month,
  i.active_devices_total,
  p.diagnosed_diabetes_population,
  1000.0 * i.active_devices_total::double / nullif(p.diagnosed_diabetes_population, 0) as active_cgm_per_1000
from installed i
join pop p
  using (region, date_month)