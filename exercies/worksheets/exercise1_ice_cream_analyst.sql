
-- Give priviligies to ice_cream_analyst role
USE ROLE SECURITYADMIN;

SHOW ROLES;

GRANT USAGE ON DATABASE ice_cream_db TO ROLE ice_cream_analyst;

GRANT USAGE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

GRANT USAGE ON WAREHOUSE dev_wh TO ROLE ice_cream_analyst;

GRANT SELECT ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

GRANT SELECT ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

GRANT CREATE TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

GRANT CREATE VIEW ON SCHEMA ice_cream_db.public TO ROLE ice_cream_analyst;

show grants to role ice_cream_analyst;

show future grants to role ice_cream_analyst;

GRANT ROLE ice_cream_analyst to user simontroedsson;

USE ROLE ice_cream_analyst;

USE DATABASE ice_cream_db;

USE SCHEMA ice_cream_db.public;

select * from transactions;

CREATE TABLE TEST(
    ID INT AUTOINCREMENT,
    customer_name string,
    PRIMARY KEY(ID)
);

CREATE VIEW myview COMMENT='Test view' AS SELECT ID, customer_name FROM TEST;

SHOW VIEWS;

use role ice_cream_writer;

INSERT INTO test VALUES(1,'simon');

select * from myview;





