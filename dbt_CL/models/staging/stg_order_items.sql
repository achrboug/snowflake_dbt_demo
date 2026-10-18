SELECT
    ORDER_ITEM_ID,
    ORDER_ID,
    LINE_NUMBER,
    PRODUCT_ID,
    QUANTITY AS Menge,
    UNIT_PRICE_NET AS Stueckpreis,
    DISCOUNT_NET AS NettoRabat,
    TAX_RATE AS Steuersatz,
    UNIT_COST_NET_AT_ORDER as Stueckpreis_bei_Bestellung,
    Cast(UPDATED_AT as date) as updated_at
From {{ source('erp','order_items')}}