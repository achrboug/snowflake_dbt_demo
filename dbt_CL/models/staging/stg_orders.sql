select
    order_id,
    order_number,
    customer_id,
    ordered_at,
    cast(ordered_at as date) as order_date,
    order_status,
    --currency_code,
    updated_at
from {{ source('erp', 'orders') }}