USE ROLE job_ads_dbt_role;

use database job_ads;

show schemas;

show tables;

use schema staging;

use warehouse dev_wh;
desc table data_field_job_ads;