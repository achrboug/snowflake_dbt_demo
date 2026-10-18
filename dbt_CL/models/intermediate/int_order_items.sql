SELECT
    *, -- Alle Spalten
    Menge * Stueckpreis - NettoRabat AS NettoUmsatz, -- Ohne Steuer
    ROUND((Menge * Stueckpreis - NettoRabat) * (1 + Steuersatz), 2) AS BruttoUmsatz -- Mit Steuer
FROM {{ ref('stg_order_items') }} -- Daten aus Staging
