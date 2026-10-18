# snowflake_dbt_demo
Mein Snowflake dbt Projekt – Critical Loot


## Star Schema – Planung

Wir möchten die Verkäufe von Critical Loot analysieren.

**Faktentabelle:**
- `FCT_ORDER_ITEMS`: Bestellungen, Mengen und Umsätze.

**Dimensionen:**
- `DIM_CUSTOMERS`: Informationen über Kunden.
- `DIM_PRODUCTS`: Informationen über Produkte.

**Verbindungen:**
- Über `CUSTOMER_ID` verbinden wir Verkäufe mit Kunden.
- Über `PRODUCT_ID` verbinden wir Verkäufe mit Produkten.

**Warum Star Schema?**

Damit können wir einfach sehen, welche Produkte verkauft werden, welche Kunden bestellen und wie viel Umsatz entsteht.


