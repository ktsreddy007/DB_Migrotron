IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'ManaTable' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
    EXEC('
        CREATE TABLE Payroll.dbo.ManaTable (
            Id INT IDENTITY(1,1) PRIMARY KEY,
            Username NVARCHAR(100) NOT NULL,
            Email NVARCHAR(255) NOT NULL,
            CreatedAt DATETIME2 DEFAULT GETDATE()
        );
    ')
END;