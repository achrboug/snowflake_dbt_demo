SELECT
    order_id, -- Bestell-ID
    order_number, -- Bestellnummer
    customer_id, -- Kunden-ID
    ordered_at, -- Bestellzeitpunkt
    CAST(ordered_at AS DATE) AS order_date, -- Bestelldatum
    order_status, -- Bestellstatus
    -- currency_code, -- Währung (auskommentiert)
    updated_at -- Letzte Aktualisierung
FROM {{ source('erp', 'orders') }} -- Daten aus Raw ERP