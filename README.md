# SQL-Personal-
Introduction
Structured Query Language (SQL) follows an intuitive formula. Queries to SQL databases often resemble one of the following:

<code>SELECT column FROM table
SELECT column  FROM table WHERE row = value
INSERT INTO table (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);</code> 
The predictable and formulaic nature of SQL languages makes it relatively easy to get started with simple workloads and is a large factor in why many companies use it. In this Lab Step, you will use queries to both view and edit basic information.

 

Instructions
1. In the Object Explorer to the left, expand Databases > System Databases to view a list of the current databases used by the SQL Server system:



Note: If you can't see the databases, just <b>refresh</b> the list.

 

2. To retrieve the same information using a SQL query, right-click ca-lab-vm at the top of the Object Explorer and click New Query:



 

3. In the Query window that opens in the center of the application, enter the following:

Copy code
<code>SELECT name FROM master.dbo.sysdatabases;</code>
 

4. Click Execute above the top-left of the Query window:


 

5. Notice that the list of databases which populate in the Results window that opens in the bottom of the application is the same list you saw when you expanded Databases > System Databases earlier:



Now that you've executed your first query to view the databases inside a default SQL Server system it's time to create databases.

 

6. Once more in the Query window, clear the existing text, enter the following and click Execute:

Copy code
<code>CREATE DATABASE awesome_company_production;</code>
This will create a new database called awesome_company_production. In a hypothetical workload, this database might store production data for a company called Awesome Company.

 

7. Either using the Object Explorer window or the query you learned earlier, confirm that the Users database has been created:



SQL databases organize their data into data sets called tables. Tables are sets of data that share an associative type, like a Users table, which of course would store all Users in a hypothetical workload. In turn, tables organize their own data into logical groups called columns. A column represents a specific trait of a data set. Common columns you might find in a table called Users include:

id
name
password
phone_number
Columns are declared by their data type as well. for example, id might be an integer (int), name would probably be a string with a maximum length in bytes (varchar(255)), and so on. Before you can insert data into a database you'll need to create a table to store that data.

 

8. In the Query window, clear the existing text and enter the following and click Execute:

Copy code
<code>USE awesome_company_production;</code>
This will tell SQL Server that until you set a different database, you want all following queries to execute against the awesome_company_production table.

 

9. In the Query window, clear the existing text and enter the following and click Execute:

Copy code
<code>CREATE TABLE Users (
 ID int,
 LastName varchar(255),
 FirstName varchar(255),
);</code>
This query will do a few things:

Create a table called Users
Add a column labeled ID of the int (integer) type
Add a column labeled LastName of the varchar(255) type, meaning a string that can't surpass 255 bytes in length
Add a column labeled FirstName, also of the varchar(255) type
 

10. To confirm that your table was created, in the Query window, clear the existing text and enter the following and click Execute:

Copy code
<code>SELECT * FROM awesome_company_production.INFORMATION_SCHEMA.TABLES </code>
Notice the <code> * </code>in the query. This is a wildcard statement. Normally you would designate a name here, but since you're asking for * to be returned, what you will retrieve is all table  found in awesome_company_production.INFORMATION_SCHEMA.TABLES:



Now it's time to insert your first user into the Users table.

 

11. In the Query window, clear the existing text and enter the following and click Execute:

Copy code
<code>INSERT INTO Users (ID, LastName, FirstName) VALUES (1, 'Smith', 'Bob'); </code>
Notice the two sets of parentheses in this query. The first includes the columns you want to insert data into. The second includes the actual data you want to insert, in the same order as the column you described. As a result, you've inserted user number 1 with the name, Bob Smith. Bob is the first entry (commonly called Row in SQL) in your Users table.

 

12. To confirm your entry, clear the existing text, enter the following and click Execute:

Copy code
<code>SELECT * FROM Users; </code>
Notice the Results window contains one result:



You could also use the WHERE syntax to only find users with the first name. Please run the command below:

Copy code
<code>SELECT * FROM Users WHERE FirstName = 'Bob';</code>
Notice that if you run that query you get the same result as before in the Results window.

 

Summary
In this Lab Step, you used SQL syntax to view and edit a SQL database, table and row.
