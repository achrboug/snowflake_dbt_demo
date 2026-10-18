-- Neues Schema CORE erstellen
CREATE SCHEMA CORE;

-- Alle Daten aus der Tabelle anzeigen
SELECT * FROM stg_orders__cast;

-- Alle Schemas der Datenbank anzeigen
SHOW SCHEMAS IN DATABASE CRITICAL_LOOT;

-- Schema DBT erstellen, falls es noch nicht existiert
CREATE SCHEMA IF NOT EXISTS CRITICAL_LOOT.DBT;

-- Administrator-Rolle verwenden
USE ROLE ACCOUNTADMIN;

-- SYSADMIN darf die Datenbank verwenden
GRANT USAGE ON DATABASE CRITICAL_LOOT TO ROLE SYSADMIN;

-- SYSADMIN darf das Schema verwenden und Tabellen/Views erstellen
GRANT USAGE, CREATE VIEW, CREATE TABLE
ON SCHEMA CRITICAL_LOOT.DBT
TO ROLE SYSADMIN;

-- Alle Kunden anzeigen
SELECT *
FROM CRITICAL_LOOT.RAW_CRM.CUSTOMERS;

-- Erste 10 Zeilen der Faktentabelle anzeigen
SELECT *
FROM CRITICAL_LOOT.DBT.FCT_ORDER_ITEMS
LIMIT 10;

-- Anzahl der Zeilen in der Faktentabelle zählen
SELECT COUNT(*)
FROM CRITICAL_LOOT.DBT.FCT_ORDER_ITEMS;

-- Zeilenanzahl der drei ERP-Tabellen vergleichen
SELECT
    'INVOICES' AS tabelle, -- Tabellenname
    COUNT(*) AS anzahl -- Anzahl der Zeilen
FROM CRITICAL_LOOT.RAW_ERP.INVOICES

UNION ALL -- Ergebnisse untereinander anzeigen

SELECT
    'INVOICE_ITEMS',
    COUNT(*)
FROM CRITICAL_LOOT.RAW_ERP.INVOICE_ITEMS

UNION ALL

SELECT
    'PAYMENTS',
    COUNT(*)
FROM CRITICAL_LOOT.RAW_ERP.PAYMENTS;