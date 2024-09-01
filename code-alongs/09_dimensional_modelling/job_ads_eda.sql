SHOW ROLES;

USE ROLE job_ads_dlt_role;

USE SCHEMA job_ads.staging;

SHOW TABLES;

DESC TABLE data_field_job_ads;

USE WAREHOUSE dev_wh;

select * from data_field_job_ads;

SELECT
    relevance,
    workplace_address__street_address,
    workplace_address__postcode,
    publication_date,
    webpage_url,
    source_type
FROM data_field_job_ads;


SELECT
    scope_of_work__min,
    scope_of_work__max,
    employer__name,
    salary_type__label,
    salary_description,
    duration__label,
    logo_url,
    employer__workplace,
    employer__url,
FROM data_field_job_ads;

SELECT
    experience_required,
    driving_license_required,
    access_to_own_car
FROM data_field_job_ads;