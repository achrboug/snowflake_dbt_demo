
SELECT
    *,
    Menge * Stueckpreis - NettoRabat AS NettoUmsatz,
    ROUND((Menge * Stueckpreis - NettoRabat) * (1 + Steuersatz), 2) AS BruttoUmsatz
FROM {{ ref('stg_order_items') }}
