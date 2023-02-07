## DBeaver setup

### Connecting DBeaver to PostgreSQL

Instruction:

Follow the below-mentioned steps to establish the DBeaver PostgreSQL connection.

#### Step 1: Install DBeaver Community Edition

#### Step 2: Download PostgreSQL JDBC Driver

#### Step 3: Create a Connection to PostgreSQL Data

#### Step 4: Query Data

Install DBeaver Community Edition
You can download the relevant DBeaver Community Edition based on your Operating System from its official website.

<img src="https://user-images.githubusercontent.com/118057504/217254973-27e762a2-7cc0-4932-941d-9691121e2301.png" width="750" height="450">

Once downloaded, you can open and run the installer. A Setup Wizard will now be displayed on your screen, kind of things that you already know. Just click on “Next”.

<img src="https://user-images.githubusercontent.com/118057504/217255114-a96103a4-fbe3-4c31-8b21-4722214c5934.png" width="750" height="450">

Accept the License Agreement and select the users for whom you want to install DBeaver. Then, click on “Next”.

<img src="https://user-images.githubusercontent.com/118057504/217255217-3db8599a-493e-40bd-b956-2543aaf557d7.png" width="750" height="450">

Select the features of the DBeaver Community Edition that you would like to install. If you want to associate all your .SQL files to DBeaver, you can tick the “Associate .SQL files” checkbox. Then, click on “Next”.

<img src="https://user-images.githubusercontent.com/118057504/217255346-3accdb79-52d7-44b6-bd8a-2cd18603ed95.png" width="750" height="450">

Select a location for the installation and proceed ahead with the installation. Once the installation finishes, click on the “Finish” button to complete the installation process.

Download PostgreSQL JDBC Driver

You can download the recent version of PostgreSQL JDBC Driver from PostgreSQL’s official website: https://jdbc.postgresql.org/

Just click on the version of the Driver that you want to download, and it will be downloaded automatically on your local system.
Create a Connection to PostgreSQL Data
This brings us to the main part of the DBeaver PostgreSQL connection. Launch your DBeaver application and click on the “Database” button located above the toolbar. Then, click on “New Database Connection”.
<img src="https://user-images.githubusercontent.com/118057504/217257680-8f8eb765-90ea-4c7d-a3e8-c0c2507c7bac.png" width="750" height="450">

The “Connection Settings” tab will open up and it will by default pick up the details of your system/host (the default port is 5432). Specify the Database properties, and feed in the correct password of the Postgres Database User.

It will now prompt you to select the Database you want to connect to. Select PostgreSQL and click on “Next”.

<img src="https://user-images.githubusercontent.com/118057504/217256535-326b2500-b392-4866-a17b-1e615f256e9d.png" width="750" height="450">

Now, click on “Edit Driver Settings”.
Click on the “Add File” button to add the .jar file of the PostgreSQL JDBC Driver downloaded in the previous step. Locate the postgresql.jar file in the installation directory and click on “OK”.

<img src="https://user-images.githubusercontent.com/118057504/217258736-6bf75ec7-5ac4-455a-bc19-a868aff8a18b.png" width="750" height="450">

If you are prompted about the missing Drivers, click on “Download”. You can then verify the connection by clicking on “Test Connection”.
If it displays the “Connected” message, click on “Finish”.

You can now see your Database added to the list.
Query Data
Now that you’ve successfully connected PostgreSQL DBeaver, you can view and manipulate the Postgres data in a table. Just right-click on the specific table and click on “View Data”. The content of the table will then be displayed in the main workspace.
