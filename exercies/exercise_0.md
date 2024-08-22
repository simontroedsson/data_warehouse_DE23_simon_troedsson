# Exercise 0 - Introduction

In this exercise, you get to familiarize yourself with snowflake and snowsql. You will also get some overview of pricing in Snowflake. Further, you'll get an SQL repetition through querying data from snowflakes marketplace.

> [!NOTE]
> These exercises covers lectures 00-04.

## 0. Google queries

Go into marketplace under data products in snowsight. Search and get the following dataset `Google Keywords search dataset - discover all searches on Google`.

Now create a worksheet on your local repository and start querying this data through snowsql.

&nbsp; a) Use this database and find out the underlying schemas, tables and views to get an overview of its logical structure.

&nbsp; b) Find out the columns and its data types in the table `GOOGLE_KEYWORDS`.

GOOGLE_KEYWORDS
| Column name | datatype |
| ----------- | -------- |
| country     | TEXT     |
| keyword     | TEXT     |
| site        | TEXT     |
| year        | TEXT     |
| month       | TEXT     |
| day         | TEXT     |
| platform    | TEXT     |
| referral_type     | TEXT     |
| clean_landingpage    | TEXT     |
| calibrated_users    | REAL     |
| calibrated_clicks    | REAL     |
| is_branded_keyword    | FIXED    |
| is_question     | TEXT     |
| date    | TEXT     |

We will now do some exploratory data analysis (EDA) of this dataset.

&nbsp; c) Find out number of rows in the dataset.
 <br />
 35046855

&nbsp; d) When is the first search and when is the latest search in the dataset?
<br />
 22-06-01 first search 
<br />
 22-06-30 latest search
 
&nbsp; e) Which are the 10 most popular keywords?

&nbsp; f) How many unique keywords are there?

&nbsp; g) Check what type of platforms are used and how many users per platform

&nbsp; h) Let's dive into what swedish people are searching. Go into [worldbanks country codes](https://wits.worldbank.org/wits/wits/witshelp/content/codes/country_codes.htm) to find out the country code for Sweden. Find the 20 most popular keywords and the number of searches of that keyword.

&nbsp; i) Lets see how popular spotify is around the world. List the top 10 number countries and the number of searches for spotify. For now it's okay to list the country codes, later we'll join this with the actual country to get more useful information to the stakeholders.

&nbsp; j) Feel free to do additional explorations of this dataset.

## 1. How much does it cost?

For these exercises, look up the credit cost for your snowflake edition, cloud provider and region for your snowflake account.

&nbsp; a) You have a simple workload that runs daily in Snowflake. The workload uses 0.5 credits per day. Calculate the total credit usage and cost for a 30-day month.

&nbsp; b) Your workload varies throughout the month. For the first 10 days, you use 2 credits per day. For the next 10 days, you use 1.5 credits per day, and for the last 10 days, you use 1 credit per day. Calculate the total credit usage and cost for a 30-day month.

&nbsp; c) You have three different warehouses running workloads simultaneously. Warehouse A is of size XS, Warehouse B is of size S, and Warehouse C is of size M. Warehouse A is used for 10h/day, B is used for 2h/day and C is used for 1h/day. Calculate the total monthly cost assuming each warehouse runs for the full 30-day month.

&nbsp; d) Your Snowflake warehouse uses auto-scaling. For the first 10 days, it operates on 2 clusters for 10 hours per day. For the next 10 days, it scales up to 3 clusters for 10 hours per day. For the last 10 days, it scales up to 4 clusters for 10 hours per day. Calculate the total monthly budget. Assume the warehouse consumes 1 credit per hour per cluster.

## 2. Theory questions

These study questions are good to get an overview of how snowflake works.

&nbsp; a) What are the main components of Snowflake's architecture?

&nbsp; b) Explain the role of the storage layer in Snowflake.

&nbsp; c) What is the purpose of the compute layer in Snowflake?

&nbsp; d) How does the cloud services layer enhance the functionality of Snowflake?

&nbsp; e) What is a virtual warehouse in Snowflake, and how does it differ from a traditional data warehouse?

&nbsp; f) When are the cases you would want to scale up versus scaling out in terms of virtual warehouses and compute resources.

&nbsp; g) How does Snowflake's pricing model differ from traditional on-premise data warehousing solutions?

