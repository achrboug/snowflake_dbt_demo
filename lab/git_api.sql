CREATE OR REPLACE API INTEGRATION github_dbt
    API_PROVIDER = git_https_api
    API_ALLOWED_PREFIXES = ('https://github.com/achrboug')
    API_USER_AUTHENTICATION = (TYPE = SNOWFLAKE_GITHUB_APP)
    ENABLED = TRUE;

-- Repo anlegen
-- Snowflake integration installieren
-- https://github.com/apps/snowflakedb