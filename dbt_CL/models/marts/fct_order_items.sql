
{{ config(materialized='table') }}

WITH o AS (
    SELECT *
    FROM {{ ref('stg_orders') }}
),

oi AS (
    SELECT *
    FROM {{ ref('int_order_items') }}
),

final AS (
    SELECT
        oi.*,
        o.customer_id,
        o.order_date
    FROM oi
    LEFT JOIN o
        ON oi.order_id = o.order_id
)

SELECT *
FROM final
