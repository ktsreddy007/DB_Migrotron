-- Create the 'users' table
IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Payroll.dbo.smac' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
CREATE TABLE Payroll.dbo.smac (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME2 DEFAULT GETDATE()
);
END
