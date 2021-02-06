-- Search for a field name throughout the tables in the database.
SELECT      c.name  AS 'ColumnName'
            ,t.name AS 'TableName'
FROM        sys.columns c
JOIN        sys.tables  t   ON c.object_id = t.object_id
WHERE       c.name LIKE '%formid%'
ORDER BY    TableName
            ,ColumnName;
            
-- Look for a stored procedure in your database.
EXEC sp_helptext 'stored_procedure_name'
