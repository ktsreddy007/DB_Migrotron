IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'rollback_history' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
    CREATE TABLE Payroll.dbo.rollback_history (
        id INT IDENTITY(1,1) PRIMARY KEY,
        version VARCHAR(50),
        description VARCHAR(255),
        rollback_script VARCHAR(MAX),
        rolled_back_by VARCHAR(100),
        rolled_back_on DATETIME DEFAULT GETDATE(),
        original_installed_rank INT,
        notes VARCHAR(MAX)
    );
END


