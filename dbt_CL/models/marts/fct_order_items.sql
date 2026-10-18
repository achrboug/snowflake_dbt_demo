{{ config(materialized='table') }} -- Als Tabelle speichern

WITH o AS (
    SELECT *
    FROM {{ ref('stg_orders') }} -- Bestellungen
),

oi AS (
    SELECT *
    FROM {{ ref('int_order_items') }} -- Bestellpositionen
),

final AS (
    SELECT
        oi.*, -- Alle Bestellpositionen

        o.customer_id, -- Kunden-ID
        o.order_date, -- Bestelldatum

        -- Schlüssel zur Kundendimension
        MD5('customer|' || TO_VARCHAR(o.customer_id)) AS CUSTOMER_KEY,

        -- Schlüssel zur Produktdimension
        MD5('product|' || TO_VARCHAR(oi.product_id)) AS PRODUCT_KEY

    FROM oi
    LEFT JOIN o
        ON oi.order_id = o.order_id -- Tabellen verbinden
)

SELECT *
FROM final -- Fertiges Ergebnis