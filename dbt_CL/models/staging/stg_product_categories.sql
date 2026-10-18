SELECT
    CATEGORY_ID,   -- Kategorie-ID
    CATEGORY_NAME  -- Kategoriename
FROM {{ source('erp', 'product_categories') }}