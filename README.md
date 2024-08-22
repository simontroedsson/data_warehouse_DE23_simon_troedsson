# datawarehoue lifecycle course

I learn datawarehouse here

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
| securable object  |             |
| snowflake object  |             |
| schema            |             |
| permanent table   |             |
| transient table   |             |
| temporary table   |             |
| time-travel       |             |
| fail-safe         |             |
| view              |             |
| table             |             |
| DML               |             |
| DDL               |             |
| DQL               |             |
| DCL               |             |
