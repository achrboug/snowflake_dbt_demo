-- GitHub mit Snowflake verbinden
CREATE OR REPLACE API INTEGRATION github_dbt
    API_PROVIDER = git_https_api, -- GitHub-Verbindung
    API_ALLOWED_PREFIXES = ('https://github.com/achrboug'), -- Erlaubtes GitHub-Konto
    API_USER_AUTHENTICATION = (TYPE = SNOWFLAKE_GITHUB_APP), -- Anmeldung über GitHub-App
    ENABLED = TRUE; -- Verbindung aktivieren

-- 1. Repository auf GitHub erstellen
-- 2. Snowflake-App auf GitHub installieren
-- https://github.com/apps/snowflakedb