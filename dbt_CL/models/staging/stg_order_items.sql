SELECT
    ORDER_ITEM_ID, -- Bestellpositions-ID
    ORDER_ID, -- Bestellnummer
    LINE_NUMBER, -- Positionsnummer
    PRODUCT_ID, -- Produkt-ID
    QUANTITY AS Menge, -- Menge
    UNIT_PRICE_NET AS Stueckpreis, -- Netto-Stückpreis
    DISCOUNT_NET AS NettoRabat, -- Rabatt
    TAX_RATE AS Steuersatz, -- Steuersatz
    UNIT_COST_NET_AT_ORDER AS Stueckpreis_bei_Bestellung, -- Einkaufskosten
    CAST(UPDATED_AT AS DATE) AS updated_at -- Datum
FROM {{ source('erp', 'order_items') }} -- Daten aus Raw