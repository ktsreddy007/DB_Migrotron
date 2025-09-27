CREATE TRIGGER InsertMigrationIntoMapper
ON Payroll.dbo.flyway_schema_history
AFTER INSERT
AS
BEGIN
    -- Insert migration details into the migration_rollback_mapping table after migration
    DECLARE @rollback_script_name VARCHAR(1000);
    
    -- Get the rollback script name for the most recent migration from the PR insertion (assumed to be captured before the migration)
    SELECT @rollback_script_name = rollback_script_name 
    FROM Payroll.dbo.migration_rollback_mapper  -- Assuming you capture rollback script in Mapper_table during PR step
    WHERE rollback_script_name IS NOT NULL
    ORDER BY created_at DESC
    OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;  -- Getting the most recent PR's rollback script file
    
    -- Insert migration details into migration_rollback_mapping
    INSERT INTO Payroll.dbo.migration_rollback_mapper (migration_version, migration_script, rollback_script_name, rollback_script_repo_folder, rollback_script_repo_url)
    SELECT 
        version AS migration_version,         -- Migration version from Flyway schema history
        script AS migration_script,           -- Migration script name from Flyway schema history
        @rollback_script_name AS rollback_script_name, -- Captured rollback script name
        'rollback_sql' AS rollback_script_repo_folder,  -- Default folder for rollback scripts
        'https://github.com/ktsreddy007/DB_Migrotron/tree/main/Database/MSSQL_Server/Dev/rollback_sql' AS rollback_script_repo_url -- Default URL
    FROM inserted;
END;