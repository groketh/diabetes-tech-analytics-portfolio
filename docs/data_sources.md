# Data Sources

## Public Data
- CDC Diabetes Prevalence & Surveillance
- ClinicalTrials.gov (diabetes device trials)
- FDA MAUDE (medical device adverse events)
- FDA Device Trial Participation Snapshots

These datasets are treated as sources of truth for trends and structure.

---

## Synthetic Data
Synthetic datasets are generated to:
- Provide commercial denominators (installed base, sales proxies)
- Enable scenario analysis and forecasting
- Support decision workflows

All synthetic tables include:
- is_synthetic = true
- Generation assumptions
- Reproducible scripts