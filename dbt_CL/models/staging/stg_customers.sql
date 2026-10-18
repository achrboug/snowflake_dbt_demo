SELECT
    CUSTOMER_ID, -- Kundennummer
    SEGMENT_ID,  -- Kundensegment
    FIRST_NAME,  -- Vorname
    LAST_NAME    -- Nachname
FROM {{ source('crm', 'customers') }} -- Kundendaten aus Raw
