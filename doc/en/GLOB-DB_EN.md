# Configuration and Database Documentation

<aside>
💡

This project manages the necessary files to run all microservices, including the database and the initial configuration (.env files, database schemas, configurations, etc.). It works as a central point that unifies these components.

</aside>

# Step 1:

- Clone the project from GitHub using the following link:

```
git clone https://github.com/brayrpgs/GLOB-DB.git
```

# Step 2:

- Once cloned, open the folder

> GLOB-DB  
> 
- and copy these 3 configuration files:

> .vscode  
.env  
compose.yml  
> 

![image.png](image.png)

Copy these 3 files to the parent directory (the folder above).  
The result should look similar to the following image.

![image.png](image%201.png)

Then open a terminal or CMD in this folder and run the following command to open VS Code:

```
code .
```

# Step 3:

Run the task called `Docker`.

<aside>
💡

To run tasks in VS Code, you can use the shortcut `Shift + Ctrl + B` (on Windows/Linux) or `Shift + Cmd + B` (on Mac).

</aside>

Once finished, you will see a message like this in the terminal (it may vary):

![image.png](image%202.png)

# Step 4:

Now, go to the following URL in your browser: `localhost:8080` or `127.1.1.1:8080`.

You will be greeted with the following login screen:

![image.png](image%203.png)

Log in using the credentials stored in the `.env` file:

```
PGADMIN_DEFAULT_EMAIL=xxxxxxxxxxxxx
PGADMIN_DEFAULT_PASSWORD=xxxxxxxxxxx
```

# Step 5:

Now, register a connection to a PostgreSQL server. See the image below…

![image.png](image%204.png)

Fill in the connection form. Give the connection any **Name** you like.

![image.png](image%205.png)

Go to the 'Connection' tab and enter the following data:

> Host name: `GLOB-DB`  
Port: `5432`  
Username: `POSTGRES_USER` (defined in `.env`)  
Password: `POSTGRES_PASSWORD` (defined in `.env`)  
Save password: `check`  
>

![image.png](image%206.png)

Click Save!

# Step 6:

If everything went well, proceed to load the schemas.

A database named `GLOB_DB` (defined in `.env`) should be available.

![image.png](image%207.png)

Use the Restore... option.

![image.png](image%208.png)

Click the folder icon.

Click the three-dot button to open extended options.

![image.png](image%209.png)

Then click `Upload`.

![image.png](image%2010.png)  
![image.png](image%2011.png)

Upload the file `DATABASE.SQL` located at:  
 `GLOB-DB\database`

![image.png](image%2012.png)  
![image.png](image%2013.png)

Select it and press 'Select'.

![image.png](image%2014.png)

Finally, click 'Restore' to complete the process.

![image.png](image%2015.png)

<aside>
💡

To verify that everything was installed correctly, check that the tables appear (as shown in the example). In later versions, more tables may appear.

</aside>

![image.png](image%2016.png)
