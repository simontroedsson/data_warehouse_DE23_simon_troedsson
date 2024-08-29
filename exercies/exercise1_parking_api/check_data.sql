
USE ROLE PARKING_INFO_DLT_ROLE;

USE DATABASE parkingdb;

use schema parkingdb.staging;
SHOW TABLES IN SCHEMA parkingdb.staging;


SELECT * FROM data_field_parking limit 5;

SELECT * FROM DATA_FIELD_PARKING__BBOX LIMIT 5;