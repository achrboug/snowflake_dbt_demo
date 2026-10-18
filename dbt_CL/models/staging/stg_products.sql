SELECT
    PRODUCT_ID,    -- Produkt-ID
    SKU,           -- Artikelnummer
    PRODUCT_NAME,  -- Produktname
    EDITION,       -- Edition
    FRANCHISE_ID,  -- Franchise-ID
    CATEGORY_ID,   -- Kategorie-ID
    PLATFORM_ID    -- Plattform-ID
FROM {{ source('erp', 'products') }} -- Rohdaten aus ERP