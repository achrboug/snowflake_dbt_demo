SELECT
    PLATFORM_ID,   -- Plattform-ID
    PLATFORM_NAME  -- Plattformname
FROM {{ source('erp', 'platforms') }}