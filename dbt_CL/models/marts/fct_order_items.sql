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
        o.customer_id, -- Kunde
        o.order_date -- Bestelldatum
    FROM oi
    LEFT JOIN o
        ON oi.order_id = o.order_id -- Tabellen verbinden
)

SELECT *
FROM final -- Fertiges Ergebnis
