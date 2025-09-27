IF NOT EXISTS (
     SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Payroll.dbo.migration_rollback_mapper' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
CREATE TABLE Payroll.dbo.migration_rollback_mapper (
    migration_version VARCHAR(50),               -- Initially empty, to be filled after migration
    migration_script VARCHAR(1000),               -- Initially empty, to be filled after migration
    rollback_script_name VARCHAR(1000),           -- Rollback script file name, provided by developer during PR
    rollback_script_repo_folder VARCHAR(255),    -- Default folder for rollback scripts
    rollback_script_repo_url VARCHAR(1000),   -- Default URL for rollback scripts
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP  -- Timestamp when the mapping was created
);
END;

