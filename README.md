# Diabetes Technology Analytics Portfolio

## Purpose
This portfolio demonstrates how analytics for diabetes technology
evolves from dashboards into governed semantic models, AI-assisted
insights, and decision-centric applications.

The focus is on diabetes devices (with emphasis on CGM), competitive
intelligence, and strategic decision support.

---

## What This Is
- A modern analytics system, not a dashboard gallery
- Built on public data and clearly labeled synthetic data
- Focused on metrics, governance, and decision workflows
- Designed to mirror how analytics works in real enterprises

---

## What This Is Not
- Patient-level clinical analysis
- Claims of real commercial revenue
- A visualization-only portfolio
- Medical or regulatory advice

---

## Core Question
**Which diabetes-technology competitors pose the highest near-term
strategic risk, and what signals indicate that risk early?**

---

## Planned Projects
1. **Semantic Layer & Metrics Store (dbt)**
   - Public epidemiology + trials data
   - Synthetic commercial denominators
   - Tested, documented metrics

2. **Executive BI Scorecard**
   - Power BI or Tableau
   - Consumes semantic layer (no redefined metrics)

3. **AI Analyst Copilot**
   - Natural language Q&A over governed metrics
   - Explicit guardrails and evaluation

4. **Decision-Centric Application**
   - Targeted Streamlit/Dash app
   - Replaces multi-tab dashboards

---

## Data Transparency
This repository uses:
- **Public datasets** (CDC, FDA, ClinicalTrials.gov)
- **Synthetic datasets**, clearly labeled and documented

Synthetic data is used only where real commercial data is unavailable
and should not be interpreted as factual.

---

## Repository Structure

## Milestone: First Metric Shipped ✅
- Metric: Active CGM devices per 1,000 diagnosed diabetics
- Grain: region × month
- Pipeline: seeds → staging → marts
- dbt commands validated: seed / run / test