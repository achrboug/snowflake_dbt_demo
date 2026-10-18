SELECT
    MD5('product|' || TO_VARCHAR(p.PRODUCT_ID)) AS PRODUCT_KEY, -- Produktschlüssel
    p.PRODUCT_ID, -- Produkt-ID
    p.SKU, -- Artikelnummer
    p.PRODUCT_NAME, -- Produktname
    p.EDITION, -- Edition
    f.FRANCHISE_NAME, -- Franchise
    c.CATEGORY_NAME, -- Kategorie
    pl.PLATFORM_NAME -- Plattform

FROM {{ ref('stg_products') }} p -- Produkte

LEFT JOIN {{ ref('stg_franchises') }} f
    ON p.FRANCHISE_ID = f.FRANCHISE_ID -- Franchise verbinden

LEFT JOIN {{ ref('stg_product_categories') }} c
    ON p.CATEGORY_ID = c.CATEGORY_ID -- Kategorie verbinden

LEFT JOIN {{ ref('stg_platforms') }} pl
    ON p.PLATFORM_ID = pl.PLATFORM_ID -- Plattform verbinden