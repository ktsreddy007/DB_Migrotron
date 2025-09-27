-- Alter the 'users' table schema if exists
IF EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Payroll.dbo.users' AND TABLE_SCHEMA = 'dbo'
)
AND EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = 'Payroll.dbo.users' AND COLUMN_NAME = 'Username' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
    ALTER TABLE Payroll.dbo.users
    ALTER COLUMN Username NVARCHAR(150);
END