SELECT
    MD5('customer|' || TO_VARCHAR(CUSTOMER_ID)) AS CUSTOMER_KEY, -- Kundenschlüssel
    CUSTOMER_ID, -- Kunden-ID
    SEGMENT_ID, -- Kundensegment
    FIRST_NAME, -- Vorname
    LAST_NAME -- Nachname
FROM {{ ref('stg_customers') }} -- Kundendaten