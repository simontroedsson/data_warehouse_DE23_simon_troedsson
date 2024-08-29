
USE ROLE SYSADMIN;

CREATE WAREHOUSE marketing_wh
    WAREHOUSE_SIZE = 'XSMALL'
    COMMENT = "This warehouse is used for marketing"
    AUTO_SUSPEND = 60
    INITIALLY_SUSPENDED = TRUE
    AUTO_RESUME = TRUE;

use warehouse marketing_wh;

CREATE DATABASE IF NOT EXISTS IFOOD;

CREATE SCHEMA STAGING;

USE ROLE SECURITYADMIN;
CREATE ROLE marketing_dlt;

GRANT USAGE ON DATABASE IFOOD TO ROLE marketing_dlt;

GRANT USAGE ON SCHEMA IFOOD.STAGING TO ROLE marketing_dlt;

GRANT USAGE ON WAREHOUSE marketing_wh TO ROLE marketing_dlt;

GRANT SELECT,INSERT,UPDATE ON ALL TABLES IN SCHEMA ifood.staging TO ROLE marketing_dlt;

GRANT SELECT, INSERT, UPDATE ON FUTURE TABLES IN SCHEMA ifood.staging TO ROLE marketing_dlt;
GRANT CREATE TABLE ON SCHEMA ifood.staging TO ROLE marketing_dlt;

SHOW GRANTS TO ROLE marketing_dlt;

GRANT ROLE marketing_dlt TO USER extract_loader;

GRANT ROLE marketing_dlt TO USER simontroedsson;