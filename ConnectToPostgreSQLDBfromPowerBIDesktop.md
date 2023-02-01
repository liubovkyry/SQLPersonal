## [How Connect To PostgreSQLDB from PowerBI Desktop](https://learn.microsoft.com/en-us/power-query/connectors/postgresql)

#### 1 Select the PostgreSQL database option in the connector selection.

#### 2 In the PostgreSQL database dialog that appears, provide the name of the server and database.


<img src="https://user-images.githubusercontent.com/118057504/216040667-5ead15b7-147a-446b-9925-6f9c0953c39a.png" width="700" height="300">



#### 3 Select either the Import or DirectQuery data connectivity mode.

#### 4 If this is the first time you're connecting to this database, input your PostgreSQL credentials in the User name and Password boxes of the Database authentication type. Select the level to apply the authentication settings to. Then select Connect.

<img src="https://user-images.githubusercontent.com/118057504/216019195-2d642288-59c6-4e6f-baff-36174d87f9d2.png" width="700" height="300">

<img src="https://user-images.githubusercontent.com/118057504/216015551-00f6e034-51f9-4fff-a01a-2c1a70b0caf5.png" width="700" height="300">
<img src="https://user-images.githubusercontent.com/118057504/216016150-c6bcba08-b7ce-4f62-8664-73e75c262b92.png" width="700" height="300">

Select OK to connect to the database by using an unencrypted connection, or follow the instructions in Enable encrypted connections to the Database Engine to set up encrypted connections to PostgreSQL database.
#### 5 In Navigator, select the database information you want, then either select Load to load the data or Transform Data to continue transforming the data in Power Query Editor.
<img src="https://user-images.githubusercontent.com/118057504/216016413-d2102e5e-962d-461f-8a12-3ff6c46ab59b.png" width="700" height="300">


## [How to change authentication method ](https://learn.microsoft.com/en-us/power-query/connector-authentication)
When you attempt to connect to a data source using a new connector for the first time, you might be asked to select the authentication method to use when accessing the data. After you've selected the authentication method, you won't be asked to select an authentication method for the connector using the specified connection parameters. However, if you need to change the authentication method later, you can do so.
