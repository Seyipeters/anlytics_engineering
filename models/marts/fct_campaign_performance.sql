select
    campaign_id,
    campaign_date,
    channel,
    campaign_type,
    impressions,
    clicks,
    conversions,
    spend,
    revenue,
    case when impressions = 0 then 0 else clicks::float / impressions end as ctr,
    case when clicks = 0 then 0 else conversions::float / clicks end as conversion_rate,
    case when spend = 0 then 0 else revenue / spend end as roas
from {{ ref('stg_campaigns') }}
