
USE ROLE SECURITYADMIN;

CREATE ROLE parking_info_dlt_role;

GRANT ROLE parking_info_dlt_role TO USER extract_loader;

GRANT USAGE ON DATABASE parkingdb TO ROLE parking_info_dlt_role;
GRANT USAGE ON SCHEMA parkingdb.staging TO ROLE parking_info_dlt_role;

GRANT USAGE ON WAREHOUSE dev_wh TO ROLE parking_info_dlt_role;

GRANT CREATE TABLE ON SCHEMA parkingdb.staging TO ROLE parking_info_dlt_role;

GRANT INSERT,UPDATE, SELECT,DELETE ON ALL TABLES IN SCHEMA parkingdb.staging TO ROLE parking_info_dlt_role;

GRANT INSERT,
UPDATE, SELECT,
DELETE ON FUTURE TABLES IN SCHEMA parkingdb.staging TO ROLE parking_info_dlt_role;

SHOW GRANTS ON SCHEMA PARKINGDB.staging;

SHOW FUTURE GRANTS in SCHEMA PARKINGDB.staging;

GRANT ROLE parking_info_dlt_role TO USER simontroedsson;

