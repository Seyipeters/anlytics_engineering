# Analytics Engineering with dbt

This repository demonstrates a practical **analytics engineering** workflow using dbt.

## Project objective
Build reliable campaign-performance transformations from raw campaign data into analytics-ready models.

## Stack
- dbt Core
- SQL
- Seeded CSV sample data

## Structure
- `seeds/campaigns.csv` - raw sample campaign data
- `models/staging/stg_campaigns.sql` - cleaned/typed staging model
- `models/marts/fct_campaign_performance.sql` - business metrics model
- `models/marts/schema.yml` - tests + documentation

## Quick start
```bash
dbt seed
dbt run
dbt test
```

## Output metrics
The mart model includes:
- CTR (click-through rate)
- conversion rate
- ROAS (return on ad spend)

## Why this repo matters
This project shows skills relevant to analytics engineering and AI/ML data preparation:
- reproducible SQL transformations
- tested data models
- business-facing metric definitions
