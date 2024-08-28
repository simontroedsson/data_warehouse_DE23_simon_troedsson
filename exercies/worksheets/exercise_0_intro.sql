-- a) Use this database and find out the underlying schemas, tables and views to get an overview of its logical structure.
SHOW DATABASES;

USE DATABASE GOOGLE_KEYWORDS_SEARCH_DATASET__DISCOVER_ALL_SEARCHES_ON_GOOGLE;

SHOW SCHEMAS;

USE SCHEMA DATAFEEDS;

SHOW TABLES;

--b) Find out the columns and its data types in the table GOOGLE_KEYWORDS.
SELECT * FROM GOOGLE_KEYWORDS
LIMIT 10;

-- Show datatypes of the columns
SHOW COLUMNS;

--c) Find out number of rows in the dataset.
SELECT COUNT(*) AS N_ROWS
FROM GOOGLE_KEYWORDS;

--d) When is the first search and when is the latest search in the dataset?
SELECT MAX(DATE) 
FROM GOOGLE_KEYWORDS;

SELECT MIN(DATE) 
FROM GOOGLE_KEYWORDS;

--e) Which are the 10 most popular keywords?
SELECT KEYWORD, COUNT(*) AS N_SEARCHES
FROM GOOGLE_KEYWORDS
GROUP BY KEYWORD
ORDER BY N_SEARCHES DESC
LIMIT 10;

--f) How many unique keywords are there?
SELECT COUNT(DISTINCT(KEYWORD))
FROM GOOGLE_KEYWORDS;


--g) Check what type of platforms are used and how many users per platform
SELECT (PLATFORM), COUNT(*) AS N_USERS
FROM GOOGLE_KEYWORDS
GROUP BY PLATFORM;

/*h) Let's dive into what swedish people are searching. 
     Go into worldbanks country codes to find out the country code for Sweden. 
     Find the 20 most popular keywords and the number of searches of that keyword.*/

SELECT COUNTRY, KEYWORD, COUNT(*) AS N_SEARCHES FROM GOOGLE_KEYWORDS
WHERE COUNTRY = 752
GROUP BY KEYWORD, COUNTRY
ORDER BY N_SEARCHES DESC
LIMIT 20;


/*i) Lets see how popular spotify is around the world. 
List the top 10 number countries and the number of searches for spotify. 
For now it's okay to list the country codes, 
later we'll join this with the actual country to get more useful information to the stakeholders. */

SELECT COUNTRY, KEYWORD, COUNT(*) AS N_SEARCHES
FROM GOOGLE_KEYWORDS
WHERE KEYWORD = 'spotify'
GROUP BY COUNTRY, KEYWORD
ORDER BY N_SEARCHES DESC
LIMIT 10;


-- j) Feel free to do additional explorations of this dataset.
