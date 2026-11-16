select
  party_key,
  total_revenue,
  total_cost,
  total_profit,
  profit_months,
  profit_band
from {{ ref('QBR_BANKING_FINANCIALS', 'fct_customer_profitability_summary') }}
