-- This script prints the full description of the 'books' table
-- Use the database specified as an argument when executing the script

SELECT 
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Column Type',
    IS_NULLABLE AS 'Is Nullable',
    COLUMN_DEFAULT AS 'Default Value',
    EXTRA AS 'Extra Information'
FROM 
    information_schema.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE()  -- Use the current database
    AND TABLE_NAME = 'books';
