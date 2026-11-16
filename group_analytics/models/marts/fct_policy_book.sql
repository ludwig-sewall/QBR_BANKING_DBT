select
  policy_id,
  product_name,
  policy_status,
  annual_premium,
  sum_insured,
  claim_count,
  incurred_claims,
  {{ platform.as_of_date() }} as as_of_date
from {{ ref('QBR_BANKING_INSURANCE', 'dim_insurance_policies') }}
