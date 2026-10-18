
SELECT
    CUSTOMER_ID,
    SEGMENT_ID,
    FIRST_NAME,
    LAST_NAME
FROM {{ source('crm', 'customers') }}
