{{ config(materialized='view') }}

select
  region,
  cast(date_month as date) as date_month,
  company,
  cast(active_devices as bigint) as active_devices
from {{ ref('cgm_installed_base') }}