# .NET CSRF-Demo Application 

Simple .NET web site that show how to protect against CSRF attacks using code snippet provided by the .NET framework.
CSRF mitigation code can be found inside the application master page, and it protect authenticated functions only.

All pages that use this master page, and modify the status using POST request only,should be protected using this mitigation.

### How to setup the application 
1. clone the repo 
2. Open the solution using VS 2017 or later 
3. Chang the DefaultConnection, and AuthenticationDemoEntities connection strings in web.config to point to your database 
4. Build the code, and create a new account 
5. Create a new table in the application database using comments_table.sql file 
6. Run the application and login

You can comment/uncomment the code that do the CSRF verification as in the commit to check how it works 
csrf-poc.html file contains a POC of how to exploit a poor CSRF protection
