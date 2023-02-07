How to Upload CSV to Postgres with pgAdmin

1  Create a Table

```
CREATE TABLE characters
(id serial,
first_name varchar,
last_name varchar,
family varchar
);
```


2 copy command to table 

```
COPY product_details 
FROM 'C:\Users\liubo\Desktop\PowerBiDrafts-main\CompetitorSalesAnalysis\Datasets\ProductDetails.csv' 
DELIMITER ',' 
CSV HEADER;
```

----
Error 

All that is to be done is: Go to Properties of that particular file by right clicking on it. Then, go to <i>Security</i> tab of the displayed <i>Properties</i> dialog box. Click on <i>Edit</i> option. Permissions dialog box appears, then click on <i>Add</i> button. Type 'Everyone' (without apostrophes) in the "Enter the object names to select" description box and click on OK button. Then, make sure all the checkboxes of "Permissions for Everyone" are selected by just ticking the "Full Control" check box to allow the control access without any restriction. Then, Apply and OK all the tabs to apply all the changes done.

You can now run/execute the query without any errors.

https://stackoverflow.com/questions/54031813/i-am-trying-to-copy-a-file-but-getting-error-message
----
Encoding error: 

ERROR: invalid byte sequence for encoding "UTF8" inserting in pgadmin

Solution: The simple solution is to find out what encoding your client is using SET client_encoding

For example this may fix your problem:

```
SET client_encoding = 'WIN1252';
```
If you are on Windows with pgadmin, a client encoding of Windows 1252 would be the most likely cause of the problem.
