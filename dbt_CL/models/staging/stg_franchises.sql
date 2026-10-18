SELECT
    FRANCHISE_ID,   -- Franchise-ID
    FRANCHISE_NAME  -- Franchise-Name
FROM {{ source('erp', 'franchises') }}