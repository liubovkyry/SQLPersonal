How to upload EXcel/CSV file to Postgres with pgAdmin

First, save your Excel file in CSV format.

1 Create a table:
```
CREATE TABLE kickstarter
(kick_id integer PRIMARY KEY,
 name varchar(255),
 created_at DATE,
 launched_at DATE,
 deadline DATE,
 currency CHAR(5),
 backers_count INTEGER,
 static_usd_rate DECIMAL,
 pledged DECIMAL,
 usd_pledged DECIMAL,
 goal INTEGER,
 city VARCHAR(255),
 state VARCHAR(255),
 country VARCHAR(255),
 source_url VARCHAR(255),
 staff_pick BOOLEAN,
 status VARCHAR(255)
);

```
2 Right-click on a new table -> <i>Import/Export Data...</i>
Possible errors:
![image](https://user-images.githubusercontent.com/118057504/216970726-6db25993-9aed-47ca-a396-0382fe4ea264.png)

Solution:

Add the path of the bin folder of PostgreSQL. For example: 
``` C:\Program Files\PostgreSQL\15\bin```
![image](https://user-images.githubusercontent.com/118057504/216971142-9aafcc93-12ef-4072-9eb0-ff0c02944e03.png)
![image](https://user-images.githubusercontent.com/118057504/216971409-86012e9c-4e9e-4d9f-8b44-9ff4135eb0e1.png)
If you are getting the, "Somethig went wrong" after clicking the Binary Paths Tab, Restart Your pgAdmin.



3 The <i>Import/Export data</i> dialog organizes the import/export of data through the <i>General, Options</i> and <i>Columns</i> tabs.
Use the fields in the General tab to specify import and export preferences:

Move the Import/Export switch to the Import position to specify that the server should import data to a table from a file. The default is Import.

Enter the name of the source or target file in the <i>Filename field</i>. Optionally, select the Browser icon (ellipsis) to the right to navigate into a directory and select a file.

Use the drop-down listbox in the <i>Format field</i> to specify the <i>file type</i>. Select:

binary for a .bin file.

csv for a .csv file.

text for a .txt file.

Use the drop-down listbox in the Encoding field to specify the type of character encoding.
![image](https://user-images.githubusercontent.com/118057504/216976266-8432f178-c6d8-4d7e-9d0a-348bb648feab.png)

4 Use the fields in the <i>Options tab</i> to specify additional information:

Move the <i>OID</i> switch to the <i>Yes</i> position to include the OID column. The OID is a system-assigned value that may not be modified. The default is No.

Move the <i>Header</i> switch to the Yes position to include the table header with the data rows. If you include the table header, the first row of the file will contain the column names.

If you are exporting data, specify the delimiter that will separate the columns within the target file in the <i>Delimiter field</i>. The separating character can be a colon, semicolon, a vertical bar, or a tab.

Specify a quoting character used in the <i>Quote field</i>. Quoting can be applied to string columns only (i.e. numeric columns will not be quoted) or all columns regardless of data type. The character used for quoting can be a single quote or a double quote.

Specify a character that should appear before a data character that matches the QUOTE value in the <i>Escape field</i>.

Use the <i>NULL Strings field</i> to specify a string that will represent a null value within the source or target file.
![image](https://user-images.githubusercontent.com/118057504/216977526-b3139a50-bdca-42ef-9359-c1039ce6dda0.png)

5 Click the <i>Columns tab</i> to continue.

Use the fields in the Columns tab to select the columns that will be imported or exported:

Click inside the Columns to <i>export/import field</i> to deselect one or more columns from the drop-down listbox. To delete a selection, click the x to the left of the column name. Click an empty spot inside the field to access the drop-down list.

If enabled, click inside the <i>NOT NULL columns field</i> to select one or more columns that will not be checked for a NULL value. To delete a column, click the x to the left of the column name.
![image](https://user-images.githubusercontent.com/118057504/216977839-73f5170d-22a3-4ce5-aaff-183617e0fabb.png)
![image](https://user-images.githubusercontent.com/118057504/216979559-90f0d63d-12bd-402a-b275-6ea784eccfdb.png)


6 After completing the Import/Export data dialog, click the <i>OK</i> button to perform the import or export. pgAdmin will inform you when the background process completes:

![image](https://user-images.githubusercontent.com/118057504/217095903-922b6dee-1f78-41ab-b797-fe62ff068c6a.png)

Use the <i>Stop Process button</i> to stop the Import/Export process.

Use the <i>Click here</i> for details link on the notification to open the Process Watcher and review detailed information about the execution of the command that performed the import or export:
![image](https://user-images.githubusercontent.com/118057504/217096003-4ccc20c2-7284-4ab3-b396-3e9033a412ee.png)






