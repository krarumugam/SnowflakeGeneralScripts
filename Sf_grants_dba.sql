select “TABLE_NAME” from INFORMATION_SCHEMA.TABLES where “TABLE_NAME” ilike ‘%TEST’;

/* If you need to drop a handful of tables that way, a list if enough. If there are dozens or hundreds, this works better: */

select 'drop table ' || "TABLE_NAME" || ';' from INFORMATION_SCHEMA.TABLES where "TABLE_NAME" ilike '%TEST';

/* To grant table to users */
SELECT 'grant ownership on table ' || 
       table_name || 
       ' to role my_new_role copy grants;'
       AS SQL_COMMAND
FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES 
WHERE grantor = 'old_grant_role';