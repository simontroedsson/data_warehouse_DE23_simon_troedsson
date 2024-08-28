
USE ROLE USERADMIN;
SELECT CURRENT_ROLE();

SELECT CURRENT_USER();

CREATE ROLE ice_cream_reader comment = "able to read ice_cream database";

create role ice_cream_writer COMMENT = "able to do CRUD operations on database";

create role ice_cream_analyst comment = "able to create views on icecream database";

USE ROLE SECURITYADMIN;
GRANT USAGE ON WAREHOUSE dev_wh TO ROLE ice_cream_reader;
GRANT USAGE ON DATABASE ice_cream_db TO ROLE ice_cream_reader;

SHOW GRANTS TO ROLE ice_cream_reader;

GRANT USAGE ON ALL SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_reader;

GRANT SELECT ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;
GRANT SELECT ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;

SHOW GRANTS TO ROLE ice_cream_reader;

GRANT ROLE ice_cream_reader TO ROLE ice_cream_writer;

SHOW GRANTS TO ROLE ice_cream_writer;

GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;
GRANT INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

GRANT CREATE TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

GRANT ROLE ice_cream_writer TO USER simontroedsson;






