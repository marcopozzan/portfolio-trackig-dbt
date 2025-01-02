SELECT
    *
     , position_value - cost_base as unrealized_profit
    , ROUND((position_value - cost_base) / cost_base, 5)*100 as unrealized_profit_pct
FROM {{ source('abc_bank', 'ABC_BANK_POSITION') }}