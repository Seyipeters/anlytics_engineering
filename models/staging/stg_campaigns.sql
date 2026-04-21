select
    cast(campaign_id as integer) as campaign_id,
    cast(date as date) as campaign_date,
    channel,
    campaign_type,
    cast(impressions as integer) as impressions,
    cast(clicks as integer) as clicks,
    cast(conversions as integer) as conversions,
    cast(spend as numeric(12,2)) as spend,
    cast(revenue as numeric(12,2)) as revenue
from {{ ref('campaigns') }}
