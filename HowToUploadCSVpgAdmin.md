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


Error 

All that is to be done is: Go to Properties of that particular file by right clicking on it. Then, go to <i>Security</i> tab of the displayed <i>Properties</i> dialog box. Click on <i>Edit</i> option. Permissions dialog box appears, then click on <i>Add</i> button. Type 'Everyone' (without apostrophes) in the "Enter the object names to select" description box and click on OK button. Then, make sure all the checkboxes of "Permissions for Everyone" are selected by just ticking the "Full Control" check box to allow the control access without any restriction. Then, Apply and OK all the tabs to apply all the changes done.

You can now run/execute the query without any errors.