&nbsp; h) What is the difference between pay-as-you-go and upfront storage, and when you should you choose one over the other?

&nbsp; i) Explain the concept of Time Travel and Fail-safe in Snowflake and its use cases

### Glossary
| terminology       | explanation |
| ----------------- | ----------- |
| downstream        | downstream refers to the components that recieves data or output from an earlier stage in the pipeline. Downstream elements are dependant on data or results produced by upstream components.             |
| upstream          | upstream refers to the components that occur earlier in the data flow. These upstream elements are responsible for producing or providing data that will be used by downstream processes           |
| data warehouse    | A data warehouse is a centralized repository that stores large volumes of structured and semi-structured data from various sources within an organization. It is designed to support querying, reporting, and data analysis, enabling businesses to make data-driven decisions. Data warehouses are optimized for read-heavy workloads, meaning they are well-suited for tasks like running complex queries, generating reports, and performing data analysis |
| cloud computing   | Cloud computing is a technology model that provides on-demand access to computing resources over the internet. These resources include servers, storage, databases, networking, software, analytics, and intelligence, all delivered via the cloud rather than on-premises hardware. Cloud computing enables businesses and individuals to use computing resources without having to invest in or manage physical infrastructure  |
| Modern data stack | The Modern Data Stack (MDS) is an ecosystem of cloud-based tools and technologies that streamline the process of collecting, storing, transforming, analyzing, and utilizing data. Example of characteristics of the MDS is its modular capabilities allowing it to integrate different specialized tools that works best for the organizations needs. It is built on cloud infrastructure which provides scalability, flexibility, and cost efficiency.         |
| idempotent        | Idempotent is a term used in computing, particularly in the context of operations, APIs, and mathematics. An operation is considered idempotent if applying it multiple times produces the same result as applying it once. if f(f(x)) = f(x) then 'f' is idempotent. In databases, an idempotent operation ensures that applying the same operation multiple times (e.g., an update) leads to the same result. For example, updating a user's email address to the same value multiple times doesn't change the database after the first update.           |
| OLAP              | OLAP (Online Analytical Processing) is a category of data processing that enables users to interactively analyze large volumes of data from multiple perspectives, typically for the purpose of business intelligence (BI) and decision-making. OLAP systems are designed to handle complex queries that involve aggregating, slicing, dicing, and drilling down into data to extract insights. OLAP is contrasted with OLTP (Online Transaction Processing), which is focused on managing day-to-day transactional data.            |
| OLTP              | OLTP (Online Transaction Processing) is a category of data processing focused on managing and executing short, simple transactions, typically in real-time, that involve the day-to-day operations of a business. OLTP systems are designed to handle a large number of transactions quickly and efficiently, ensuring data accuracy and consistency while supporting multiple users and processes simultaneously.            |
| virtual warehouse | In the context of Snowflake, a Virtual Warehouse is a cluster of compute resources that provides the computational power required to perform tasks like loading data, running queries, and performing data transformations. Virtual Warehouses are key components in Snowflake's architecture and play a crucial role in separating compute from storage, allowing for flexible and scalable processing.            |
| external stage    | An External Stage in Snowflake is a powerful feature that facilitates the integration of Snowflake with external cloud storage systems like AWS S3, Azure Blob Storage, and Google Cloud Storage. By using external stages, you can efficiently load and unload data, manage large datasets, and ensure secure data transfer between Snowflake and your cloud storage provider. This feature enhances Snowflake's flexibility and scalability, making it an essential tool for modern data engineering and analytics workflows.            |
| data consumer     | A data consumer is an individual, application, or system that utilizes data provided by a data source or data repository for various purposes. In the context of data ecosystems and data management, data consumers play a crucial role in leveraging data to generate insights, drive decisions, or support operational functions.            |
| scaling out       | Scaling out refers to the practice of increasing the capacity of a system by adding more instances of a resource, such as servers, nodes, or clusters, rather than upgrading the existing resources to handle greater loads. This approach is often contrasted with scaling up, which involves adding more power (e.g., CPU, memory) to existing resources.            |
| scaling up        | Scaling up refers to the practice of increasing the capacity of a system by enhancing the power of existing resources, such as adding more CPU, memory, or storage to a single instance or server. This approach is also known as vertical scaling. Scaling up is contrasted with scaling out, which involves adding more instances to distribute the load.            |
| snowflake credit  | In Snowflake, a credit is a unit of measurement used to quantify the consumption of compute resources. Snowflake's billing model is based on the usage of these credits, which are associated with the compute resources utilized for executing queries, data transformations, and other processing tasks            |
| securable object  | n Snowflake, a secureable object is any object or resource within the Snowflake environment to which access control policies and permissions can be applied. These objects are integral to Snowflake’s security model, which is based on a role-based access control (RBAC) system. By defining and managing access to secureable objects, Snowflake administrators can control who can view, modify, or manage specific database objects and resources.            |
| snowflake object  | n Snowflake, an object refers to any entity that is created and managed within the Snowflake environment. Objects are fundamental components in Snowflake’s architecture and include various types of database entities and resources that facilitate data storage, processing, and management. e.g. databases, schemas, views, tables, warehouses.            |
| schema            | A Snowflake schema is a type of database schema used in data warehousing and business intelligence that organizes data into a normalized structure. It is designed to reduce data redundancy and improve data integrity by breaking down data into related tables, forming a structure resembling a snowflake            |
| permanent table   | Permanent tables are stored persistently in the database and remain even after the session ends. They are typically created using the CREATE TABLE statement and are meant for long-term storage of data. Temporary tables are created for temporary storage of data within a session or a specific scope.            |
| transient table   | Transient tables are a hybrid between permanent and temporary tables. They persist until explicitly dropped but do not have the same level of data protection as permanent tables.            |
| temporary table   | Temporary tables are designed for storing transient, non-permanent data that is only needed for a specific session or short-term operation.            |
| time-travel       | Snowflake Time Travel enables accessing historical data (i.e. data that has been changed or deleted) at any point within a defined period. It serves as a powerful tool for performing the following tasks: Restoring data-related objects (tables, schemas, and databases) that might have been accidentally or intentionally deleted. Duplicating and backing up data from key points in the past. Analyzing data usage/manipulation over specified periods of time.            |
| fail-safe         | Separate and distinct from Time Travel, Fail-safe ensures historical data is protected in the event of a system failure or other event (e.g. a security breach). Fail-safe provides a (non-configurable) 7-day period during which historical data may be recoverable by Snowflake. This period starts immediately after the Time Travel retention period ends. Note, however, that a long-running Time Travel query will delay moving any data and objects (tables, schemas, and databases) in the account into Fail-safe, until the query completes           |
| view              | In Snowflake, a view is a database object that represents the result of a stored query. Views are used to simplify complex queries, encapsulate logic, and provide a way to present data in a specific format without directly manipulating the underlying tables. They act as virtual tables and do not store data themselves; instead, they dynamically generate the data when queried based on the underlying base tables.            |
| table             | In Snowflake, a table is a fundamental database object that stores data in a structured format. Tables are the primary means of organizing data within a Snowflake database, and they are used to persistently store rows and columns of data. Each table has a schema that defines its structure and relationships with other tables.            |
| DML               | DML (Data Manipulation Language) refers to a subset of SQL commands used to manipulate and manage data within a database. DML operations are fundamental for interacting with the data stored in tables, allowing users to insert, update, delete, and retrieve data. These operations are essential for maintaining and querying the data according to application requirements            |
| DDL               | DDL (Data Definition Language) commands are essential for defining and managing the structure of database objects in Snowflake and other SQL databases. These commands include CREATE, ALTER, DROP, TRUNCATE, and RENAME, and are used to set up and modify database schemas, tables, views, and other objects. Understanding and effectively using DDL commands helps in designing and maintaining an efficient and well-organized database schema.            |
| DQL               | DQL (Data Query Language) encompasses SQL commands used for querying and retrieving data from databases. The primary DQL command is SELECT, which allows users to fetch and view data based on various criteria. In Snowflake, SELECT queries benefit from advanced features such as support for semi-structured data, query history, result caching, and materialized views. Effective use of DQL commands is crucial for efficient data analysis and reporting.            |
| DCL               | DCL (Data Control Language) commands are essential for managing access to data in a database. The primary DCL commands, GRANT and REVOKE, allow for the assignment and removal of permissions on database objects. In Snowflake, the role-based access control system provides a structured way to manage permissions, ensuring that users have appropriate access based on their roles. Implementing effective DCL practices helps maintain data security, integrity, and compliance.            |
