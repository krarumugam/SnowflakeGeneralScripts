krarumugam -- Krarumugam@123

/* Setting Default namespace for user */
ALTER USER IF EXISTS  KRARUMUGAM SET  DEFAULT_NAMESPACE = mydatabase.public

/*  Information about all snowflake objects as secured views*/
use database snowflake;
select * from snowflake.account_usage.databases;

/* Create User*/
CREATE USER DBCONNECT 
PASSWORD = '*********' 
COMMENT = 'Database connections' 
LOGIN_NAME = 'dbconnect' 
DISPLAY_NAME = 'DbConnect' 
FIRST_NAME = 'DB' 
LAST_NAME = 'CONNECT' 
EMAIL = 'krarumugam@ceiamerica.com' 
DEFAULT_ROLE = "MY_ROLE" 
DEFAULT_WAREHOUSE = 'MYWAREHOUSE' 
MUST_CHANGE_PASSWORD = FALSE;

GRANT ROLE "MY_ROLE" TO USER DBCONNECT;
